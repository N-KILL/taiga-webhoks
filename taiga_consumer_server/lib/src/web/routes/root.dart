import 'dart:convert';
import 'dart:io';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';
import 'package:taiga_consumer_server/src/endpoints/project_endpoint.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_commentaries_endpoint.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_endpoint.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_updates_endpoint.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';
import 'package:taiga_consumer_server/src/helper/detail_generator.dart';
import 'package:taiga_consumer_server/src/mailer/mailer.dart';
import 'package:taiga_consumer_server/src/mailer/message_generator.dart';
import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';
import 'package:serverpod/serverpod.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

// TODO(Nacho): Remind the user of the commentaries is hardcoded.
// Because by the moment we don't register any user, we re using the id: 1, to
// record all the commentaries made into a job on Taiga.

// TODO(Nacho): Replace all important data with .env vars
// On the code are many stuff which have to be replaced with environment vars
// by now, is not that sensible, but need to support .env

// GITLAB STUFF
const gitlabApiUrl = 'https://gitlab.com/api/v4';
const projectId = '51929660';
const accessToken = 'glpat-s2axRR49k4dm5j6GTRJZ';

class RouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    final decodedBody = await utf8.decodeStream(request);
    final body = json.decode(decodedBody);
    print('Taiga webhook received:');
    try {
      // Convert the data of the webhook into a TaigaPayload model
      final payload = TaigaPayload.fromJson(decodedBody);

      // Print to show info
      print('Nueva accion en Taiga de: ${payload.performer.fullName}');
      print('Tipo de accion: ${payload.actionType}');
      print('Tipo de trabajo: ${payload.jobType}');
      print('Fecha de la accion :${payload.date}');

      // Convert the data of the payload into an instance of TaigaData
      //? TaigaData has different type of data, based on the type of job
      final printData = payload.data as TaigaData;

      // Print the info of the project
      print('Project details: ${printData.fromProject}');

      // Get the project Id if exist
      final getProjectById = await TaigaProjectEndpoint().readByTaigaProjectId(
        session,
        printData.fromProject.projectId,
      );

      //! Auto mail sender code lines
      // // Send the last day information into
      // if (getProjectById != null) {
      //   // This var store the amount of seconds have in one day
      //   int valueDayOnSeconds = 84600;

      //   // This var store the date of today, we use a unique call per function
      //   final todayDate = DateTime.now();

      //   // If the day is 5, thats mean monday. We need to read de values between
      //   // monday and friday. So we multiply x 3
      //   if (todayDate.weekday == 1) {
      //     valueDayOnSeconds = valueDayOnSeconds * 3;
      //   }

      //   //? Usually epoch is used on milliseconds, so we divide into 1000 to get
      //   //? the seconds format, i'm doing this, because serverpod database only
      //   //? accept int values PGSQL integrer, with a max of 4 bytes or 2,147,483,647
      //   //?. Epoch on  miliseconds is bigger than that, but in seconds is not,
      //   //?so doing this, can be stored and used on serverpod)

      //   // Get the today day on seconds and epoch format
      //   final timeEpochOnSeconds = todayDate.millisecondsSinceEpoch ~/ 1000;

      //   // This var store all the update information filtered
      //   final lastDayUpdates = await TaigaJobUpdateEndpoint()
      //       .readFilteringByEpoch(session,
      //           min: (timeEpochOnSeconds - 84600), max: timeEpochOnSeconds);

      //   // If lastDayUpdates have content
      //   if (lastDayUpdates != null) {
      //     // Generate the message to send inside of the Email
      //     final message = MessageGenerator()
      //         .taigaCreateUpdateMessageNotification(
      //             jobUpdateList: lastDayUpdates, project: getProjectById);
      //     if (message != null) {
      //       sendMail(email: 'club_dog2@hotmail.com', message: message);
      //     }
      //   }
      // }

      // If the type of action made on Taiga is Create and we can get the project
      if (payload.actionType == 'create' && getProjectById != null) {
        //Create a TaigaJob Instance
        final job = TaigaJob(
          type: payload.jobType,
          title: printData.jobName,
          description: printData.jobDescription != null
              ? printData.jobDescription!
              : ' ',
          status: printData.jobStatus.statusName,
          projectId: getProjectById.id!,
          taigaRefNumber: printData.referenceNumber,
        );

        // Create the item in the database
        final canCreate = await TaigaJobEndpoint().create(session, job);

        // If can create the taiga job instance on the db, we re going to
        // create an taiga job update instance on db
        if (canCreate != null) {
          // Create a new job update register
          await TaigaJobUpdateEndpoint().create(
              session,
              TaigaJobUpdates(
                jobId: canCreate.id!,
                type: canCreate.type + ' ' + payload.actionType,
                status: canCreate.status,
                details: 'Se creo un nuevo ${canCreate.type}',
                dateTimeEpoch: DateTime.now().millisecondsSinceEpoch ~/ 1000,
              ));
        }
      }

      // If the type of action made on Taiga is Change
      if (payload.actionType == 'change' && getProjectById != null) {
        final detail = DetailGenerator(
          payload: payload,
        );

        // If detail have data, mean its important data. Otherwise, this doesn't
        // need to be executed
        if (detail != '') {
          // If can get the project related to the job
          // Create a TaigaJob instance with the data
          final job = TaigaJob(
            type: payload.jobType,
            title: printData.jobName,
            description: printData.jobDescription != null
                ? printData.jobDescription!
                : ' ',
            status: printData.jobStatus.statusName,
            projectId: getProjectById.id!,
            taigaRefNumber: printData.referenceNumber,
          );

          // Verify if the job already exist
          final readJob = await TaigaJobEndpoint().readByProjectIdAndRefNumber(
            session,
            projectId: getProjectById.id!,
            taigaRefNumber: printData.referenceNumber,
          );

          // If the job already exist on the database
          if (readJob != null) {
            // Update the values with the new detected on
            final canUpdate = await TaigaJobEndpoint()
                .updateById(session, id: readJob.id!, taigaJob: job);

            // If can update the values will return a taigaJob instance,
            // with an id
            if (canUpdate != null && canUpdate.id != null) {
              //  Verify if the change made was a new comment, and store it as
              // a commentary instance on database
              if (payload.change!.comment != '') {
                final commentDetails = await TaigaJobCommentariesEndpoint()
                    .create(
                        session,
                        TaigaJobCommentaries(
                            userId: 1,
                            jobIdId: canUpdate.id!,
                            details: payload.change!.comment!,
                            dateTime: DateTime.now()));

                // If can create the comment details on the database, create the
                // register of the Update, with the comment id
                if (commentDetails != null) {
                  // Create a new job update register
                  await TaigaJobUpdateEndpoint().create(
                      session,
                      TaigaJobUpdates(
                        jobId: canUpdate.id!,
                        type: canUpdate.type + ' ' + payload.actionType,
                        status: canUpdate.status,
                        details: detail,
                        dateTimeEpoch:
                            DateTime.now().millisecondsSinceEpoch ~/ 1000,
                        commentId: commentDetails.id,
                      ));
                }
              } // If the change made wasn't a commentary
              else {
                // Create a new job update register
                await TaigaJobUpdateEndpoint().create(
                    session,
                    TaigaJobUpdates(
                      jobId: canUpdate.id!,
                      type: canUpdate.type + ' ' + payload.actionType,
                      status: canUpdate.status,
                      details: detail,
                      dateTimeEpoch:
                          DateTime.now().millisecondsSinceEpoch ~/ 1000,
                    ));
              }
            }
          } // If the job do not exist on the database
          else {
            // Create the item in the database
            final canCreate = await TaigaJobEndpoint().create(session, job);

            // If can create the item
            if (canCreate != null && canCreate.id != null) {
              // Create a new job update register
              await TaigaJobUpdateEndpoint().create(
                  session,
                  TaigaJobUpdates(
                    jobId: canCreate.id!,
                    type: canCreate.type + ' ' + payload.actionType,
                    status: canCreate.status,
                    details: detail,
                    dateTimeEpoch:
                        DateTime.now().millisecondsSinceEpoch ~/ 1000,
                  ));

              //  Verify if the change made was a new comment, and store it
              if (payload.change!.comment != '') {
                TaigaJobCommentariesEndpoint().create(
                    session,
                    TaigaJobCommentaries(
                        userId: 1,
                        jobIdId: canCreate.id!,
                        details: payload.change!.comment!,
                        dateTime: DateTime.now()));
              }
            }
          }
        }
      }
    } catch (e, st) {
      print('Fail at mapping the webhook $e $st');
    }

    return WebHooksView(webhookData: body);
  }
}

class RouteGitLab extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    final decodedBody = await utf8.decodeStream(request);
    final body = json.decode(decodedBody);

    // Taiga token
    final auth = await ApiAuth().authenticateWithTaiga(
      username: 'ign.cardozo02@gmail.com',
      password: '8yTs_yR#.gfgqk5',
    );

    // Taiga API URL
    final taigaUrl = 'https://api.taiga.io/api/v1';
    // 'Todo' aux list
    List<ToDo>? todos;
    print('Gitlab Webhook received:');
    // print('DecodedBody: $decodedBody');
    print('Data:');
    try {
      final data = gitLabWebhookMapper(jsonPayload: decodedBody);
      if (data.runtimeType == GitLabIssuePayload) {
        final payload = data as GitLabIssuePayload;
        print('Payload eventType: ${payload.eventType}');
        print('Payload labels: ${payload.labels}');
        print('Payload performer: ${payload.performer}');
        print('Payload projectDetails: ${payload.projectDetails}');
        print('Payload Changes: ${payload.changes}');
        print('Payload relatedRepository: ${payload.relatedRepository}');
        print('Payload objectAttributes: ${payload.issueDetails}');
      }
      if (data.runtimeType == GitLabPayload) {
        final payload = data as GitLabPayload;
        for (var element in payload.commitsDetails) {
          print('New commit from: ${element.author}');
          print('Made into the project: ${payload.projectDetails.name}');
          print('Commit made into the branch: ${payload.branchRefName}');

          final branchNameList = payload.branchRefName.split('/');
          final branch = branchNameList[branchNameList.length - 1];

          todos = await todoScanner(
            accessToken: accessToken,
            commitSha: element.id,
            gitlabApiUrl: gitlabApiUrl,
            projectId: projectId,
            deleteMode: true,
            branch: branch,
            commitMessage: 'auto-deleted-todo',
          );
        }
      }

      if (todos != null) {
        for (var element in todos) {
          print(element);
          final issue = TaigaIssueAPI(
            projectId: 1179467,
            title: element.name,
            description: element.description,
            watchersId: [],
          );
          final response = await ApiTaigaIssue()
              .createIssue(authToken: auth, apiUrl: taigaUrl, issue: issue);
          print('Issue created status: $response');
        }
      }
    } catch (e, st) {
      print('Fail at mapping the webhook $e $st');
    }

    return WebHooksView(webhookData: body);
  }
}

class DefaultRouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    return DefaultPageWidget();
  }
}

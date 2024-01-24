import 'dart:convert';
import 'dart:io';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';
import 'package:taiga_consumer_server/src/endpoints/project_endpoint.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_endpoint.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_updates_endpoint.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart';
import 'package:taiga_consumer_server/src/helper/detail_generator.dart';
import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';
import 'package:serverpod/serverpod.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

// TODO(Nacho): Remove unnecesary prints

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
      final payload = TaigaPayload.fromJson(decodedBody);
      print(
          'Nueva accion en Taiga, por parte de: ${payload.performer.fullName}');
      print('Tipo de accion: ${payload.actionType}');
      print('Tipo de trabajo: ${payload.jobType}');
      print('Fecha de la accion :${payload.date}');

      // Convert the data of the payload into an instance of TaigaData
      final printData = payload.data as TaigaData;

      print('Project details: ${printData.fromProject}');

      // Get the project Id if exist
      final getProjectId = await TaigaProjectEndpoint().readByTaigaProjectId(
        session,
        printData.fromProject.projectId,
      );

      // If the type of action made on Taiga is Create
      if (payload.actionType == 'create') {
        // Convert the payload into an Userstory instance

        if (getProjectId != null) {
          //Create a TaigaJob Instance
          final job = TaigaJob(
            type: payload.jobType,
            title: printData.jobName,
            description: printData.jobDescription != null
                ? printData.jobDescription!
                : ' ',
            status: printData.jobStatus.statusName,
            projectId: getProjectId.id!,
            taigaRefNumber: printData.referenceNumber,
          );

          // Create the item in the database
          final canCreate = await TaigaJobEndpoint().create(session, job);

          print('Este es can create: $canCreate');

          // If can create the taiga job instance on the db, we re going to
          // create an taiga job update instance on db
          if (canCreate != null) {
            // Create a new job update register
            final data = await TaigaJobUpdateEndpoint().create(
                session,
                TaigaJobUpdates(
                  jobId: canCreate.id!,
                  type: canCreate.type + ' ' + payload.actionType,
                  status: canCreate.status,
                  details: 'Se creo un nuevo ${canCreate.type}',
                  dateTimeEpoch:
                      DateTime.now().millisecondsSinceEpoch.toString(),
                ));
            print('Printing inside of can create $data');
            print(DateTime.now().millisecondsSinceEpoch);
          }
        }
      }

      // If the type of action made on Taiga is Change
      if (payload.actionType == 'change') {
        print('Printing change: ${payload.change}');

        // If can get the project related to the job
        if (getProjectId != null) {
          // Create a TaigaJob instance with the data
          final job = TaigaJob(
            type: payload.jobType,
            title: printData.jobName,
            description: printData.jobDescription != null
                ? printData.jobDescription!
                : ' ',
            status: printData.jobStatus.statusName,
            projectId: getProjectId.id!,
            taigaRefNumber: printData.referenceNumber,
          );

          // Verify if the job already exist
          final readJob = await TaigaJobEndpoint().readByProjectIdAndRefNumber(
            session,
            projectId: getProjectId.id!,
            taigaRefNumber: printData.referenceNumber,
          );

          print('Printing readJob: $readJob');
          // If the job already exist on the database
          if (readJob != null) {
            // Update the values with the new detected on
            final canUpdate = await TaigaJobEndpoint()
                .updateById(session, id: readJob.id!, taigaJob: job);

            // If can update the values
            print('Printing canUpdate: $canUpdate');
            if (canUpdate != null) {
              // Create a new job update register
              final updateStatus = await TaigaJobUpdateEndpoint().create(
                  session,
                  TaigaJobUpdates(
                    jobId: canUpdate.id!,
                    type: canUpdate.type + ' ' + payload.actionType,
                    status: canUpdate.status,
                    details: DetailGenerator(
                      data: payload.change!,
                    ),
                    dateTimeEpoch:
                        DateTime.now().millisecondsSinceEpoch.toString(),
                  ));
              print('Printing updateStatus: $updateStatus');
            }
          } else // If the job do not exist on the database
          {
            // Create the item in the database
            final canCreate = await TaigaJobEndpoint().create(session, job);
            print('Printing canCreate: $canCreate');
            if (canCreate != null) {
              // Create a new job update register
              final updateStatus = await TaigaJobUpdateEndpoint().create(
                  session,
                  TaigaJobUpdates(
                    jobId: canCreate.id!,
                    type: canCreate.type + ' ' + payload.actionType,
                    status: canCreate.status,
                    details: 'Se creo un nuevo ${canCreate.type}',
                    dateTimeEpoch:
                        DateTime.now().millisecondsSinceEpoch.toString(),
                  ));
              print('Printing updateStatus: $updateStatus');
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

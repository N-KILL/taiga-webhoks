import 'dart:convert';
import 'dart:io';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_endpoint.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga_jobs.dart';
import 'package:taiga_consumer_server/src/mailer/mailer.dart';
import 'package:taiga_consumer_server/src/mailer/message_generator.dart';
import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';
import 'package:serverpod/serverpod.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

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

      // If the action type is create
      if (payload.actionType == 'create') {
        switch (payload.jobType) {
          // If the job type is issue
          case 'issue':
            // Convert the payload into an Issue instance
            final printData = payload.data as TaigaIssueData;

            //Create a TaigaJob Instance
            final job = TaigaJob(
              type: payload.jobType,
              title: printData.jobName,
              description: printData.jobDescription != null
                  ? printData.jobDescription!
                  : " ",
              status: printData.jobStatus.toString(),
            );

            // Create the item in the database
            TaigaJobEndpoint().create(session, job);

            break;

          // If the job type is task
          case 'task':
            // Convert the payload into an Task instance
            final printData = payload.data as TaigaTaskData;

            //Create a TaigaJob Instance
            final job = TaigaJob(
              type: payload.jobType,
              title: printData.jobName,
              description: printData.jobDescription != null
                  ? printData.jobDescription!
                  : " ",
              status: printData.jobStatus.toString(),
            );

            // Create the item in the database
            TaigaJobEndpoint().create(session, job);

            break;

          // If the job type is userstory
          case 'userstory':
            // Convert the payload into an Userstory instance
            final printData = payload.data as TaigaUserStoryData;

            //Create a TaigaJob Instance
            final job = TaigaJob(
              type: payload.jobType,
              title: printData.jobName,
              description: printData.jobDescription != null
                  ? printData.jobDescription!
                  : " ",
              status: printData.jobStatus.toString(),
            );

            // Create the item in the database
            TaigaJobEndpoint().create(session, job);

            break;
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

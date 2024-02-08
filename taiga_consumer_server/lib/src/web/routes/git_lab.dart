import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';

import 'package:taiga_rest_models/taiga_rest_models.dart';
import 'package:gitlab_rest_models/gitlab_rest_models.dart';

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
    List<ToDo>? toDos;

    session.log('Gitlab Webhook received:');

    session.log('Data:');
    try {
      final data = gitLabWebhookMapper(jsonPayload: decodedBody);
      if (data.runtimeType == GitLabIssuePayload) {
        final payload = data as GitLabIssuePayload;
        session.log('Payload eventType: ${payload.eventType}');
        session.log('Payload labels: ${payload.labels}');
        session.log('Payload performer: ${payload.performer}');
        session.log('Payload projectDetails: ${payload.projectDetails}');
        session.log('Payload Changes: ${payload.changes}');
        session.log('Payload relatedRepository: ${payload.relatedRepository}');
        session.log('Payload objectAttributes: ${payload.issueDetails}');
      }
      if (data.runtimeType == GitLabPayload) {
        final payload = data as GitLabPayload;
        for (var element in payload.commitsDetails) {
          session.log('New commit from: ${element.author}');
          session.log('Made into the project: ${payload.projectDetails.name}');
          session.log('Commit made into the branch: ${payload.branchRefName}');

          final branchNameList = payload.branchRefName.split('/');
          final branch = branchNameList[branchNameList.length - 1];

          toDos = await todoScanner(
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

      if (toDos != null) {
        for (var element in toDos) {
          session.log(element.toString());
          final issue = TaigaIssueAPI(
            projectId: 1179467,
            title: element.name,
            description: element.description,
            watchersId: [],
          );
          final response = await ApiTaigaIssue().createIssue(
            authToken: auth,
            apiUrl: taigaUrl,
            issue: issue,
          );
          session.log('Issue created status: $response');
        }
      }
    } catch (e, st) {
      session.log('Fail at mapping the webhook $e $st');
    }

    return WebHooksView(webhookData: body);
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';
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
            TaigaIssueData printData = payload.data as TaigaIssueData;

            // Create a message based on the information
            final message = MessageGenerator().taigaCreateMessageNotification(
              creationDate: printData.creationDate.toString(),
              jobName: printData.jobName.toString(),
              jobDescription: printData.jobDescription.toString(),
              jobType: payload.jobType,
              projectName: printData.fromProject.projectName,
              type: payload.actionType,
            );

            // Send the message
            final sendMessage = await sendMail(
                email: "club_dog2@hotmail.com", message: message);

            print("Mail notification status: $sendMessage");

            break;

          // If the job type is task
          case 'task':
            // Convert the payload into an Task instance
            TaigaTaskData printData = payload.data as TaigaTaskData;

            // Create a message based on the information
            final message = MessageGenerator().taigaCreateMessageNotification(
              creationDate: printData.creationDate.toString(),
              jobName: printData.jobName.toString(),
              jobDescription: printData.jobDescription.toString(),
              jobType: payload.jobType,
              projectName: printData.fromProject.projectName,
              type: payload.actionType,
            );

            // Send the message
            final sendMessage = await sendMail(
                email: "club_dog2@hotmail.com", message: message);

            print("Mail notification status: $sendMessage");

            break;

          // If the job type is userstory
          case 'userstory':
            // Convert the payload into an Userstory instance
            TaigaUserStoryData printData = payload.data as TaigaUserStoryData;

            // Create a message based on the information
            final message = MessageGenerator().taigaCreateMessageNotification(
              creationDate: printData.creationDate.toString(),
              jobName: printData.jobName.toString(),
              jobDescription: printData.jobDescription.toString(),
              jobType: payload.jobType,
              projectName: printData.fromProject.projectName,
              type: payload.actionType,
            );
            // Send the message
            final sendMessage = await sendMail(
                email: "club_dog2@hotmail.com", message: message);

            print("Mail notification status: $sendMessage");

            break;
        }
      }

      // If the type of action is change
      if (payload.actionType == "change") {
        switch (payload.jobType) {
          // If the job type is issue
          case 'issue':
            // Convert the payload into an Issue instance
            TaigaIssueData printData = payload.data as TaigaIssueData;

            // Create a message based on the information
            final message = MessageGenerator().taigaUpdateMessageNotification(
              modifiedDate: printData.modifiedDate.toString(),
              jobName: printData.jobName.toString(),
              jobType: payload.jobType,
              refNumber: printData.referenceNumber.toString(),
              projectName: printData.fromProject.projectName,
              type: payload.actionType,
              nameFrom: payload.change?.difference?.name?.oldValue,
              nameTo: payload.change?.difference?.name?.newValue,
              newDescription:
                  payload.change?.difference?.descriptionDiff != null
                      ? printData.jobDescription
                      : null,
              statusFrom: payload.change?.difference?.status?.oldValue,
              statusTo: payload.change?.difference?.status?.newValue,
              promotedFrom: payload.change?.difference?.promotedTo?.oldValue,
              promotedTo: payload.change?.difference?.promotedTo?.newValue,
              attachedTo: payload.change?.difference?.relatedSprint?.newValue,
            );

            if (message != null) {
              // Send the message
              final sendMessage = await sendMail(
                  email: "club_dog2@hotmail.com", message: message);

              print("Mail notification status: $sendMessage");
            }
            break;

          // If the job type is task
          case 'task':
            // Convert the payload into an Task instance
            TaigaTaskData printData = payload.data as TaigaTaskData;

            // Create a message based on the information
            final message = MessageGenerator().taigaUpdateMessageNotification(
              modifiedDate: printData.modifiedDate.toString(),
              jobName: printData.jobName.toString(),
              jobType: payload.jobType,
              refNumber: printData.referenceNumber.toString(),
              projectName: printData.fromProject.projectName,
              type: payload.actionType,
              nameFrom: payload.change?.difference?.name?.oldValue,
              nameTo: payload.change?.difference?.name?.newValue,
              newDescription:
                  payload.change?.difference?.descriptionDiff != null
                      ? printData.jobDescription
                      : null,
              statusFrom: payload.change?.difference?.status?.oldValue,
              statusTo: payload.change?.difference?.status?.newValue,
              promotedFrom: payload.change?.difference?.promotedTo?.oldValue,
              promotedTo: payload.change?.difference?.promotedTo?.newValue,
              attachedTo: payload.change?.difference?.relatedSprint?.newValue,
            );

            if (message != null) {
              // Send the message
              final sendMessage = await sendMail(
                  email: "club_dog2@hotmail.com", message: message);

              print("Mail notification status: $sendMessage");
            }

            break;

          // If the job type is userstory
          case 'userstory':
            // Convert the payload into an Userstory instance
            TaigaUserStoryData printData = payload.data as TaigaUserStoryData;
            // Create a message based on the information
            final message = MessageGenerator().taigaUpdateMessageNotification(
              modifiedDate: printData.modifiedDate.toString(),
              jobName: printData.jobName.toString(),
              jobType: payload.jobType,
              refNumber: printData.referenceNumber.toString(),
              projectName: printData.fromProject.projectName,
              type: payload.actionType,
              nameFrom: payload.change?.difference?.name?.oldValue,
              nameTo: payload.change?.difference?.name?.newValue,
              newDescription:
                  payload.change?.difference?.descriptionDiff != null
                      ? printData.jobDescription
                      : null,
              statusFrom: payload.change?.difference?.status?.oldValue,
              statusTo: payload.change?.difference?.status?.newValue,
              promotedFrom: payload.change?.difference?.promotedTo?.oldValue,
              promotedTo: payload.change?.difference?.promotedTo?.newValue,
              attachedTo: payload.change?.difference?.relatedSprint?.newValue,
            );

            if (message != null) {
              // Send the message
              final sendMessage = await sendMail(
                  email: "club_dog2@hotmail.com", message: message);

              print("Mail notification status: $sendMessage");
            }
            break;
        }

        print('THIS IS CHANGE:');
        if (payload.change?.comment != '') {
          print('Change on comment');
          print('Comment:${payload.change?.comment}');
        }
        if (payload.change?.commentHtml != null) {
          print('Change on commentHtml');
          print('Comment:${payload.change?.commentHtml}');
        }
        print('difference:');
        if (payload.change?.difference?.attachments != null) {
          print('Change on attachments');
          print(payload.change?.difference?.attachments);
        }
        if (payload.change?.difference?.assignedToJob != null) {
          print('Change on assignedTo');
          print(payload.change?.difference?.assignedToJob);
        }
        if (payload.change?.difference?.assignedToUserStory != null) {
          print('Change on assignedTo');
          print(payload.change?.difference?.assignedToUserStory);
        }
        if (payload.change?.difference?.dueDate != null) {
          print('Change on dueDate');
          print(payload.change?.difference?.dueDate);
        }
        if (payload.change?.difference?.status != null) {
          print('Change on status');
          print(payload.change?.difference?.status);
        }
        if (payload.change?.difference?.relatedSprint != null) {
          print('Change on relatedSprint');
          print(payload.change?.difference?.relatedSprint);
        }
        if (payload.change?.difference?.promotedTo != null) {
          print('Change on promotedTo');
          print(payload.change?.difference?.promotedTo);
        }
        if (payload.change?.difference?.changeTags != null) {
          print('Change on Tags');
          print(payload.change?.difference?.changeTags);
        }
        if (payload.change?.difference?.isClosedStatus != null) {
          print('Change on isClosedStatus');
          print(payload.change?.difference?.isClosedStatus);
        }
        if (payload.change?.difference?.kanbanOrder != null) {
          print('Change on kanbanOrder');
          print(payload.change?.difference?.kanbanOrder);
        }
        if (payload.change?.difference?.finishDate != null) {
          print('Change on finishDate');
          print(payload.change?.difference?.finishDate);
        }
        if (payload.change?.difference?.isBlockedStatus != null) {
          print('Change on isBlockedStatus');
          print(payload.change?.difference?.isBlockedStatus);
        }
        if (payload.change?.difference?.blockedNoteDiff != null) {
          print('Change on blockedNoteDiff');
          print(payload.change?.difference?.blockedNoteDiff);
        }
        if (payload.change?.difference?.blockedNoteHtml != null) {
          print('Change on blockedNoteHtml');
          print(payload.change?.difference?.blockedNoteHtml);
        }
        if (payload.change?.difference?.clientRequirementStatus != null) {
          print('Change on clientRequirementStatus');
          print(payload.change?.difference?.clientRequirementStatus);
        }
        if (payload.change?.difference?.teamRequirementStatus != null) {
          print('Change on teamRequirementStatus');
          print(payload.change?.difference?.teamRequirementStatus);
        }
        if (payload.change?.difference?.customAttributes != null) {
          print('Change on customAttributes');
          print(payload.change?.difference?.customAttributes);
        }
        if (payload.change?.difference?.isIocaineStatus != null) {
          print('Change on isIocaineStatus');
          print(payload.change?.difference?.isIocaineStatus);
        }
        if (payload.change?.difference?.storyPoints != null) {
          print('Change on storyPoints');
          print(payload.change?.difference?.storyPoints);
        }
        if (payload.change?.difference?.priorityStatus != null) {
          print('Change on priorityStatus');
          print(payload.change?.difference?.priorityStatus);
        }
        if (payload.change?.difference?.severityStatus != null) {
          print('Change on severityStatus');
          print(payload.change?.difference?.severityStatus);
        }
        if (payload.change?.difference?.typeStatus != null) {
          print('Change on typeStatus');
          print(payload.change?.difference?.typeStatus);
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
            commitMessage: "auto-deleted-todo",
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
          print("Issue created status: $response");
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

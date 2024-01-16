import 'dart:convert';
import 'dart:io';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';
import 'package:taiga_consumer_server/src/mailer/mailer.dart';
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
    print('Webhook received:');
    print('DecodedBody: $decodedBody');
    print('DecodedBody: ${decodedBody.runtimeType}');
    print('body: ${body.runtimeType}');
    try {
      final payload = TaigaPayload.fromJson(decodedBody);
      print('FullName of performer:${payload.performer.fullName}');
      print('actionType:${payload.actionType}');
      print('jobType:${payload.jobType}');
      print('date:${payload.date}');

      if (payload.jobType == 'issue') {
        TaigaIssueData printData = payload.data as TaigaIssueData;

        // If an issue was created
        if (payload.actionType == 'create') {
          final message = '''
Se creo un issue N°:${printData.referenceNumber}, llamado: ${printData.jobName}
en el proyecto: ${printData.fromProject}.
Descripcion: ${printData.jobDescription}

More data: 
ID ${printData.jobId}
Tags ${printData.jobTags}
Dueño ${printData.jobOwner}
Estado ${printData.jobStatus}
Usuarion mirando ${printData.jobWatchers}
Usuarion asignados ${printData.userAssigned}
Fecha de creacion ${printData.creationDate}
''';
          sendMail(email: "club_dog2@hotmail.com", message: message);
        }
      }
      if (payload.jobType == 'epic') {
        TaigaEpicData printData = payload.data as TaigaEpicData;
      }
      if (payload.jobType == 'task') {
        TaigaTaskData printData = payload.data as TaigaTaskData;
      }
      if (payload.jobType == 'userstory') {
        TaigaUserStoryData printData = payload.data as TaigaUserStoryData;
        print('THIS IS DATA: type USERSTORY');
        print('USERSTORY assignedUsers:${printData.assignedUsers}');
        print('USERSTORY blockedNote:${printData.blockedNote}');
        print(
            'USERSTORY clientRequirement:${printData.clientRequirementStatus}');
        print('USERSTORY dueDate:${printData.dueDate}');
        print('USERSTORY dueDateReason:${printData.dueDateReason}');
        print('USERSTORY finishDate:${printData.finishDate}');
        print('USERSTORY fromTaskRef:${printData.taskReference}');
        print('USERSTORY generatedFromIssue:${printData.issueReference}');
        print('USERSTORY isBlocked:${printData.isBlockedStatus}');
        print('USERSTORY isClosed:${printData.isClosedStatus}');
        print('USERSTORY sprint:${printData.relatedSprint}');
        print('USERSTORY points:${printData.storyPoints}');
        print('USERSTORY teamRequirement:${printData.teamRequirementStatus}');
        print('USERSTORY assignedTo:${printData.assignedUsers}');
        print('USERSTORY createdDate:${printData.creationDate}');
        print('USERSTORY description:${printData.jobDescription}');
        print('USERSTORY id:${printData.jobId}');
        print('USERSTORY modifiedDate:${printData.modifiedDate}');
        print('USERSTORY owner FullName:${printData.jobOwner.fullName}');
        print('USERSTORY permalink:${printData.jobPermalink}');
        print('USERSTORY project:${printData.fromProject}');
        print('USERSTORY ref:${printData.referenceNumber}');
        print('USERSTORY status:${printData.jobStatus}');
        print('USERSTORY subject:${printData.jobName}');
        print('USERSTORY tags:${printData.taskReference}');
        print('USERSTORY watchers:${printData.jobWatchers}');
        if (printData.storyPoints.isNotEmpty) {
          print('USERSTORY Story Points: ${printData.storyPoints}');
        }
        if (printData.customValues!.isNotEmpty) {
          //print(NidusCustomFields.fromJson(jsonEncode(printData.customValues)));
        }
      }
      if (payload.jobType == 'milestone') {
        TaigaSprintData printData = payload.data as TaigaSprintData;
        print('THIS IS DATA: type SPRINT');
        print('SPRINT createdBy:${printData.createdBy}');
        print('SPRINT createdDate:${printData.creationDate}');
        print('SPRINT disponibility:${printData.disponibility}');
        print('SPRINT estimatedFinishDate:${printData.estimatedFinishDate}');
        print('SPRINT estimatedStartDate:${printData.estimatedStartDate}');
        print('SPRINT isClosed:${printData.sprintClosedStatus}');
        print('SPRINT modifiedDate:${printData.modifiedDate}');
        print('SPRINT permalink:${printData.sprintPermalink}');
        print('SPRINT project:${printData.project}');
        print('SPRINT slug:${printData.sprintSlug}');
        print('SPRINT sprintId:${printData.sprintId}');
        print('SPRINT sprintName:${printData.sprintName}');
      }
      if (payload.jobType == 'wikipage') {
        TaigaWikiPageData printData = payload.data as TaigaWikiPageData;
        print('THIS IS DATA: type WIKIPAGE');
        print('WIKIPAGE id:${printData.id}');
        print('WIKIPAGE content:${printData.content}');
        print('WIKIPAGE creationDate:${printData.creationDate}');
        print('WIKIPAGE lastUserModifier:${printData.lastUserModifier}');
        print('WIKIPAGE modifiedDate:${printData.modifiedDate}');
        print('WIKIPAGE permalink:${printData.permalink}');
        print('WIKIPAGE relatedProject:${printData.relatedProject}');
        print('WIKIPAGE slug:${printData.wikiSlug}');
        print('WIKIPAGE userOwner:${printData.userOwner}');
      }
      if (payload.actionType == "change") {
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
        if (payload.change?.difference?.descriptionDiff != null) {
          print('There is a change on the description:');
          print(payload.change?.difference?.descriptionDiff);
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
        if (payload.change?.difference?.name != null) {
          print('Change on name');
          print(payload.change?.difference?.name);
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

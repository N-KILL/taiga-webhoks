import 'dart:convert';
import 'dart:io';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';
import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';
import 'package:serverpod/serverpod.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

class RouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    final decodedBody = await utf8.decodeStream(request);
    final body = json.decode(decodedBody);
    print('Webhook received:');
    print('DecodedBody: $decodedBody');
    print('DecodedBody: ${decodedBody.runtimeType}');
    print('body: ${body.runtimeType}');
    final payload = TaigaPayload.fromJson(decodedBody);
    print('FullName of performer:${payload.performer.fullName}');
    print('actionType:${payload.actionType}');
    print('jobType:${payload.jobType}');
    print('date:${payload.date}');
    if (payload.jobType == 'epic') {
      TaigaEpicData printData = payload.data as TaigaEpicData;
      print('THIS IS DATA: type EPIC');
      print('creationDate:${printData.creationDate}');
      print('customValues:${printData.customValues}');
      print('fromProject:${printData.fromProject}');
      print('jobDescription:${printData.jobDescription}');
      print('jobId:${printData.jobId}');
      print('jobName:${printData.jobName}');
      print('jobOwner:${printData.jobOwner}');
      print('jobStatus:${printData.jobStatus}');
      print('jobWatchers:${printData.jobWatchers}');
      print('modifiedDate:${printData.modifiedDate}');
      print('permalink:${printData.jobPermalink}');
      print('referenceNumber:${printData.referenceNumber}');
      print('tags:${printData.jobTags}');
      print('userAssigned:${printData.userAssigned}');
      print('clientRequirement:${printData.clientRequirementStatus}');
      print('color:${printData.color}');
      print('epicsOrder:${printData.epicsOrder}');
      print('teamRequirement:${printData.teamRequirementStatus}');
    }
    if (payload.jobType == 'task') {
      TaigaTaskData printData = payload.data as TaigaTaskData;
      print('THIS IS DATA: type TASK');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('finishedDate:${printData.finishedDate}');
      print('promotedTo:${printData.promotedToList}');
      print('creationDate:${printData.creationDate}');
      print('customValues:${printData.customValues}');
      print('fromProject:${printData.fromProject}');
      print('jobDescription:${printData.jobDescription}');
      print('jobId:${printData.jobId}');
      print('jobName:${printData.jobName}');
      print('jobOwner:${printData.jobOwner}');
      print('jobStatus:${printData.jobStatus}');
      print('jobWatchers:${printData.jobWatchers}');
      print('modifiedDate:${printData.modifiedDate}');
      print('permalink:${printData.jobPermalink}');
      print('referenceNumber:${printData.referenceNumber}');
      print('tags:${printData.jobTags}');
      print('userAssigned:${printData.userAssigned}');
      print('isBlocked:${printData.isBlockedStatus}');
      print('blockedNote:${printData.blockedNote}');
      print('isIocaine:${printData.isIocaineStatus}');
      print('promotedTo:${printData.promotedToList}');
      print('relatedSprint:${printData.relatedSprint}');
      print('taskboardOrder:${printData.taskboardOrder}');
      print('usOrder:${printData.usOrder}');
      print('userStory:${printData.userStory}');
    }
    if (payload.jobType == 'issue') {
      TaigaIssueData printData = payload.data as TaigaIssueData;
      print('THIS IS DATA: type ISSUE');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('finishedDate:${printData.finishedDate}');
      print('priority:${printData.issuePriority}');
      print('promotedTo:${printData.promotedToList}');
      print('severity:${printData.issueSeverity}');
      print('sprint:${printData.issueRelatedSprint}');
      print('type:${printData.issueType}');
      print('creationDate:${printData.creationDate}');
      print('customValues:${printData.customValues}');
      print('fromProject:${printData.fromProject}');
      print('jobDescription:${printData.jobDescription}');
      print('jobId:${printData.jobId}');
      print('jobName:${printData.jobName}');
      print('jobOwner:${printData.jobOwner}');
      print('jobStatus:${printData.jobStatus}');
      print('jobWatchers:${printData.jobWatchers}');
      print('modifiedDate:${printData.modifiedDate}');
      print('permalink:${printData.jobPermalink}');
      print('referenceNumber:${printData.referenceNumber}');
      print('tags:${printData.dueDate}');
      print('userAssigned:${printData.userAssigned}');
    }
    if (payload.jobType == 'userstory') {
      TaigaUserStoryData printData = payload.data as TaigaUserStoryData;
      print('THIS IS DATA: type USERSTORY');
      print('assignedUsers:${printData.assignedUsers}');
      print('blockedNote:${printData.blockedNote}');
      print('clientRequirement:${printData.clientRequirementStatus}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('finishDate:${printData.finishDate}');
      print('fromTaskRef:${printData.taskReference}');
      print('generatedFromIssue:${printData.issueReference}');
      print('isBlocked:${printData.isBlockedStatus}');
      print('isClosed:${printData.isClosed}');
      print('sprint:${printData.relatedSprint}');
      print('points:${printData.storyPoints}');
      print('teamRequirement:${printData.teamRequirementStatus}');
      print('assignedTo:${printData.assignedUsers}');
      print('createdDate:${printData.creationDate}');
      print('customAttributesValues:${printData.customValues?.bounty}');
      print('customAttributesValues:${printData.customValues?.figmaUrl}');
      print('description:${printData.jobDescription}');
      print('id:${printData.jobId}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner FullName:${printData.jobOwner.fullName}');
      print('permalink:${printData.jobPermalink}');
      print('project:${printData.fromProject}');
      print('ref:${printData.referenceNumber}');
      print('status:${printData.jobStatus}');
      print('subject:${printData.jobName}');
      print('tags:${printData.taskReference}');
      print('watchers:${printData.jobWatchers}');
      if (printData.storyPoints.isNotEmpty) {
        for (var element in printData.storyPoints) {
          print('data');
          print('Name:${element.pointName}');
          print('Role ${element.pointAssignedRole}');
          print('Value: ${element.pointAmount}');
        }
      }
    }
    if (payload.jobType == 'milestone') {
      DataSprint printData = payload.data as DataSprint;
      print('THIS IS DATA: type SPRINT');
      print('createdBy:${printData.createdBy}');
      print('createdDate:${printData.creationDate}');
      print('disponibility:${printData.disponibility}');
      print('estimatedFinishDate:${printData.estimatedFinishDate}');
      print('estimatedStartDate:${printData.estimatedStartDate}');
      print('isClosed:${printData.sprintClosedStatus}');
      print('modifiedDate:${printData.modifiedDate}');
      print('permalink:${printData.sprintPermalink}');
      print('project:${printData.project}');
      print('slug:${printData.sprintSlug}');
      print('sprintId:${printData.sprintId}');
      print('sprintName:${printData.sprintName}');
    }
    if (payload.actionType == "change") {
      print('THIS IS CHANGE:');
      if (payload.change?.comment != '') {
        print('Comment:${payload.change?.comment}');
      }
      if (payload.change?.commentHtml != null) {
        print('Comment:${payload.change?.commentHtml}');
      }
      print('difference:');
      if (payload.change?.difference?.attachments != null) {
        print(payload.change?.difference?.attachments);
      }
      if (payload.change?.difference?.assignedTo != null) {
        print(payload.change?.difference?.assignedTo);
      }
      if (payload.change?.difference?.dueDate != null) {
        print(payload.change?.difference?.dueDate);
      }
      if (payload.change?.difference?.status != null) {
        print(payload.change?.difference?.status);
      }
      if (payload.change?.difference?.relatedSprint != null) {
        print(payload.change?.difference?.relatedSprint);
      }
      if (payload.change?.difference?.promotedTo != null) {
        print(payload.change?.difference?.promotedTo);
      }
      if (payload.change?.difference?.tags != null) {
        print(payload.change?.difference?.tags);
      }
      if (payload.change?.difference?.descriptionDiff != null) {
        print(payload.change?.difference?.descriptionDiff);
      }
      if (payload.change?.difference?.isClosedStatus != null) {
        print(payload.change?.difference?.isClosedStatus);
      }
      if (payload.change?.difference?.kanbanOrder != null) {
        print(payload.change?.difference?.kanbanOrder);
      }
      if (payload.change?.difference?.finishDate != null) {
        print(payload.change?.difference?.finishDate);
      }
      if (payload.change?.difference?.isBlockedStatus != null) {
        print(payload.change?.difference?.isBlockedStatus);
      }
      if (payload.change?.difference?.blockedNoteDiff != null) {
        print(payload.change?.difference?.blockedNoteDiff);
      }
      if (payload.change?.difference?.blockedNoteHtml != null) {
        print(payload.change?.difference?.blockedNoteHtml);
      }
      if (payload.change?.difference?.clientRequirementStatus != null) {
        print(payload.change?.difference?.clientRequirementStatus);
      }
      if (payload.change?.difference?.teamRequirementStatus != null) {
        print(payload.change?.difference?.teamRequirementStatus);
      }
      if (payload.change?.difference?.customAttributes != null) {
        print(payload.change?.difference?.customAttributes);
      }
      if (payload.change?.difference?.isIocaineStatus != null) {
        print(payload.change?.difference?.isIocaineStatus);
      }
      if (payload.change?.difference?.storyPoints != null) {
        print(payload.change?.difference?.storyPoints);
      }
      if (payload.change?.difference?.priorityStatus != null) {
        print(payload.change?.difference?.priorityStatus);
      }
      if (payload.change?.difference?.severityStatus != null) {
        print(payload.change?.difference?.severityStatus);
      }
      if (payload.change?.difference?.typeStatus != null) {
        print(payload.change?.difference?.typeStatus);
      }
      if (payload.change?.difference?.name != null) {
        print(payload.change?.difference?.name);
      }
    }

    return WebHooksView(webhookData: body);
  }
}

class RouteGitLab extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    final decodedBody = await utf8.decodeStream(request);
    final body = json.decode(decodedBody);
    print('Gitlab Webhook received:');
    print('DecodedBody: $decodedBody');
    print('Body JsonDecode: $body');
    final payload = GitLabPayload.fromJson(decodedBody);
    print('Payload: $payload');
    for (var element in payload.commitsDetails) {
      print('new commit from: ${element.author}');
      print('in the project: ${payload.projectDetails.name}');
      print('commit details $element');
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

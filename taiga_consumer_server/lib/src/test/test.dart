import 'dart:convert';

import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
  final payload = TaigaPayload.fromJson(jsonEncode(body));
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
    print('clientRequirement:${printData.isClientRequirement}');
    print('color:${printData.color}');
    print('epicsOrder:${printData.epicsOrder}');
    print('teamRequirement:${printData.isTeamRequirement}');
  }
  if (payload.jobType == 'task') {
    TaigaTaskData printData = payload.data as TaigaTaskData;
    print('THIS IS DATA: type TASK');
    print('dueDate:${printData.dueDate}');
    print('dueDateReason:${printData.dueDateReason}');
    print('finishedDate:${printData.finishedDate}');
    print('promotedTo:${printData.promotedTo}');
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
    print('isBlocked:${printData.isBlocked}');
    print('blockedNote:${printData.blockedNote}');
    print('isIocaine:${printData.isIocaine}');
    print('promotedTo:${printData.promotedTo}');
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
    print('promotedTo:${printData.promotedTo}');
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
    print('clientRequirement:${printData.clientRequirement}');
    print('dueDate:${printData.dueDate}');
    print('dueDateReason:${printData.dueDateReason}');
    print('finishDate:${printData.finishDate}');
    print('fromTaskRef:${printData.taskReference}');
    print('generatedFromIssue:${printData.issueReference}');
    print('isBlocked:${printData.isBlocked}');
    print('isClosed:${printData.isClosed}');
    print('sprint:${printData.relatedSprint}');
    print('points:${printData.points}');
    print('teamRequirement:${printData.teamRequirement}');
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
    if (printData.points.isNotEmpty) {
      for (var element in printData.points) {
        print('data');
        print('Name:${element.pointName}');
        print('Role ${element.pointAssignedRole}');
        print('Value: ${element.pointValue}');
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
    if (payload.change?.difference?.isClosed != null) {
      print(payload.change?.difference?.isClosed);
    }
    if (payload.change?.difference?.kanbanOrder != null) {
      print(payload.change?.difference?.kanbanOrder);
    }
    if (payload.change?.difference?.finishDate != null) {
      print(payload.change?.difference?.finishDate);
    }
    if (payload.change?.difference?.isBlocked != null) {
      print(payload.change?.difference?.isBlocked);
    }
    if (payload.change?.difference?.blockedNoteDiff != null) {
      print(payload.change?.difference?.blockedNoteDiff);
    }
    if (payload.change?.difference?.blockedNoteHtml != null) {
      print(payload.change?.difference?.blockedNoteHtml);
    }
    if (payload.change?.difference?.clientRequirement != null) {
      print(payload.change?.difference?.clientRequirement);
    }
    if (payload.change?.difference?.teamRequirement != null) {
      print(payload.change?.difference?.teamRequirement);
    }
    if (payload.change?.difference?.customAttributes != null) {
      print(payload.change?.difference?.customAttributes);
    }
    if (payload.change?.difference?.isIocaine != null) {
      print(payload.change?.difference?.isIocaine);
    }
    if (payload.change?.difference?.points != null) {
      print(payload.change?.difference?.points);
    }
    if (payload.change?.difference?.priority != null) {
      print(payload.change?.difference?.priority);
    }
    if (payload.change?.difference?.severity != null) {
      print(payload.change?.difference?.severity);
    }
    if (payload.change?.difference?.type != null) {
      print(payload.change?.difference?.type);
    }
    if (payload.change?.difference?.subject != null) {
      print(payload.change?.difference?.subject);
    }
  }
}

final body = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZWDINw%3AwOIPceOp8EbzrmglY3EC23Sqt1j7VdH0nu76WGzB6TndSYq9GZQoPollnSLwGp8NeVIjx2zRQ-X1Ja2lpIN3_w",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 370520,
    "name": "2nd Sprint",
    "slug": "2nd-sprint-23",
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZWDINw%3AwOIPceOp8EbzrmglY3EC23Sqt1j7VdH0nu76WGzB6TndSYq9GZQoPollnSLwGp8NeVIjx2zRQ-X1Ja2lpIN3_w",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "closed": false,
    "project": {
      "id": 1179467,
      "name": "Esteban se la come",
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "logo_big_url": null
    },
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/taskboard/2nd-sprint-23",
    "created_date": "2023-11-23T13:55:35.031Z",
    "disponibility": 0,
    "modified_date": "2023-11-23T13:55:35.043Z",
    "estimated_start": "2023-11-23",
    "estimated_finish": "2023-12-07"
  },
  "date": "2023-11-24T15:58:47.554Z",
  "type": "milestone",
  "action": "delete"
};

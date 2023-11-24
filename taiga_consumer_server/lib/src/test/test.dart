import 'dart:convert';

import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
  final payload = TaigaPayloadMPBLE.fromJson(jsonEncode(body));
  print('FullName of performer:${payload.performer.fullName}');
  print('actionType:${payload.actionType}');
  print('jobType:${payload.jobType}');
  print('date:${payload.date}');
  if (payload.jobType == 'epic') {
    TaigaEpicDataMPBLE printData = payload.data as TaigaEpicDataMPBLE;
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
    print('permalink:${printData.permalink}');
    print('referenceNumber:${printData.referenceNumber}');
    print('tags:${printData.tags}');
    print('userAssigned:${printData.userAssigned}');
    print('clientRequirement:${printData.clientRequirement}');
    print('color:${printData.color}');
    print('epicsOrder:${printData.epicsOrder}');
    print('teamRequirement:${printData.teamRequirement}');
  }
  if (payload.jobType == 'task') {
    TaigaTaskDataMPBLE printData = payload.data as TaigaTaskDataMPBLE;
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
    print('permalink:${printData.permalink}');
    print('referenceNumber:${printData.referenceNumber}');
    print('tags:${printData.tags}');
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
    TaigaIssueDataMPBLE printData = payload.data as TaigaIssueDataMPBLE;
    print('THIS IS DATA: type ISSUE');
    print('dueDate:${printData.dueDate}');
    print('dueDateReason:${printData.dueDateReason}');
    print('finishedDate:${printData.finishedDate}');
    print('priority:${printData.priority}');
    print('promotedTo:${printData.promotedTo}');
    print('severity:${printData.severity}');
    print('sprint:${printData.sprint}');
    print('type:${printData.type}');
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
    print('permalink:${printData.permalink}');
    print('referenceNumber:${printData.referenceNumber}');
    print('tags:${printData.tags}');
    print('userAssigned:${printData.userAssigned}');
  }
  if (payload.jobType == 'userstory') {
    TaigaUserStoryDataMPBLE printData = payload.data as TaigaUserStoryDataMPBLE;
    print('THIS IS DATA: type USERSTORY');
    print('assignedUsers:${printData.assignedUsers}');
    print('blockedNote:${printData.blockedNote}');
    print('clientRequirement:${printData.clientRequirement}');
    print('dueDate:${printData.dueDate}');
    print('dueDateReason:${printData.dueDateReason}');
    print('finishDate:${printData.finishedDate}');
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
    print('permalink:${printData.permalink}');
    print('project:${printData.fromProject}');
    print('ref:${printData.referenceNumber}');
    print('status:${printData.jobStatus}');
    print('subject:${printData.jobName}');
    print('tags:${printData.tags}');
    print('watchers:${printData.jobWatchers}');
    if (printData.points.isNotEmpty) {
      for (var element in printData.points) {
        print('data');
        print('Name:${element.name}');
        print('Role ${element.role}');
        print('Value: ${element.value}');
      }
    }
  }
  if (payload.jobType == 'milestone') {
    DataSprint printData = DataSprint.fromJson(jsonEncode(payload.data));
    print('THIS IS DATA: type SPRINT');
    print('createdBy:${printData.createdBy}');
    print('createdDate:${printData.creationDate}');
    print('disponibility:${printData.disponibility}');
    print('estimatedFinishDate:${printData.estimatedFinishDate}');
    print('estimatedStartDate:${printData.estimatedStartDate}');
    print('isClosed:${printData.isClosed}');
    print('modifiedDate:${printData.modifiedDate}');
    print('permalink:${printData.permalink}');
    print('project:${printData.project}');
    print('slug:${printData.slug}');
    print('sprintId:${printData.sprintId}');
    print('sprintName:${printData.sprintName}');
  }
  if (payload.actionType == "change") {
    print('THIS IS CHANGE:');
    print('Comment:${payload.change?.comment}');
    print('Comment:${payload.change?.commentHtml}');
    print('difference:');
    if (payload.change!.difference?.assignedTo != null) {
      print('assignedTo:${payload.change?.difference?.assignedTo?.from}');
      print('assignedTo:${payload.change?.difference?.assignedTo?.to}');
    }
    if (payload.change!.difference!.attachments != null) {
      print('assignedTo:${payload.change?.difference?.attachments}');
    }
    if (payload.change!.difference!.blockedNoteDiff != null) {
      print(
          'blockedNoteDiff:${payload.change?.difference?.blockedNoteDiff?.from}');
      print(
          'blockedNoteDiff:${payload.change?.difference?.blockedNoteDiff?.to}');
    }
    if (payload.change!.difference!.blockedNoteHtml != null) {
      print(
          'blockedNoteHtml:${payload.change?.difference?.blockedNoteHtml?.from}');
      print(
          'blockedNoteHtml:${payload.change?.difference?.blockedNoteHtml?.to}');
    }
    if (payload.change!.difference!.clientRequirement != null) {
      print(
          'clientRequirement:${payload.change?.difference?.clientRequirement?.from}');
      print(
          'clientRequirement:${payload.change?.difference?.clientRequirement?.to}');
    }
    if (payload.change!.difference!.descriptionDiff != null) {
      print('descriptionDiff:${payload.change?.difference?.descriptionDiff}');
    }
    if (payload.change!.difference!.dueDate != null) {
      print('dueDate:${payload.change?.difference?.dueDate?.from}');
      print('dueDate:${payload.change?.difference?.dueDate?.to}');
    }
    if (payload.change!.difference!.finishDate != null) {
      print('finishDate:${payload.change?.difference?.finishDate?.from}');
      print('finishDate:${payload.change?.difference?.finishDate?.to}');
    }
    if (payload.change!.difference!.isBlocked != null) {
      print('isBlocked:${payload.change?.difference?.isBlocked?.from}');
      print('isBlocked:${payload.change?.difference?.isBlocked?.to}');
    }
    if (payload.change!.difference!.isClosed != null) {
      print('isClosed:${payload.change?.difference?.isClosed?.from}');
      print('isClosed:${payload.change?.difference?.isClosed?.to}');
    }
    if (payload.change!.difference!.kanbanOrder != null) {
      print('kanbanOrder:${payload.change?.difference?.kanbanOrder?.from}');
      print('kanbanOrder:${payload.change?.difference?.kanbanOrder?.to}');
    }
    if (payload.change!.difference!.sprint != null) {
      print('sprintFrom:${payload.change?.difference?.sprint?.from}');
      print('sprintTo:${payload.change?.difference?.sprint?.to}');
    }
    if (payload.change!.difference!.promotedTo != null) {
      print('promotedTo:${payload.change?.difference?.promotedTo?.from}');
      print('promotedTo:${payload.change?.difference?.promotedTo?.to}');
    }
    if (payload.change!.difference!.status != null) {
      print('status:${payload.change?.difference?.status?.from}');
      print('status:${payload.change?.difference?.status?.to}');
    }
    if (payload.change!.difference!.tags != null) {
      print('tags:${payload.change?.difference?.tags?.from}');
      print('tags:${payload.change?.difference?.tags?.to}');
    }
    if (payload.change!.difference!.customAttributes != null) {
      print(
          'attributesNew:${payload.change?.difference?.customAttributes?.attributesNew}');
      print(
          'attributesChanged:${payload.change?.difference?.customAttributes?.attributesChanged}');
      print(
          'attributesDeleted:${payload.change?.difference?.customAttributes?.attributesDeleted}');
    }
    if (payload.change!.difference!.points != null) {
      if (payload.change?.difference?.points?.backPoints != null) {
        print(
            'backPointsFrom:${payload.change?.difference?.points?.backPoints?.from}');
        print(
            'backPointsTo:${payload.change?.difference?.points?.backPoints?.to}');
      }
      if (payload.change?.difference?.points?.designPoints != null) {
        print(
            'designPointsFrom:${payload.change?.difference?.points?.designPoints?.from}');
        print(
            'designPointsTo:${payload.change?.difference?.points?.designPoints?.to}');
      }
      if (payload.change?.difference?.points?.frontPoints != null) {
        print(
            'frontPointsFrom:${payload.change?.difference?.points?.frontPoints?.from}');
        print(
            'frontPointsTo:${payload.change?.difference?.points?.frontPoints?.to}');
      }
      if (payload.change?.difference?.points?.pmPoints != null) {
        print(
            'pmPointsFrom:${payload.change?.difference?.points?.pmPoints?.from}');
        print('pmPointsTo:${payload.change?.difference?.points?.pmPoints?.to}');
      }
    }
  }
}

final body = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZV9Z1w%3AbA1edJqs0lemvdS1tvniUe--Mai0haAWmMcb6XAItl5G8L28D9zqife__9VTJ-hJVH2HtW4qSHjUwEX0l75QnA",
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
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZV9Z1w%3AbA1edJqs0lemvdS1tvniUe--Mai0haAWmMcb6XAItl5G8L28D9zqife__9VTJ-hJVH2HtW4qSHjUwEX0l75QnA",
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
  "date": "2023-11-23T13:55:35.121Z",
  "type": "milestone",
  "action": "create"
};

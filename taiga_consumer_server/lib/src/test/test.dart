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
    DataSprint printData = DataSprint.fromJson(jsonEncode(payload.data));
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
    if (payload.change!.difference?.assignedTo != null) {
      print('assignedTo:${payload.change?.difference?.assignedTo?.oldValue}');
      print('assignedTo:${payload.change?.difference?.assignedTo?.newValue}');
    }
    if (payload.change!.difference!.attachments != null) {
      print('attachments:${payload.change?.difference?.attachments}');
    }
    if (payload.change!.difference!.blockedNoteDiff != null) {
      print(
          'blockedNoteDiff:${payload.change?.difference?.blockedNoteDiff?.oldValue}');
      print(
          'blockedNoteDiff:${payload.change?.difference?.blockedNoteDiff?.newValue}');
    }
    if (payload.change!.difference!.blockedNoteHtml != null) {
      print(
          'blockedNoteHtml:${payload.change?.difference?.blockedNoteHtml?.oldValue}');
      print(
          'blockedNoteHtml:${payload.change?.difference?.blockedNoteHtml?.newValue}');
    }
    if (payload.change!.difference!.clientRequirement != null) {
      print(
          'clientRequirement:${payload.change?.difference?.clientRequirement?.oldValue}');
      print(
          'clientRequirement:${payload.change?.difference?.clientRequirement?.newValue}');
    }
    if (payload.change!.difference!.descriptionDiff != null) {
      print('descriptionDiff:${payload.change?.difference?.descriptionDiff}');
    }
    if (payload.change!.difference!.dueDate != null) {
      print('dueDate:${payload.change?.difference?.dueDate?.oldValue}');
      print('dueDate:${payload.change?.difference?.dueDate?.newValue}');
    }
    if (payload.change!.difference!.finishDate != null) {
      print('finishDate:${payload.change?.difference?.finishDate?.oldValue}');
      print('finishDate:${payload.change?.difference?.finishDate?.newValue}');
    }
    if (payload.change!.difference!.isBlocked != null) {
      print('isBlocked:${payload.change?.difference?.isBlocked?.oldValue}');
      print('isBlocked:${payload.change?.difference?.isBlocked?.newValue}');
    }
    if (payload.change!.difference!.isClosed != null) {
      print('isClosed:${payload.change?.difference?.isClosed?.oldValue}');
      print('isClosed:${payload.change?.difference?.isClosed?.newValue}');
    }
    if (payload.change!.difference!.kanbanOrder != null) {
      print('kanbanOrder:${payload.change?.difference?.kanbanOrder?.oldValue}');
      print('kanbanOrder:${payload.change?.difference?.kanbanOrder?.newValue}');
    }
    if (payload.change!.difference!.sprint != null) {
      print('sprintFrom:${payload.change?.difference?.sprint?.oldValue}');
      print('sprintTo:${payload.change?.difference?.sprint?.newValue}');
    }
    if (payload.change!.difference!.promotedTo != null) {
      print('promotedTo:${payload.change?.difference?.promotedTo?.oldValue}');
      print('promotedTo:${payload.change?.difference?.promotedTo?.newValue}');
    }
    if (payload.change!.difference!.status != null) {
      print('status:${payload.change?.difference?.status?.oldValue}');
      print('status:${payload.change?.difference?.status?.newValue}');
    }
    if (payload.change!.difference!.tags != null) {
      print('tags:${payload.change?.difference?.tags?.oldValue}');
      print('tags:${payload.change?.difference?.tags?.newValue}');
    }
    if (payload.change!.difference!.customAttributes != null) {
      print(
          'attributesNew:${payload.change?.difference?.customAttributes?.customValuesNew}');
      print(
          'attributesChanged:${payload.change?.difference?.customAttributes?.customValuesChanged}');
      print(
          'attributesDeleted:${payload.change?.difference?.customAttributes?.customValuesDeleted}');
    }
    if (payload.change!.difference!.points != null) {
      if (payload.change?.difference?.points?.backPoints != null) {
        print(
            'backPointsFrom:${payload.change?.difference?.points?.backPoints?.oldValue}');
        print(
            'backPointsTo:${payload.change?.difference?.points?.backPoints?.newValue}');
      }
      if (payload.change?.difference?.points?.designPoints != null) {
        print(
            'designPointsFrom:${payload.change?.difference?.points?.designPoints?.oldValue}');
        print(
            'designPointsTo:${payload.change?.difference?.points?.designPoints?.newValue}');
      }
      if (payload.change?.difference?.points?.frontPoints != null) {
        print(
            'frontPointsFrom:${payload.change?.difference?.points?.frontPoints?.oldValue}');
        print(
            'frontPointsTo:${payload.change?.difference?.points?.frontPoints?.newValue}');
      }
      if (payload.change?.difference?.points?.pmPoints != null) {
        print(
            'pmPointsFrom:${payload.change?.difference?.points?.pmPoints?.oldValue}');
        print(
            'pmPointsTo:${payload.change?.difference?.points?.pmPoints?.newValue}');
      }
    }
  }
}

final body = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZWCjEg%3AR7WzKPWU0qgd2skl-NLllSqPT2y5PaWFGK5bPdjThRMstdpf1TJ2jtyg-4QNvau2KdMEKdJIKk6hh0ryMYOcmQ",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 1688793,
    "ref": 48,
    "tags": [],
    "type": {"id": 3547927, "name": "Enhancement", "color": "#40E4CE"},
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZWCjEg%3AR7WzKPWU0qgd2skl-NLllSqPT2y5PaWFGK5bPdjThRMstdpf1TJ2jtyg-4QNvau2KdMEKdJIKk6hh0ryMYOcmQ",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "status": {
      "id": 8259988,
      "name": "New",
      "slug": "new",
      "color": "#70728F",
      "is_closed": false
    },
    "project": {
      "id": 1179467,
      "name": "Esteban se la come",
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "logo_big_url": null
    },
    "subject": "asdasd",
    "due_date": null,
    "priority": {"id": 3541292, "name": "Relevante", "color": "#E4CE40"},
    "severity": {"id": 5894934, "name": "N/A", "color": "#A9AABC"},
    "watchers": [],
    "milestone": {
      "id": 370520,
      "name": "2nd Sprint",
      "slug": "2nd-sprint-23",
      "owner": {
        "id": 588936,
        "photo":
            "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZWCjEg%3AR7WzKPWU0qgd2skl-NLllSqPT2y5PaWFGK5bPdjThRMstdpf1TJ2jtyg-4QNvau2KdMEKdJIKk6hh0ryMYOcmQ",
        "username": "CardozoIgnacio",
        "full_name": "Ignacio Cardozo",
        "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
        "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
      },
      "closed": false,
      "project": {
        "id": 1179467,
        "name": "Esteban se la come",
        "permalink":
            "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
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
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/issue/48",
    "assigned_to": null,
    "description": "ed",
    "promoted_to": [5314466, 5314558],
    "created_date": "2023-11-23T13:56:01.399Z",
    "finished_date": null,
    "modified_date": "2023-11-23T14:26:15.313Z",
    "due_date_reason": "",
    "external_reference": null,
    "custom_attributes_values": {}
  },
  "date": "2023-11-24T13:20:18.488Z",
  "type": "issue",
  "action": "change",
  "change": {
    "diff": {
      "attachments": {
        "new": [],
        "changed": [
          {
            "url":
                "https://media-protected.taiga.io/attachments/8/4/4/1/05a26a2501c3433fd3805922302e8e70f500a18fa1827a8d8069f327885c/test.webp?token=ZWCjEg%3ApENrXuArtut0GRjBFHFxrw__BEc-vnrGBPNnuYILgrpAOlTWuVr8dIWSfF0hQLNB1ZpJwZUlerlfZnClJ9MHdQ",
            "changes": {
              "description": ["", "asd"]
            },
            "filename": "test.webp",
            "thumb_url": ""
          }
        ],
        "deleted": []
      }
    },
    "comment": "",
    "comment_html": "",
    "comment_versions": null,
    "edit_comment_date": null,
    "delete_comment_date": null
  }
};

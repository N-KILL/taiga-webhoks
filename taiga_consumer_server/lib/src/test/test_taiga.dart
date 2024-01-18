import 'dart:convert';

import 'package:taiga_consumer_server/src/mailer/mailer.dart';
import 'package:taiga_consumer_server/src/mailer/message_generator.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() async {
  // Data receive stuff
  final payload = TaigaPayload.fromJson(jsonEncode(body));
  print('FullName of performer:${payload.performer.fullName}');
  print('actionType:${payload.actionType}');
  print('jobType:${payload.jobType}');
  print('date:${payload.date}');
  // If the type of job is issue
  if (payload.jobType == 'issue') {
    TaigaIssueData printData = payload.data as TaigaIssueData;

    // If a issue was created
    if (payload.actionType == 'create') {
      final message = MessageGenerator(
        creationDate: printData.creationDate.toString(),
        jobName: printData.jobName.toString(),
        jobDescription: printData.jobDescription.toString(),
        jobType: payload.jobType,
        projectName: printData.fromProject.projectName,
        type: payload.actionType,
      );
      final sendMessage =
          await sendMail(email: "club_dog2@hotmail.com", message: message);

      print(sendMessage);
    }
  }

  // If the job type is Task
  if (payload.jobType == 'task') {
    TaigaTaskData printData = payload.data as TaigaTaskData;
    // If a task was created
    if (payload.actionType == 'create') {
      final message = MessageGenerator(
        creationDate: printData.creationDate.toString(),
        jobName: printData.jobName.toString(),
        jobDescription: printData.jobDescription.toString(),
        jobType: payload.jobType,
        projectName: printData.fromProject.projectName,
        type: payload.actionType,
      );
      final sendMessage =
          await sendMail(email: "club_dog2@hotmail.com", message: message);

      print(sendMessage);
    }
  }

  // If the type of job is userstory
  if (payload.jobType == 'userstory') {
    TaigaUserStoryData printData = payload.data as TaigaUserStoryData;
    // If a userstory was created
    if (payload.actionType == 'create') {
      final message = MessageGenerator(
        creationDate: printData.creationDate.toString(),
        jobName: printData.jobName.toString(),
        jobDescription: printData.jobDescription.toString(),
        jobType: payload.jobType,
        projectName: printData.fromProject.projectName,
        type: payload.actionType,
      );
      final sendMessage =
          await sendMail(email: "club_dog2@hotmail.com", message: message);

      print(sendMessage);
    }
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
}

final body = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZagwDQ%3AxerYeL0nzXh9qkrrrxCy4ZLNPFZ-ycr1C18LaDOl9j5JcIhDoua_t9IFZIGpBVVy4jYZRFg4rpI_HybLynSpnw",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 5291646,
    "ref": 27,
    "tags": [],
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZagwDQ%3AxerYeL0nzXh9qkrrrxCy4ZLNPFZ-ycr1C18LaDOl9j5JcIhDoua_t9IFZIGpBVVy4jYZRFg4rpI_HybLynSpnw",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "points": [
      {"name": "?", "role": "Design", "value": null},
      {"name": "?", "role": "Front", "value": null},
      {"name": "?", "role": "Back", "value": null},
      {"name": "?", "role": "Project Manager", "value": null}
    ],
    "status": {
      "id": 7101918,
      "name": "Pesándose",
      "slug": "pesandose",
      "color": "#CFD350",
      "is_closed": false,
      "is_archived": false
    },
    "project": {
      "id": 1179467,
      "name": "Esteban se la come",
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "logo_big_url": null
    },
    "subject": "New task test",
    "due_date": null,
    "watchers": [],
    "is_closed": false,
    "milestone": null,
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/us/27",
    "tribe_gig": null,
    "is_blocked": false,
    "assigned_to": null,
    "description": "",
    "finish_date": null,
    "blocked_note": "",
    "created_date": "2023-11-17T12:54:00.716Z",
    "from_task_ref": "Task #26",
    "modified_date": "2023-11-17T12:54:00.778Z",
    "assigned_users": [],
    "due_date_reason": "",
    "team_requirement": false,
    "client_requirement": false,
    "external_reference": null,
    "generated_from_task": null,
    "generated_from_issue": null,
    "custom_attributes_values": {}
  },
  "date": "2024-01-17T19:52:45.323Z",
  "type": "userstory",
  "action": "change",
  "change": {
    "diff": {
      "status": {"to": "Pesándose", "from": "Aprobándose"},
      "backlog_order": {"to": 1700224402516537, "from": 1700225640716976}
    },
    "comment": "",
    "comment_html": "",
    "comment_versions": null,
    "edit_comment_date": null,
    "delete_comment_date": null
  }
};

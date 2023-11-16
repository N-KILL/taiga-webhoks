import 'dart:convert';

import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
  //final data = TaigaIssue.fromJson(body);
  final data = taigaObjectGenerator(jsonEncode(userStoryBody));
  print(data);

      if (data.runtimeType == TaigaIssue) {
      TaigaIssue dataDos = data;
      print('PAYLOAD TYPE TaigaIssue');
      print('DATA OF THE PAYLOAD:');
      print('This is the payload: $dataDos');
      print('This is the action: ${dataDos.action}');
      print('This is the type: ${dataDos.type}');
      print('This is the Date: ${dataDos.date}');
      print('This is the By: ${dataDos.by}');
      print('This is the By(fullName): ${dataDos.by.fullName}');
      print('This is the By(gravatarId): ${dataDos.by.gravatarId}');
      print('This is the By(id): ${dataDos.by.id}');
      print('This is the By(permalink): ${dataDos.by.permalink}');
      print('This is the By(photo): ${dataDos.by.photo}');
      print('This is the By(username): ${dataDos.by.username}');
      print(
          'This is the Change (If type != change, all change data = null): ${dataDos.change}');
      print('This is the Change(comment): ${dataDos.change?.comment}');
      print('This is the Change(commentHtml): ${dataDos.change?.commentHtml}');
      print(
          'This is the Change(commentVersions): ${dataDos.change?.commentVersions}');
      print(
          'This is the Change(editCommentDate): ${dataDos.change?.editCommentDate}');
      print(
          'This is the Change(diff(descriptionDiff)): ${dataDos.change?.diff?.descriptionDiff}');
      print(
          'This is the Change(diff(attachments.new)): ${dataDos.change?.diff?.attachments?.attachmentsNew}');
      print(
          'This is the Change(diff(attachments.changed)): ${dataDos.change?.diff?.attachments?.changed}');
      print(
          'This is the Change(diff(attachments.deleted)): ${dataDos.change?.diff?.attachments?.deleted}');
      print(
          'This is the Change(diff(tags.from)): ${dataDos.change?.diff?.tags?.from}');
      print(
          'This is the Change(diff(tags.to)): ${dataDos.change?.diff?.tags?.to}');
      print(
          'This is the Change(diff(assignedTo.from)): ${dataDos.change?.diff?.assignedTo?.from}');
      print(
          'This is the Change(diff(assignedTo.to)): ${dataDos.change?.diff?.assignedTo?.to}');
      print(
          'This is the Change(diff(dueDate.from)): ${dataDos.change?.diff?.dueDate?.from}');
      print(
          'This is the Change(diff(dueDate.to)): ${dataDos.change?.diff?.dueDate?.to}');
      print(
          'This is the Change(diff(milestone.from)): ${dataDos.change?.diff?.milestone?.from}');
      print(
          'This is the Change(diff(milestone.to)): ${dataDos.change?.diff?.milestone?.to}');
      print(
          'This is the Change(diff(promotedTo.from)): ${dataDos.change?.diff?.promotedTo?.from}');
      print(
          'This is the Change(diff(promotedTo.to)): ${dataDos.change?.diff?.promotedTo?.to}');
      print(
          'This is the Change(diff(status.from)): ${dataDos.change?.diff?.status?.from}');
      print(
          'This is the Change(diff(status.to)): ${dataDos.change?.diff?.status?.from}');
      print('This is the Data: ${dataDos.data}');
      print('This is the Data(id): ${dataDos.data.id}');
      print('This is the Data(ref): ${dataDos.data.ref}');
      print('This is the Data(createdDate): ${dataDos.data.createdDate}');
      print('This is the Data(modifiedDate): ${dataDos.data.modifiedDate}');
      print('This is the Data(finishedDate): ${dataDos.data.finishedDate}');
      print('This is the Data(dueDate): ${dataDos.data.dueDate}');
      print('This is the Data(subject): ${dataDos.data.subject}');
      print(
          'This is the Data(externalReference): ${dataDos.data.externalReference}');
      print('This is the Data(watchers): ${dataDos.data.watchers}');
      print('This is the Data(description): ${dataDos.data.description}');
      print('This is the Data(tags): ${dataDos.data.tags}');
      print('This is the Data(permalink): ${dataDos.data.permalink}');
      print('This is the Data(project): ${dataDos.data.project}');
      print('This is the Data(milestone): ${dataDos.data.milestone}');
      print('This is the Data(owner): ${dataDos.data.owner}');
      print('This is the Data(owner): ${dataDos.data.owner.fullName}');
      print('This is the Data(owner): ${dataDos.data.owner.gravatarId}');
      print('This is the Data(owner): ${dataDos.data.owner.id}');
      print('This is the Data(owner): ${dataDos.data.owner.permalink}');
      print('This is the Data(owner): ${dataDos.data.owner.photo}');
      print('This is the Data(owner): ${dataDos.data.owner.username}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.fullName}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.gravatarId}');
      print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.id}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.permalink}');
      print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.photo}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.username}');
      print('This is the Data(status): ${dataDos.data.status}');
      print('This is the Data(type): ${dataDos.data.type}');
      print('This is the Data(type): ${dataDos.data.type.color}');
      print('This is the Data(type): ${dataDos.data.type.id}');
      print('This is the Data(type): ${dataDos.data.type.name}');
      print('This is the Data(priority): ${dataDos.data.priority}');
      print('This is the Data(priority): ${dataDos.data.priority.color}');
      print('This is the Data(priority): ${dataDos.data.priority.id}');
      print('This is the Data(priority): ${dataDos.data.priority.name}');
      print('This is the Data(severity): ${dataDos.data.severity}');
      print('This is the Data(severity): ${dataDos.data.severity.color}');
      print('This is the Data(severity): ${dataDos.data.severity.id}');
      print('This is the Data(severity): ${dataDos.data.severity.name}');
      print('This is the Data(promotedTo): ${dataDos.data.promotedTo}');
    }
    if (data.runtimeType == TaigaUserStory) {
      TaigaUserStory dataDos = data;
      print('PAYLOAD TYPE TaigaIssue');
      print('DATA OF THE PAYLOAD:');
      print('This is the payload: $dataDos');
      print('This is the action: ${dataDos.action}');
      print('This is the type: ${dataDos.type}');
      print('This is the Date: ${dataDos.date}');
      print('This is the By: ${dataDos.by}');
      print('This is the By(fullName): ${dataDos.by.fullName}');
      print('This is the By(gravatarId): ${dataDos.by.gravatarId}');
      print('This is the By(id): ${dataDos.by.id}');
      print('This is the By(permalink): ${dataDos.by.permalink}');
      print('This is the By(photo): ${dataDos.by.photo}');
      print('This is the By(username): ${dataDos.by.username}');
      print(
          'This is the Change (If type != change, all change data = null): ${dataDos.change}');
      print('This is the Change(comment): ${dataDos.change?.comment}');
      print('This is the Change(commentHtml): ${dataDos.change?.commentHtml}');
      print(
          'This is the Change(commentVersions): ${dataDos.change?.commentVersions}');
      print(
          'This is the Change(editCommentDate): ${dataDos.change?.editCommentDate}');
      print(
          'This is the Change(diff(descriptionDiff)): ${dataDos.change?.diff?.descriptionDiff}');
      print(
          'This is the Change(diff(attachments.new)): ${dataDos.change?.diff?.attachments?.attachmentsNew}');
      print(
          'This is the Change(diff(attachments.changed)): ${dataDos.change?.diff?.attachments?.changed}');
      print(
          'This is the Change(diff(attachments.deleted)): ${dataDos.change?.diff?.attachments?.deleted}');
      print(
          'This is the Change(diff(tags.from)): ${dataDos.change?.diff?.tags?.from}');
      print(
          'This is the Change(diff(tags.to)): ${dataDos.change?.diff?.tags?.to}');
      print(
          'This is the Change(diff(assignedTo.from)): ${dataDos.change?.diff?.assignedTo?.from}');
      print(
          'This is the Change(diff(assignedTo.to)): ${dataDos.change?.diff?.assignedTo?.to}');
      print(
          'This is the Change(diff(dueDate.from)): ${dataDos.change?.diff?.dueDate?.from}');
      print(
          'This is the Change(diff(dueDate.to)): ${dataDos.change?.diff?.dueDate?.to}');
      print(
          'This is the Change(diff(milestone.from)): ${dataDos.change?.diff?.milestone?.from}');
      print(
          'This is the Change(diff(milestone.to)): ${dataDos.change?.diff?.milestone?.to}');
      print(
          'This is the Change(diff(promotedTo.from)): ${dataDos.change?.diff?.promotedTo?.from}');
      print(
          'This is the Change(diff(promotedTo.to)): ${dataDos.change?.diff?.promotedTo?.to}');
      print(
          'This is the Change(diff(status.from)): ${dataDos.change?.diff?.status?.from}');
      print(
          'This is the Change(diff(status.to)): ${dataDos.change?.diff?.status?.from}');
      print('This is the Data: ${dataDos.data}');
      print('This is the Data(id): ${dataDos.data.id}');
      print('This is the Data(ref): ${dataDos.data.ref}');
      print('This is the Data(createdDate): ${dataDos.data.createdDate}');
      print('This is the Data(modifiedDate): ${dataDos.data.modifiedDate}');
      print('This is the Data(dueDate): ${dataDos.data.dueDate}');
      print('This is the Data(subject): ${dataDos.data.subject}');
      print(
          'This is the Data(externalReference): ${dataDos.data.externalReference}');
      print('This is the Data(watchers): ${dataDos.data.watchers}');
      print('This is the Data(description): ${dataDos.data.description}');
      print('This is the Data(tags): ${dataDos.data.tags}');
      print('This is the Data(permalink): ${dataDos.data.permalink}');
      print('This is the Data(project): ${dataDos.data.project}');
      print('This is the Data(milestone): ${dataDos.data.milestone}');
      print('This is the Data(owner): ${dataDos.data.owner}');
      print('This is the Data(owner): ${dataDos.data.owner.fullName}');
      print('This is the Data(owner): ${dataDos.data.owner.gravatarId}');
      print('This is the Data(owner): ${dataDos.data.owner.id}');
      print('This is the Data(owner): ${dataDos.data.owner.permalink}');
      print('This is the Data(owner): ${dataDos.data.owner.photo}');
      print('This is the Data(owner): ${dataDos.data.owner.username}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.fullName}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.gravatarId}');
      print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.id}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.permalink}');
      print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.photo}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.username}');
      print('This is the Data(status): ${dataDos.data.status}');
      print('This is the Data(points): ${dataDos.data.points}');
      print('This is the Data(isClosed): ${dataDos.data.isClosed}');
      print('This is the Data(isBlocked): ${dataDos.data.isBlocked}');
      print('This is the Data(blockedNote): ${dataDos.data.blockedNote}');
      print('This is the Data(assignedUsers): ${dataDos.data.assignedUsers}');
      print('This is the Data(teamRequirement): ${dataDos.data.teamRequirement}');
      print('This is the Data(clientRequirement): ${dataDos.data.clientRequirement}');
      print('This is the Data(generatedFromIssue): ${dataDos.data.generatedFromIssue}');
    }
}

final body = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVYS5Q%3AQRcf2PJVngqhKK_7uVHikrU9J5a5ZbagioPNgI-O7i9xqGLgVj9MG4xL1EMLpfczvB_iOexWTqaJj2EG8gu-lA",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 1685619,
    "ref": 14,
    "tags": ["custom tag :d"],
    "type": {"id": 3547928, "name": "Bug", "color": "#E44057"},
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVYS5Q%3AQRcf2PJVngqhKK_7uVHikrU9J5a5ZbagioPNgI-O7i9xqGLgVj9MG4xL1EMLpfczvB_iOexWTqaJj2EG8gu-lA",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "status": {
      "id": 8259990,
      "name": "Por aprobarse",
      "slug": "por-aprobarse",
      "color": "#D38050",
      "is_closed": false
    },
    "project": {
      "id": 1179467,
      "name": "Esteban se la come",
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "logo_big_url": null
    },
    "subject": "New test",
    "due_date": "2023-11-30",
    "priority": {"id": 3541291, "name": "Poco importante", "color": "#A8E440"},
    "severity": {"id": 5894936, "name": "Minor", "color": "#40A8E4"},
    "watchers": [],
    "milestone": {
      "id": 369042,
      "name": "Sprint de prueba",
      "slug": "sprint-de-prueba-5",
      "owner": {
        "id": 541426,
        "photo":
            "https://media-protected.taiga.io/user/7/4/2/3/6c549347aaa99c4801b5ae35b4008c33b0c71757da6e0cd8892df9847df2/img_5742.jpg.80x80_q85_crop.jpg?token=ZVYS5Q%3AdjMKZz1wbCjBfQk7QZTe5xY5ls2S9WSYNg_Y2HhfAb9y4vBdiB-bcC7SzdyPBAOWp4m-vB5CToeDyNy0XIWzow",
        "username": "guillermobianchi1990",
        "full_name": "Guillermo Bianchi",
        "permalink": "https://tree.taiga.io/profile/guillermobianchi1990",
        "gravatar_id": "849500abaaa965cf9d55cc535d1e8352"
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
          "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/taskboard/sprint-de-prueba-5",
      "created_date": "2023-11-09T17:41:42.747Z",
      "disponibility": 0,
      "modified_date": "2023-11-09T17:41:42.759Z",
      "estimated_start": "2023-11-09",
      "estimated_finish": "2023-11-23"
    },
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/issue/14",
    "assigned_to": null,
    "description": "123414135",
    "promoted_to": [5287705],
    "created_date": "2023-11-15T16:09:57.739Z",
    "finished_date": null,
    "modified_date": "2023-11-16T13:02:29.770Z",
    "due_date_reason": "Bc of yes",
    "external_reference": null,
    "custom_attributes_values": {}
  },
  "date": "2023-11-16T13:02:29.838Z",
  "type": "issue",
  "action": "change",
  "change": {
    "diff": {
      "status": {"to": "Por aprobarse", "from": "Needs Info"}
    },
    "comment": "",
    "comment_html": "",
    "comment_versions": null,
    "edit_comment_date": null,
    "delete_comment_date": null
  }
};

final userStoryBody = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVYLbA%3AblHoVtLOlv1_mDflbY5fRd6MoPNq1HyYZJjjm1SRVteoqP6N_hYkSypd2SR2iXXogQiD-C_6pB8KBe7WgpEC7A",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 5271868,
    "ref": 9,
    "tags": ["creada por nidus"],
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVYLbA%3AblHoVtLOlv1_mDflbY5fRd6MoPNq1HyYZJjjm1SRVteoqP6N_hYkSypd2SR2iXXogQiD-C_6pB8KBe7WgpEC7A",
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
      "id": 7101916,
      "name": "Ilustrándose",
      "slug": "ilustrandose",
      "color": "#E47C40",
      "is_closed": false,
      "is_archived": false
    },
    "project": {
      "id": 1179467,
      "name": "Esteban se la come",
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "logo_big_url": null
    },
    "subject": "New Test after mapper :D",
    "due_date": null,
    "watchers": [],
    "is_closed": false,
    "milestone": null,
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/us/9",
    "tribe_gig": null,
    "is_blocked": false,
    "assigned_to": null,
    "description": "Test facherito lo mas cargado posible",
    "finish_date": null,
    "blocked_note": "",
    "created_date": "2023-11-13T15:10:42.666Z",
    "from_task_ref": null,
    "modified_date": "2023-11-16T12:11:20.622Z",
    "assigned_users": [588936],
    "due_date_reason": "",
    "team_requirement": false,
    "client_requirement": false,
    "external_reference": null,
    "generated_from_task": null,
    "generated_from_issue": 1684542,
    "custom_attributes_values": {}
  },
  "date": "2023-11-16T12:30:36.338Z",
  "type": "userstory",
  "action": "change",
  "change": {
    "diff": {
      "status": {"to": "Ilustrándose", "from": "Refinándose"}
    },
    "comment": "",
    "comment_html": "",
    "comment_versions": null,
    "edit_comment_date": null,
    "delete_comment_date": null
  }
};

import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
  final data = TaigaPayload.fromJson(body);
  if (data.action == "change") {
    print("Hubo un cambio");
    print('Comment:${data.change?.comment}');
    print('Comment:${data.change?.commentHtml}');
    print('DIFF:');
    if (data.change!.diff!.assignedTo != null) {
      print('assignedTo:${data.change?.diff?.assignedTo?.from}');
      print('assignedTo:${data.change?.diff?.assignedTo?.to}');
    }
    if (data.change!.diff!.attachments != null) {
      print('assignedTo:${data.change?.diff?.attachments}');
    }
    if (data.change!.diff!.blockedNoteDiff != null) {
      print('blockedNoteDiff:${data.change?.diff?.blockedNoteDiff?.from}');
      print('blockedNoteDiff:${data.change?.diff?.blockedNoteDiff?.to}');
    }
    if (data.change!.diff!.blockedNoteHtml != null) {
      print('blockedNoteHtml:${data.change?.diff?.blockedNoteHtml?.from}');
      print('blockedNoteHtml:${data.change?.diff?.blockedNoteHtml?.to}');
    }
    if (data.change!.diff!.clientRequirement != null) {
      print('clientRequirement:${data.change?.diff?.clientRequirement?.from}');
      print('clientRequirement:${data.change?.diff?.clientRequirement?.to}');
    }
    if (data.change!.diff!.descriptionDiff != null) {
      print('descriptionDiff:${data.change?.diff?.descriptionDiff}');
    }
    if (data.change!.diff!.dueDate != null) {
      print('dueDate:${data.change?.diff?.dueDate?.from}');
      print('dueDate:${data.change?.diff?.dueDate?.to}');
    }
    if (data.change!.diff!.finishDate != null) {
      print('finishDate:${data.change?.diff?.finishDate?.from}');
      print('finishDate:${data.change?.diff?.finishDate?.to}');
    }
    if (data.change!.diff!.isBlocked != null) {
      print('isBlocked:${data.change?.diff?.isBlocked?.from}');
      print('isBlocked:${data.change?.diff?.isBlocked?.to}');
    }
    if (data.change!.diff!.isClosed != null) {
      print('isClosed:${data.change?.diff?.isClosed?.from}');
      print('isClosed:${data.change?.diff?.isClosed?.to}');
    }
    if (data.change!.diff!.kanbanOrder != null) {
      print('kanbanOrder:${data.change?.diff?.kanbanOrder?.from}');
      print('kanbanOrder:${data.change?.diff?.kanbanOrder?.to}');
    }
    if (data.change!.diff!.milestone != null) {
      print('milestone:${data.change?.diff?.milestone?.from}');
      print('milestone:${data.change?.diff?.milestone?.to}');
    }
    if (data.change!.diff!.promotedTo != null) {
      print('promotedTo:${data.change?.diff?.promotedTo?.from}');
      print('promotedTo:${data.change?.diff?.promotedTo?.to}');
    }
    if (data.change!.diff!.status != null) {
      print('status:${data.change?.diff?.status?.from}');
      print('status:${data.change?.diff?.status?.to}');
    }
    if (data.change!.diff!.tags != null) {
      print('tags:${data.change?.diff?.tags?.from}');
      print('tags:${data.change?.diff?.tags?.to}');
    }
    if (data.change!.diff!.customAttributes != null) {
      print(
          'attributesNew:${data.change?.diff?.customAttributes?.attributesNew[0].value}');
      print(
          'attributesChanged:${data.change?.diff?.customAttributes?.attributesChanged}');
      print(
          'attributesDeleted:${data.change?.diff?.customAttributes?.attributesDeleted}');
    }
    if (data.change!.diff!.pmPoints != null) {
      print('pmPointsFrom:${data.change?.diff?.pmPoints?.from}');
      print('pmPointsTo:${data.change?.diff?.pmPoints?.to}');
    }
    if (data.change!.diff!.backPoints != null) {
      print('backPointsFrom:${data.change?.diff?.backPoints?.from}');
      print('backPointsTo:${data.change?.diff?.backPoints?.to}');
    }
    if (data.change!.diff!.frontPoints != null) {
      print('frontPointsFrom:${data.change?.diff?.frontPoints?.from}');
      print('frontPointsTo:${data.change?.diff?.frontPoints?.to}');
    }
    if (data.change!.diff!.designPoints != null) {
      print('designPointsFrom:${data.change?.diff?.designPoints?.from}');
      print('designPointsTo:${data.change?.diff?.designPoints?.to}');
    }
  }
  if (data.type == 'userstory') {
    TaigaUserStoryData printData = data.data as TaigaUserStoryData;
    // print('assignedUsers:${printData.assignedUsers}');
    // print('blockedNote:${printData.blockedNote}');
    // print('clientRequirement:${printData.clientRequirement}');
    // print('dueDate:${printData.dueDate}');
    // print('dueDateReason:${printData.dueDateReason}');
    // print('externalReference:${printData.externalReference}');
    // print('finishDate:${printData.finishDate}');
    // print('fromTaskRef:${printData.fromTaskRef}');
    // print('generatedFromIssue:${printData.generatedFromIssue}');
    // print('generatedFromTask:${printData.generatedFromTask}');
    // print('isBlocked:${printData.isBlocked}');
    // print('isClosed:${printData.isClosed}');
    // print('milestone:${printData.milestone}');
    // print('points:${printData.points}');
    // print('teamRequirement:${printData.teamRequirement}');
    // print('tribeGig:${printData.tribeGig}');
    // print('assignedTo:${printData.assignedTo}');
    // print('createdDate:${printData.createdDate}');
    // print('customAttributesValues:${printData.customAttributesValues?.bounty}');
    // print(
    //     'customAttributesValues:${printData.customAttributesValues?.figmaUrl}');
    // print('description:${printData.description}');
    // print('id:${printData.id}');
    // print('modifiedDate:${printData.modifiedDate}');
    // print('owner FullName:${printData.owner.fullName}');
    // print('permalink:${printData.permalink}');
    // print('project:${printData.project}');
    // print('ref:${printData.ref}');
    // print('status:${printData.status}');
    // print('subject:${printData.subject}');
    // print('tags:${printData.tags}');
    // print('watchers:${printData.watchers}');
    if (printData.points.isNotEmpty) {
      for (var element in printData.points) {
        print('data');
        print('Name:${element.name}');
        print('Role ${element.role}');
        print('Value: ${element.value}');
      }
    }
  }
}

final body = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVtexw%3AcRwPXZ96V-7WO-bZeN8nSvI0rJKyx_AbQwcIqcKdz9SQLz6Zvbwj6j-LALO8ym71EnMG5ItyTbd2NaGXlPdx2A",
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
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVtexw%3AcRwPXZ96V-7WO-bZeN8nSvI0rJKyx_AbQwcIqcKdz9SQLz6Zvbwj6j-LALO8ym71EnMG5ItyTbd2NaGXlPdx2A",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "points": [
      {"name": "?", "role": "Design", "value": null},
      {"name": "40", "role": "Front", "value": 40},
      {"name": "1/2", "role": "Back", "value": 0.5},
      {"name": "3", "role": "Project Manager", "value": 3}
    ],
    "status": {
      "id": 7101919,
      "name": "Lista",
      "slug": "lista",
      "color": "#A8E440",
      "is_closed": true,
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
    "is_closed": true,
    "milestone": null,
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/us/9",
    "tribe_gig": null,
    "is_blocked": false,
    "assigned_to": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVtexw%3AcRwPXZ96V-7WO-bZeN8nSvI0rJKyx_AbQwcIqcKdz9SQLz6Zvbwj6j-LALO8ym71EnMG5ItyTbd2NaGXlPdx2A",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "description": "Test facherito lo mas cargado posible",
    "finish_date": "2023-11-16T15:37:04.045Z",
    "blocked_note": "",
    "created_date": "2023-11-13T15:10:42.666Z",
    "from_task_ref": null,
    "modified_date": "2023-11-20T13:27:35.094Z",
    "assigned_users": [588936],
    "due_date_reason": "",
    "team_requirement": false,
    "client_requirement": false,
    "external_reference": null,
    "generated_from_task": null,
    "generated_from_issue": null,
    "custom_attributes_values": {}
  },
  "date": "2023-11-20T13:27:35.191Z",
  "type": "userstory",
  "action": "change",
  "change": {
    "diff": {
      "points": {
        "Design": {"to": "?", "from": "3"}
      }
    },
    "comment": "",
    "comment_html": "",
    "comment_versions": null,
    "edit_comment_date": null,
    "delete_comment_date": null
  }
};

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
    if (data.change!.diff!.points != null) {
      if (data.change?.diff?.points?.backPoints != null) {
        print('backPointsFrom:${data.change?.diff?.points?.backPoints?.from}');
        print('backPointsTo:${data.change?.diff?.points?.backPoints?.to}');
      }
      if (data.change?.diff?.points?.designPoints != null) {
        print(
            'designPointsFrom:${data.change?.diff?.points?.designPoints?.from}');
        print('designPointsTo:${data.change?.diff?.points?.designPoints?.to}');
      }
      if (data.change?.diff?.points?.frontPoints != null) {
        print(
            'frontPointsFrom:${data.change?.diff?.points?.frontPoints?.from}');
        print('frontPointsTo:${data.change?.diff?.points?.frontPoints?.to}');
      }
      if (data.change?.diff?.points?.pmPoints != null) {
        print('pmPointsFrom:${data.change?.diff?.points?.pmPoints?.from}');
        print('pmPointsTo:${data.change?.diff?.points?.pmPoints?.to}');
      }
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
        "https://media-protected.taiga.io/auser/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVyXEQ%3AZ_Jcvb3OpCc0h95cLB871lK0tD_i-_9lYBF5N2COp0YFeCanssk3j7gkXmhm0Iv_Sb6OtPVtBM3vaMSM9J3htw",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 1687388,
    "ref": 44,
    "tags": [],
    "type": {"id": 3547927, "name": "Enhancement", "color": "#40E4CE"},
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVyXEQ%3AZ_Jcvb3OpCc0h95cLB871lK0tD_i-_9lYBF5N2COp0YFeCanssk3j7gkXmhm0Iv_Sb6OtPVtBM3vaMSM9J3htw",
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
    "subject": "Void Description issue",
    "due_date": "2023-11-30",
    "priority": {"id": 3541292, "name": "Relevante", "color": "#E4CE40"},
    "severity": {"id": 5894934, "name": "N/A", "color": "#A9AABC"},
    "watchers": [],
    "milestone": {
      "id": 369042,
      "name": "Sprint de prueba",
      "slug": "sprint-de-prueba-5",
      "owner": {
        "id": 541426,
        "photo":
            "https://media-protected.taiga.io/user/7/4/2/3/6c549347aaa99c4801b5ae35b4008c33b0c71757da6e0cd8892df9847df2/img_5742.jpg.80x80_q85_crop.jpg?token=ZVyXEQ%3A5JggQM9_Yn94OWoyK57cDmkNApiFRCwM-aXDS5uUNrbwk106RmDQny7eAcOqH6Nv7lJOauMwmW7rnV6BUU4lyg",
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
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/issue/44",
    "assigned_to": null,
    "description": "",
    "promoted_to": [5299449],
    "created_date": "2023-11-20T14:38:40.251Z",
    "finished_date": null,
    "modified_date": "2023-11-21T11:40:01.595Z",
    "due_date_reason": "",
    "external_reference": null,
    "custom_attributes_values": {}
  },
  "date": "2023-11-21T11:40:01.653Z",
  "type": "issue",
  "action": "change",
  "change": {
    "diff": {
      "milestone": {"to": "Sprint de prueba", "from": null}
    },
    "comment": "",
    "comment_html": "",
    "comment_versions": null,
    "edit_comment_date": null,
    "delete_comment_date": null
  }
};

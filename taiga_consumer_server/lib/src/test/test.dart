import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
  //final data = TaigaIssue.fromJson(body);
  final data = TaigaPayload.fromJson(bodyUserStory);
  if (data.action == 'change') {
      print(':${data.change?.comment}');
      print(':${data.change?.commentHtml}');
      print('DIFF:');
      if (data.change!.diff!.assignedTo != null) {
        print('assignedTo:${data.change?.diff?.assignedTo?.from}');
        print('assignedTo:${data.change?.diff?.assignedTo?.from}');
      }
      if (data.change!.diff!.attachments != null) {
        print('assignedTo:${data.change?.diff?.attachments}');
      }
      if (data.change!.diff!.blockedNoteDiff!= null) {
        print('blockedNoteDiff:${data.change?.diff?.blockedNoteDiff?.from}');
        print('blockedNoteDiff:${data.change?.diff?.blockedNoteDiff?.to}');
      }
      if (data.change!.diff!.blockedNoteHtml != null) {
        print('blockedNoteHtml:${data.change?.diff?.blockedNoteHtml?.from}');
        print('blockedNoteHtml:${data.change?.diff?.blockedNoteHtml?.from}');
      }
      if (data.change!.diff!.clientRequirement != null) {
        print('clientRequirement:${data.change?.diff?.clientRequirement?.from}');
        print('clientRequirement:${data.change?.diff?.clientRequirement?.from}');
      }
      if (data.change!.diff!.descriptionDiff != null) {
        print('descriptionDiff:${data.change?.diff?.descriptionDiff}');
      }
      if (data.change!.diff!.dueDate != null) {
        print('dueDate:${data.change?.diff?.dueDate?.from}');
        print('dueDate:${data.change?.diff?.dueDate?.from}');
      }
      if (data.change!.diff!.finishDate != null) {
        print('finishDate:${data.change?.diff?.finishDate?.from}');
        print('finishDate:${data.change?.diff?.finishDate?.from}');
      }
      if (data.change!.diff!.isBlocked != null) {
        print('isBlocked:${data.change?.diff?.isBlocked?.from}');
        print('isBlocked:${data.change?.diff?.isBlocked?.from}');
      }
      if (data.change!.diff!.isClosed != null) {
        print('isClosed:${data.change?.diff?.isClosed?.from}');
        print('isClosed:${data.change?.diff?.isClosed?.from}');
      }
      if (data.change!.diff!.kanbanOrder != null) {
        print('kanbanOrder:${data.change?.diff?.kanbanOrder?.from}');
        print('kanbanOrder:${data.change?.diff?.kanbanOrder?.from}');
      }
      if (data.change!.diff!.milestone != null) {
        print('milestone:${data.change?.diff?.milestone?.from}');
        print('milestone:${data.change?.diff?.milestone?.from}');
      }
      if (data.change!.diff!.promotedTo != null) {
        print('promotedTo:${data.change?.diff?.promotedTo?.from}');
        print('promotedTo:${data.change?.diff?.promotedTo?.from}');
      }
      if (data.change!.diff!.status != null) {
        print('status:${data.change?.diff?.status?.from}');
        print('status:${data.change?.diff?.status?.from}');
      }
      if (data.change!.diff!.tags != null) {
        print('tags:${data.change?.diff?.tags?.from}');
        print('tags:${data.change?.diff?.tags?.from}');
      }
      if (data.change!.diff!.customAttributes != null) {
        print('attributesNew:${data.change?.diff?.customAttributes?.attributesNew}');
        print('attributesChanged:${data.change?.diff?.customAttributes?.attributesChanged}');
        print('attributesDeleted:${data.change?.diff?.customAttributes?.attributesDeleted}');
      }
    
    }
    if (data.type == 'userstory') {
      TaigaUserStoryData printData = data.data as TaigaUserStoryData;
      print('assignedUsers:${printData.assignedUsers}');
      print('blockedNote:${printData.blockedNote}');
      print('clientRequirement:${printData.clientRequirement}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('finishDate:${printData.finishDate}');
      print('fromTaskRef:${printData.fromTaskRef}');
      print('generatedFromIssue:${printData.generatedFromIssue}');
      print('generatedFromTask:${printData.generatedFromTask}');
      print('isBlocked:${printData.isBlocked}');
      print('isClosed:${printData.isClosed}');
      print('milestone:${printData.milestone}');
      print('points:${printData.points}');
      print('teamRequirement:${printData.teamRequirement}');
      print('tribeGig:${printData.tribeGig}');
      print('assignedTo:${printData.assignedTo}');
      print('createdDate:${printData.createdDate}');
      print('customAttributesValues:${printData.customAttributesValues}');
      print('description:${printData.description}');
      print('id:${printData.id}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner FullName:${printData.owner.fullName}');
      print('permalink:${printData.permalink}');
      print('project:${printData.project}');
      print('ref:${printData.ref}');
      print('status:${printData.status}');
      print('subject:${printData.subject}');
      print('tags:${printData.tags}');
      print('watchers:${printData.watchers}');
    }
    if (data.type == 'task') {
      TaigaTaskData printData = data.data as TaigaTaskData;
      print('blockedNote:${printData.blockedNote}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('isBlocked:${printData.isBlocked}');
      print('milestone:${printData.milestone}');
      print('assignedTo:${printData.assignedTo}');
      print('createdDate:${printData.createdDate}');
      print('customAttributesValues:${printData.customAttributesValues}');
      print('description:${printData.description}');
      print('id:${printData.id}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner FullName:${printData.owner.fullName}');
      print('permalink:${printData.permalink}');
      print('project:${printData.project}');
      print('ref:${printData.ref}');
      print('status:${printData.status}');
      print('subject:${printData.subject}');
      print('tags:${printData.tags}');
      print('watchers:${printData.watchers}');
      print('blockedNote:${printData.blockedNote}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('finishedDate:${printData.finishedDate}');
      print('isBlocked:${printData.isBlocked}');
      print('isIocaine:${printData.isIocaine}');
      print('milestone:${printData.milestone}');
      print('promotedTo:${printData.promotedTo}');
      print('taskboardOrder:${printData.taskboardOrder}');
      print('usOrder:${printData.usOrder}');
      print('userStory:${printData.userStory}');
    }
    if (data.type == 'issue') {
      TaigaIssueData printData = data.data as TaigaIssueData;
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('milestone:${printData.milestone}');
      print('assignedTo:${printData.assignedTo}');
      print('createdDate:${printData.createdDate}');
      print('customAttributesValues:${printData.customAttributesValues}');
      print('description:${printData.description}');
      print('id:${printData.id}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner FullName:${printData.owner.fullName}');
      print('permalink:${printData.permalink}');
      print('project:${printData.project}');
      print('ref:${printData.ref}');
      print('status:${printData.status}');
      print('subject:${printData.subject}');
      print('tags:${printData.tags}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('finishedDate:${printData.finishedDate}');
      print('milestone:${printData.milestone}');
      print('promotedTo:${printData.promotedTo}');
    }
    if (data.type == 'epic') {
      TaigaEpicData printData = data.data as TaigaEpicData;
      print('assignedTo:${printData.assignedTo}');
      print('createdDate:${printData.createdDate}');
      print('customAttributesValues:${printData.customAttributesValues}');
      print('description:${printData.description}');
      print('id:${printData.id}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner FullName:${printData.owner.fullName}');
      print('permalink:${printData.permalink}');
      print('project:${printData.project}');
      print('ref:${printData.ref}');
      print('status:${printData.status}');
      print('subject:${printData.subject}');
      print('tags:${printData.tags}');
      print('clientRequirement:${printData.clientRequirement}');
      print('color:${printData.color}');
      print('epicsOrder:${printData.epicsOrder}');
      print('teamRequirement:${printData.teamRequirement}');
    }
}

final bodyIssue = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVeRkw%3AOrKTcWdZU5a9NF0LCNNaRZPpJ1qmhaT5ig9F3JtwhAzvIsyr0nkjPtlWDkyt-FGkWFWunhPdrGwiG_dFyx_chQ",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 1686781,
    "ref": 33,
    "tags": [],
    "type": {"id": 3547927, "name": "Enhancement", "color": "#40E4CE"},
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVeRkw%3AOrKTcWdZU5a9NF0LCNNaRZPpJ1qmhaT5ig9F3JtwhAzvIsyr0nkjPtlWDkyt-FGkWFWunhPdrGwiG_dFyx_chQ",
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
    "subject": "Test void description",
    "due_date": null,
    "priority": {"id": 3541292, "name": "Relevante", "color": "#E4CE40"},
    "severity": {"id": 5894934, "name": "N/A", "color": "#A9AABC"},
    "watchers": [],
    "milestone": null,
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/issue/33",
    "assigned_to": null,
    "description": "",
    "promoted_to": [],
    "created_date": "2023-11-17T16:15:15.197Z",
    "finished_date": null,
    "modified_date": "2023-11-17T16:15:15.217Z",
    "due_date_reason": "",
    "external_reference": null,
    "custom_attributes_values": {}
  },
  "date": "2023-11-17T16:15:15.315Z",
  "type": "issue",
  "action": "create"
};

final bodyUserStory = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVtE5g%3A2u5yrzRV8YwUk3kDRawIBnqfzzyBYfMesNdEMbKQf4B2vJ4CsnLzpEFyL35v9cy4k9Iken-vy8b54DGcxS0fug",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 5291733,
    "ref": 30,
    "tags": ["new tag"],
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVtE5g%3A2u5yrzRV8YwUk3kDRawIBnqfzzyBYfMesNdEMbKQf4B2vJ4CsnLzpEFyL35v9cy4k9Iken-vy8b54DGcxS0fug",
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
      "id": 7101915,
      "name": "Refinándose",
      "slug": "refinandose",
      "color": "#E44057",
      "is_closed": false,
      "is_archived": false
    },
    "project": {
      "id": 1179467,
      "name": "Esteban se la come",
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "logo_big_url": null
    },
    "subject": "asd",
    "due_date": null,
    "watchers": [],
    "is_closed": false,
    "milestone": {
      "id": 369042,
      "name": "Sprint de prueba",
      "slug": "sprint-de-prueba-5",
      "owner": {
        "id": 541426,
        "photo":
            "https://media-protected.taiga.io/user/7/4/2/3/6c549347aaa99c4801b5ae35b4008c33b0c71757da6e0cd8892df9847df2/img_5742.jpg.80x80_q85_crop.jpg?token=ZVtE5g%3AQTKKW2iTCTagyMwtEPb2i62d3NmNbTZsdISW4V4dCHM4fcba-GrD17k63XYWidV0sJfvaSDStp_NyjyI4Twobw",
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
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/us/30",
    "tribe_gig": null,
    "is_blocked": false,
    "assigned_to": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVtE5g%3A2u5yrzRV8YwUk3kDRawIBnqfzzyBYfMesNdEMbKQf4B2vJ4CsnLzpEFyL35v9cy4k9Iken-vy8b54DGcxS0fug",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "description": "asdsadsadasd",
    "finish_date": null,
    "blocked_note": "",
    "created_date": "2023-11-17T13:34:09.759Z",
    "from_task_ref": "Task #29",
    "modified_date": "2023-11-20T11:35:36.118Z",
    "assigned_users": [588936],
    "due_date_reason": "",
    "team_requirement": false,
    "client_requirement": false,
    "external_reference": null,
    "generated_from_task": null,
    "generated_from_issue": null,
    "custom_attributes_values": {"Pestaña del Figma": "figma.com"}
  },
  "date": "2023-11-20T11:37:10.283Z",
  "type": "userstory",
  "action": "change",
  "change": {
    "diff": {
      "attachments": {
        "new": [
          {
            "id": 2040016,
            "url":
                "https://media-protected.taiga.io/attachments/0/1/a/2/98ecc79e44b3295915ccc36bbfd373695eaa46fb62021a80551a38734990/inscripcion-para-rendir-prog.pdf?token=ZVtE5g%3AM-S2UmjFRVAPfat-FukUmdRTZjDOskUpo8itKgrhOyvZmQ8UCaHptCASLxFyLr7RYNzmbErsTJw9BzGhdacghQ",
            "order": 0,
            "filename": "inscripcion-para-rendir-prog.pdf",
            "description": "",
            "attached_file":
                "attachments/0/1/a/2/98ecc79e44b3295915ccc36bbfd373695eaa46fb62021a80551a38734990/inscripcion-para-rendir-prog.pdf",
            "is_deprecated": false,
            "thumbnail_file": null
          },
          {
            "id": 2040017,
            "url":
                "https://media-protected.taiga.io/attachments/e/0/2/8/86f8137bd81338fd2be1ed28409fde07031320e7cf73d6c7fd2b9a234d33/inscripcion-para-rendir-arquitectura.pdf?token=ZVtE5g%3A5DqmuTVMLALgYOcbko22-VGwFFbaXwrT2q6-3Xk75YqlD1QBlPaaRUPaecvy5VRqkYulY0rNUBPsBdKdclLTtg",
            "order": 0,
            "filename": "inscripcion-para-rendir-arquitectura.pdf",
            "description": "",
            "attached_file":
                "attachments/e/0/2/8/86f8137bd81338fd2be1ed28409fde07031320e7cf73d6c7fd2b9a234d33/inscripcion-para-rendir-arquitectura.pdf",
            "is_deprecated": false,
            "thumbnail_file": null
          }
        ],
        "changed": [],
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

final bodyTask = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVY3YQ%3AjsiXvKwkh00YMGFaahPh3k0nfQ6AY88l_muTg4128C-GSpbRUDByp9ae40KYSqvc3gx7spdEGTr43wiWRBFqiA",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 5187169,
    "ref": 16,
    "tags": [],
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVY3YQ%3AjsiXvKwkh00YMGFaahPh3k0nfQ6AY88l_muTg4128C-GSpbRUDByp9ae40KYSqvc3gx7spdEGTr43wiWRBFqiA",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "status": {
      "id": 5890299,
      "name": "To-Do",
      "slug": "to-do",
      "color": "#F44057",
      "is_closed": false
    },
    "project": {
      "id": 1179467,
      "name": "Esteban se la come",
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "logo_big_url": null
    },
    "subject": "TEST",
    "due_date": null,
    "us_order": 1700149089320,
    "watchers": [],
    "milestone": {
      "id": 369042,
      "name": "Sprint de prueba",
      "slug": "sprint-de-prueba-5",
      "owner": {
        "id": 541426,
        "photo":
            "https://media-protected.taiga.io/user/7/4/2/3/6c549347aaa99c4801b5ae35b4008c33b0c71757da6e0cd8892df9847df2/img_5742.jpg.80x80_q85_crop.jpg?token=ZVY3YQ%3A5QVlDaC-XUtEKrgSXWwcgG7nXph4dpE_Ra6ciZ1ZokrTZaCWiXwnyQjzXiA-U6iKnM5iYjQKfwI-utwL45gBkA",
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
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/task/16",
    "is_blocked": false,
    "is_iocaine": false,
    "user_story": {
      "id": 5247286,
      "ref": 2,
      "tags": [],
      "owner": {
        "id": 541426,
        "photo":
            "https://media-protected.taiga.io/user/7/4/2/3/6c549347aaa99c4801b5ae35b4008c33b0c71757da6e0cd8892df9847df2/img_5742.jpg.80x80_q85_crop.jpg?token=ZVY3YQ%3A5QVlDaC-XUtEKrgSXWwcgG7nXph4dpE_Ra6ciZ1ZokrTZaCWiXwnyQjzXiA-U6iKnM5iYjQKfwI-utwL45gBkA",
        "username": "guillermobianchi1990",
        "full_name": "Guillermo Bianchi",
        "permalink": "https://tree.taiga.io/profile/guillermobianchi1990",
        "gravatar_id": "849500abaaa965cf9d55cc535d1e8352"
      },
      "points": [
        {"name": "?", "role": "Design", "value": null},
        {"name": "?", "role": "Front", "value": null},
        {"name": "?", "role": "Back", "value": null},
        {"name": "?", "role": "Project Manager", "value": null}
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
        "permalink":
            "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
        "logo_big_url": null
      },
      "subject": "Se me ocurrio una idea",
      "due_date": null,
      "watchers": [],
      "is_closed": false,
      "milestone": {
        "id": 369042,
        "name": "Sprint de prueba",
        "slug": "sprint-de-prueba-5",
        "owner": {
          "id": 541426,
          "photo":
              "https://media-protected.taiga.io/user/7/4/2/3/6c549347aaa99c4801b5ae35b4008c33b0c71757da6e0cd8892df9847df2/img_5742.jpg.80x80_q85_crop.jpg?token=ZVY3YQ%3A5QVlDaC-XUtEKrgSXWwcgG7nXph4dpE_Ra6ciZ1ZokrTZaCWiXwnyQjzXiA-U6iKnM5iYjQKfwI-utwL45gBkA",
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
          "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/us/2",
      "tribe_gig": null,
      "is_blocked": false,
      "assigned_to": null,
      "description": "efwfwf",
      "finish_date": null,
      "blocked_note": "",
      "created_date": "2023-11-09T17:39:43.407Z",
      "from_task_ref": null,
      "modified_date": "2023-11-09T17:39:43.407Z",
      "assigned_users": [],
      "due_date_reason": "",
      "team_requirement": false,
      "client_requirement": false,
      "external_reference": null,
      "generated_from_task": null,
      "generated_from_issue": 1683488,
      "custom_attributes_values": {}
    },
    "assigned_to": null,
    "description": "",
    "promoted_to": [],
    "blocked_note": "",
    "created_date": "2023-11-16T15:38:09.320Z",
    "finished_date": null,
    "modified_date": "2023-11-16T15:38:09.324Z",
    "due_date_reason": "",
    "taskboard_order": 1700149089320,
    "external_reference": null,
    "custom_attributes_values": {}
  },
  "date": "2023-11-16T15:38:09.440Z",
  "type": "task",
  "action": "create"
};

final bodyEpic = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVd_Iw%3AWDRwjLhXLkiA7dZZBI5ZxgZ8wOUNcz43EllBSxsKETEAfxtPZo53nyhVqN3cJrPyFOiVvTu2kNCDr0h4oMO0zg",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 212079,
    "ref": 18,
    "tags": ["test"],
    "color": "#5551D3",
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVd_Iw%3AWDRwjLhXLkiA7dZZBI5ZxgZ8wOUNcz43EllBSxsKETEAfxtPZo53nyhVqN3cJrPyFOiVvTu2kNCDr0h4oMO0zg",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "status": {
      "id": 5762040,
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
    "subject": "Testing EPICA",
    "watchers": [588936],
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/epic/18",
    "assigned_to": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVd_Iw%3AWDRwjLhXLkiA7dZZBI5ZxgZ8wOUNcz43EllBSxsKETEAfxtPZo53nyhVqN3cJrPyFOiVvTu2kNCDr0h4oMO0zg",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "description": "Edited Desc",
    "epics_order": 1700155283978,
    "created_date": "2023-11-16T17:21:23.995Z",
    "modified_date": "2023-11-17T14:56:35.027Z",
    "team_requirement": true,
    "client_requirement": true,
    "custom_attributes_values": {}
  },
  "date": "2023-11-17T14:56:35.071Z",
  "type": "epic",
  "action": "change",
  "change": {
    "diff": {
      "assigned_to": {"to": "Ignacio Cardozo", "from": "Esteban Ficetti"}
    },
    "comment": "",
    "comment_html": "",
    "comment_versions": null,
    "edit_comment_date": null,
    "delete_comment_date": null
  }
};

import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
  //final data = TaigaIssue.fromJson(body);
  final data = TaigaPayload.fromJson(bodyUserStory);
  print(data.data.customAttributesValues?.figmaUrl);
  print('attributesNew:${data.change?.diff?.customAttributesChange?.attributesNew}');
  print('attributesChanged:${data.change?.diff?.customAttributesChange?.attributesChanged[0].type}');
  print('attributesDeleted:${data.change?.diff?.customAttributesChange?.attributesDeleted}');
}

final bodyIssue = {
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

final bodyUserStory = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVeENw%3AZWKZaXITdxmXkDJ7wDvQMz8JTQgvJ_yCs7NhN7e2B9SvqagBrirGzEaHnmamL6R2Y7p2bnLETFJsxTNCy0XlJw",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 5287705,
    "ref": 15,
    "tags": ["custom tag :d"],
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVeENw%3AZWKZaXITdxmXkDJ7wDvQMz8JTQgvJ_yCs7NhN7e2B9SvqagBrirGzEaHnmamL6R2Y7p2bnLETFJsxTNCy0XlJw",
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
    "subject": "New test",
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
            "https://media-protected.taiga.io/user/7/4/2/3/6c549347aaa99c4801b5ae35b4008c33b0c71757da6e0cd8892df9847df2/img_5742.jpg.80x80_q85_crop.jpg?token=ZVeENw%3AbKp0-r2DSrF0txuDIDcNOgkrbiYRcrsZBxMoXPhloI8a3WV2Woofzt9tmdsP5_yFk-k58FD8SqB-75TqkKqz-g",
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
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/us/15",
    "tribe_gig": null,
    "is_blocked": false,
    "assigned_to": null,
    "description": "123414135",
    "finish_date": null,
    "blocked_note": "",
    "created_date": "2023-11-16T12:12:00.713Z",
    "from_task_ref": null,
    "modified_date": "2023-11-16T12:13:20.316Z",
    "assigned_users": [],
    "due_date_reason": "",
    "team_requirement": false,
    "client_requirement": false,
    "external_reference": null,
    "generated_from_task": null,
    "generated_from_issue": null,
    "custom_attributes_values": {"Pestaña del Figma": "asdsad2.com"}
  },
  "date": "2023-11-17T15:18:15.860Z",
  "type": "userstory",
  "action": "change",
  "change": {
    "diff": {
      "custom_attributes": {
        "new": [],
        "changed": [
          {
            "name": "Pestaña del Figma",
            "type": "url",
            "changes": {
              "value": ["asdsad.com", "asdsad2.com"]
            },
            "value_diff":
                "<span>asdsad</span><ins style=\"background:#e6ffe6;\">2</ins><span>.com</span>"
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

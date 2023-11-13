import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
  final data = TaigaPayload.fromJson(body);
    print('By Id: ${data.by.id}');
    print('Deleted By: ${data.by.fullName}');
    print('Date.id: ${data.data.id}');
    print('Date.ref: ${data.data.ref}');
    print('Date.createdDate: ${data.data.createdDate}');
    print('Date.permalink: ${data.data.permalink}');
    print('Date.ProjectName: ${data.data.project.name}');
    print('Date.TypeId: ${data.data.type.id}');
    print('Date.Type: ${data.data.type.color}');
    print('Date.TypeName: ${data.data.type.name}');
}

final body = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVJKGA%3A-UJGfkXUsGuUEQ1ruwOcVxRxCd6GK6aoqFzO3xLzIB3w2rSroWMhfZQVKqO6KoU9Aw5HtHB6xqRSTRolYWtHCQ",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 1683966,
    "ref": 7,
    "tags": [],
    "type": {"id": 3547927, "name": "Enhancement", "color": "#40E4CE"},
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZVJKGA%3A-UJGfkXUsGuUEQ1ruwOcVxRxCd6GK6aoqFzO3xLzIB3w2rSroWMhfZQVKqO6KoU9Aw5HtHB6xqRSTRolYWtHCQ",
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
    "subject": "Other type of Issue Test",
    "due_date": null,
    "priority": {"id": 3541292, "name": "Relevante", "color": "#E4CE40"},
    "severity": {"id": 5894934, "name": "N/A", "color": "#A9AABC"},
    "watchers": [588936],
    "milestone": {
      "id": 369042,
      "name": "Sprint de prueba",
      "slug": "sprint-de-prueba-5",
      "owner": {
        "id": 541426,
        "photo":
            "https://media-protected.taiga.io/user/7/4/2/3/6c549347aaa99c4801b5ae35b4008c33b0c71757da6e0cd8892df9847df2/img_5742.jpg.80x80_q85_crop.jpg?token=ZVJKGA%3AUsooJBgvOJ06rblJOBGYBTzsAVEEz1Hz5R7zdGHzO6xJ8j2WFExkYJ6Jha-AIC3p7R4iuvQwmT18udgjto3A3Q",
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
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/issue/7",
    "assigned_to": null,
    "description": "TEST",
    "promoted_to": [],
    "created_date": "2023-11-10T15:40:06.288Z",
    "finished_date": null,
    "modified_date": "2023-11-13T13:08:56.756Z",
    "due_date_reason": "",
    "external_reference": null,
    "custom_attributes_values": null
  },
  "date": "2023-11-13T16:08:56.702Z",
  "type": "issue",
  "action": "delete"
};

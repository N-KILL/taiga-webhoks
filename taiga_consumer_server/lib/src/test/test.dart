import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
  final data = TaigaPayload.fromJson(body);
  print(data.data.description);
}

final body = {
  "action": "change",
  "type": "issue",
  "by": {
    "id": 588936,
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZU4Tbw%3AsgTAzVGwjy38mfYd6p4IHu2g0l4rXUuzOfBFJ2UPzS8ox_6_4T_iCpkYQGgicQU8Repf4JHSEfD432MvFGW9aA",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "date": "2023-11-10T11:26:39.009Z",
  "data": {
    "custom_attributes_values": {},
    "id": 1683834,
    "ref": 6,
    "created_date": "2023-11-10T11:26:38.166Z",
    "modified_date": "2023-11-10T11:26:38.182Z",
    "finished_date": null,
    "due_date": null,
    "due_date_reason": "",
    "subject": "IssueTest",
    "external_reference": null,
    "watchers": [],
    "description":
        "Nidus Type: New\n\nAssigned: Ign\n\nType: ENCH\nSev: N/A\nPrio: 3\n\nAttachment: 1",
    "tags": [],
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/issue/6",
    "project": {
      "id": 1179467,
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "name": "Esteban se la come",
      "logo_big_url": null
    },
    "milestone": null,
    "owner": {
      "id": 588936,
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZU4Tbw%3AsgTAzVGwjy38mfYd6p4IHu2g0l4rXUuzOfBFJ2UPzS8ox_6_4T_iCpkYQGgicQU8Repf4JHSEfD432MvFGW9aA",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "assigned_to": {
      "id": 588936,
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZU4Tbw%3AsgTAzVGwjy38mfYd6p4IHu2g0l4rXUuzOfBFJ2UPzS8ox_6_4T_iCpkYQGgicQU8Repf4JHSEfD432MvFGW9aA",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "status": {
      "id": 8259988,
      "name": "New",
      "slug": "new",
      "color": "#70728F",
      "is_closed": false
    },
    "type": {"id": 3547927, "name": "Enhancement", "color": "#40E4CE"},
    "priority": {"id": 3541292, "name": "Relevante", "color": "#E4CE40"},
    "severity": {"id": 5894934, "name": "N/A", "color": "#A9AABC"},
    "promoted_to": []
  },
  "change": {
    "comment": "",
    "comment_html": "",
    "delete_comment_date": null,
    "comment_versions": null,
    "edit_comment_date": null,
    "diff": {
      "attachments": {
        "new": [
          {
            "id": 2027933,
            "filename": "test.png",
            "url":
                "https://media-protected.taiga.io/attachments/5/b/c/d/9d7d171d4797e33f7a89cf429cfe64e4e184ccccd28fe128c39864b6cc93/test.png?token=ZU4Tbg%3AVP8M9elZ331n2ogp-MB6YH2hOwEm9x5kghvcX8JhMNRfr2whCrLUXRJpFofM20ASqC5ID2brps3ZbivS-4V5kA",
            "attached_file":
                "attachments/5/b/c/d/9d7d171d4797e33f7a89cf429cfe64e4e184ccccd28fe128c39864b6cc93/test.png",
            "thumbnail_file":
                "attachments/5/b/c/d/9d7d171d4797e33f7a89cf429cfe64e4e184ccccd28fe128c39864b6cc93/test.png.640x0_q85_crop.jpg",
            "is_deprecated": false,
            "description": "",
            "order": 0
          }
        ],
        "changed": [],
        "deleted": []
      }
    }
  }
};

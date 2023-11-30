import 'dart:convert';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';

void main() {
  final jsonData = jsonEncode(body);
  final data = gitLabWebhookMapper(jsonPayload: jsonData);
  if (data.runtimeType == GitLabIssuePayload) {
    final payload = data as GitLabIssuePayload;
    print('Payload eventType: ${payload.eventType}');
    print('Payload labels: ${payload.labels}');
    print('Payload performer: ${payload.performer}');
    print('Payload projectDetails: ${payload.projectDetails}');
    print('Payload Changes: ${payload.changes}');
    print('Payload relatedRepository: ${payload.relatedRepository}');
    print('Payload objectAttributes: ${payload.issueDetails}');
  }
  if (data.runtimeType == GitLabPayload) {
    final payload = data as GitLabPayload;
    print('Payload: $payload');
    for (var element in payload.commitsDetails) {
      print('new commit from: ${element.author}');
      print('in the project: ${payload.projectDetails.name}');
      print('commit details $element');
    }
  }
}

final body = {
  "object_kind": "issue",
  "event_type": "issue",
  "user": {
    "id": 14547350,
    "name": "Ignacio Cardozo",
    "username": "N-K",
    "avatar_url":
        "https://secure.gravatar.com/avatar/005e3a2b3189b2cf458c99f163ceb38d?s=80&d=identicon",
    "email": "[REDACTED]"
  },
  "project": {
    "id": 51929660,
    "name": "Testing CI-CD",
    "description": null,
    "web_url": "https://gitlab.com/N-K/testing-ci-cd",
    "avatar_url": null,
    "git_ssh_url": "git@gitlab.com:N-K/testing-ci-cd.git",
    "git_http_url": "https://gitlab.com/N-K/testing-ci-cd.git",
    "namespace": "Ignacio Cardozo",
    "visibility_level": 0,
    "path_with_namespace": "N-K/testing-ci-cd",
    "default_branch": "main",
    "ci_config_path": "",
    "homepage": "https://gitlab.com/N-K/testing-ci-cd",
    "url": "git@gitlab.com:N-K/testing-ci-cd.git",
    "ssh_url": "git@gitlab.com:N-K/testing-ci-cd.git",
    "http_url": "https://gitlab.com/N-K/testing-ci-cd.git"
  },
  "object_attributes": {
    "author_id": 14547350,
    "closed_at": null,
    "confidential": false,
    "created_at": "2023-11-29 11:37:09 UTC",
    "description": "Eddited description to see how it works",
    "discussion_locked": false,
    "due_date": "2023-11-30",
    "id": 138793177,
    "iid": 3,
    "last_edited_at": "2023-11-29 12:50:19 UTC",
    "last_edited_by_id": 14547350,
    "milestone_id": null,
    "moved_to_id": null,
    "duplicated_to_id": null,
    "project_id": 51929660,
    "relative_position": 513,
    "state_id": 1,
    "time_estimate": 18000,
    "title": "Testing Issue",
    "updated_at": "2023-11-29 15:11:29 UTC",
    "updated_by_id": 14547350,
    "weight": null,
    "health_status": null,
    "url": "https://gitlab.com/N-K/testing-ci-cd/-/issues/3",
    "total_time_spent": 0,
    "time_change": 0,
    "human_total_time_spent": null,
    "human_time_change": null,
    "human_time_estimate": "5h",
    "assignee_ids": [],
    "assignee_id": null,
    "labels": [
      {
        "id": 33594553,
        "title": "Test",
        "color": "#c21e56",
        "project_id": 51929660,
        "created_at": "2023-11-29 12:05:16 UTC",
        "updated_at": "2023-11-29 12:05:16 UTC",
        "template": false,
        "description": null,
        "type": "ProjectLabel",
        "group_id": null,
        "lock_on_merge": false
      }
    ],
    "state": "opened",
    "severity": "unknown",
    "customer_relations_contacts": [],
    "action": "update"
  },
  "labels": [
    {
      "id": 33594553,
      "title": "Test",
      "color": "#c21e56",
      "project_id": 51929660,
      "created_at": "2023-11-29 12:05:16 UTC",
      "updated_at": "2023-11-29 12:05:16 UTC",
      "template": false,
      "description": null,
      "type": "ProjectLabel",
      "group_id": null,
      "lock_on_merge": false
    }
  ],
  "changes": {
    "time_estimate": {"previous": 0, "current": 18000},
    "updated_at": {
      "previous": "2023-11-29 13:38:36 UTC",
      "current": "2023-11-29 15:11:29 UTC"
    }
  },
  "repository": {
    "name": "Testing CI-CD",
    "url": "git@gitlab.com:N-K/testing-ci-cd.git",
    "description": null,
    "homepage": "https://gitlab.com/N-K/testing-ci-cd"
  }
};

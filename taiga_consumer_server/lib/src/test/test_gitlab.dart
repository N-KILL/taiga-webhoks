import 'dart:convert';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';

void main() {
  final jsonData = jsonEncode(body);
  final data = gitLabWebhookMapper(jsonPayload: jsonData);
  if (data.runtimeType == GitLabIssuePayload) {
    final payload = data as GitLabIssuePayload;
    print('Payload: $payload');
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
    "closed_at": "2023-11-29T13:18:53.024Z",
    "confidential": false,
    "created_at": "2023-11-29T13:18:39.836Z",
    "description": "",
    "discussion_locked": null,
    "due_date": null,
    "id": 138793355,
    "iid": 4,
    "last_edited_at": null,
    "last_edited_by_id": null,
    "milestone_id": null,
    "moved_to_id": null,
    "duplicated_to_id": null,
    "project_id": 51929660,
    "relative_position": 1026,
    "state_id": 2,
    "time_estimate": 18000,
    "title": "test 2",
    "updated_at": "2023-11-29T13:28:50.570Z",
    "updated_by_id": 14547350,
    "weight": null,
    "health_status": null,
    "url": "https://gitlab.com/N-K/testing-ci-cd/-/issues/4",
    "total_time_spent": 0,
    "time_change": 0,
    "human_total_time_spent": null,
    "human_time_change": null,
    "human_time_estimate": "5h",
    "assignee_ids": [],
    "assignee_id": null,
    "labels": [],
    "state": "closed",
    "severity": "unknown",
    "customer_relations_contacts": []
  },
  "labels": [],
  "changes": {},
  "repository": {
    "name": "Testing CI-CD",
    "url": "git@gitlab.com:N-K/testing-ci-cd.git",
    "description": null,
    "homepage": "https://gitlab.com/N-K/testing-ci-cd"
  }
};

import 'dart:convert';

import 'package:gitlab_rest_models/src/models/gitlab_payload.dart';
import 'package:gitlab_rest_models/src/models/issue/gitlab_issue.dart';

/// This dynamic function will read the JSON payload that came from GitLab and
/// will map it into an object based on his type
dynamic gitLabWebhookMapper({
  required String jsonPayload,
}) {
  // Convert the json into an object type: Map<String, dynamic>
  final parsedJson =
      json.decode(jsonPayload) as Map<String, dynamic>;

  // Read the value of object_kind (Used on GitLab payload)
  final objectKind = parsedJson['object_kind'] as String;
  if (objectKind == 'issue') {
    return GitLabIssuePayload.fromJson(jsonPayload);
  } else if (objectKind == 'push') {
    return GitLabPayload.fromJson(jsonPayload);
  } else {
    // TODO(Nacho): Create all the types
    return null;
  }
}

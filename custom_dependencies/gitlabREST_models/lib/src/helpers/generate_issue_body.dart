import 'package:gitlab_rest_models/gitlab_rest_models.dart';

/// This function [generateBody] is for generating the body of the request when
/// you try to update an `issue` on `gitlab`, because when you try to send the
/// body with premium features as null, and you have not premium this will
/// break, so when you put the `premium` [bool] on `true`, the body can receive
/// the premium vars: `epic_id` and `epic_iid`. If its `false`, the body will
/// not have that vars.
Map<String, dynamic> generateBody({
  required IssueAPIRequestModel body,
  required bool premium,
}) {
  if (premium) {
    final sendBody = {
      'add_labels': body.issueLabelsToAdd,
      'assignee_ids': body.assignedToId,
      'confidential': body.isConfidential,
      'description': body.description,
      'discussion_locked': body.discussionStatus,
      'due_date': body.dueDate,
      'epic_id': body.epicId,
      'epic_iid': body.epicInternalId,
      'id': body.issueId,
      'issue_iid': body.issueInternalId,
      'issue_type': body.issueType,
      'labels': body.issueLabels,
      'milestone_id': body.milestoneId,
      'remove_labels': body.issueLabelsToRemove,
      'state_event': body.stateEvent,
      'title': body.issueTitle,
      'updated_at': DateTime.now().toString(),
      'weight ': body.weight,
    };
    
    return sendBody;
  } else {
    final sendBody = {
      'add_labels': body.issueLabelsToAdd,
      'assignee_ids': body.assignedToId,
      'confidential': body.isConfidential,
      'description': body.description,
      'discussion_locked': body.discussionStatus,
      'due_date': body.dueDate,
      'id': body.issueId,
      'issue_iid': body.issueInternalId,
      'issue_type': body.issueType,
      'labels': body.issueLabels,
      'milestone_id': body.milestoneId,
      'remove_labels': body.issueLabelsToRemove,
      'state_event': body.stateEvent,
      'title': body.issueTitle,
      'updated_at': DateTime.now().toString(),
      'weight ': body.weight,
    };

    return sendBody;
  }
}

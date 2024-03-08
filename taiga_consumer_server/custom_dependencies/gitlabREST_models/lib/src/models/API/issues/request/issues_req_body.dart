import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/models/API/issues/issue_types.dart';

part 'issues_req_body.mapper.dart';

/// This [IssueAPIRequestModel] Class, is created to be used on the `API` as a
/// Body of the request, when you try to create or modify an `issue` of `GitLab`
/// with this, all the data is nullable, but when you try to `create` an 
/// `issue` you have to put at least the [issueTitle] on the object.
/// For more information about `GitLab API` related to `Issues`:
/// https://docs.gitlab.com/ee/api/issues.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class IssueAPIRequestModel with IssueAPIRequestModelMappable {
  /// Constructor
  IssueAPIRequestModel({
    this.issueTitle,
    this.description,
    this.assignedToId,
    this.assignedToIds,
    this.isConfidential,
    this.discussionToResolve,
    this.createdAt,
    this.dueDate,
    this.epicId,
    this.epicInternalId,
    this.issueId,
    this.issueInternalId,
    this.issueType = IssueTypes.issue,
    this.issueLabels,
    this.mergeRequestInternalId,
    this.milestoneId,
    this.issueLabelsToAdd,
    this.issueLabelsToRemove,
    this.weight,
    this.discussionStatus,
    this.stateEvent,
  });

  /// The title of an issue.
  String? issueTitle;

  /// The description of an issue. Limited to 1,048,576 characters.
  String? description;

  /// The ID of the user to assign the issue to. Only appears on `GitLab` Free.
  /// Use value: 0 if you want to remove all the assigned users when modifying.
  int? assignedToId;

  /// The IDs of the users to assign the issue to.<br>
  /// `Premium Feature`.
  List<int>? assignedToIds;

  /// Set an issue to be confidential. Default is `false`.
  bool? isConfidential;

  /// The ID of a discussion to resolve. This fills out the issue with a default
  /// description and mark the discussion as resolved. Use in combination with
  /// [mergeRequestInternalId].
  String? discussionToResolve;

  /// Flag indicating if the issue’s discussion is locked. If the discussion
  /// is locked only project members can add or edit comments.
  String? discussionStatus;

  /// When the issue was created. Date time string, `ISO 8601` formatted, for
  /// example 2016-03-11T03:45:40Z. Requires `administrator` or `project`/`group`
  /// `owner` rights.
  String? createdAt;

  /// When the issue was updated. Date time string, ISO 8601 formatted, for
  /// example 2016-03-11T03:45:40Z (requires `administrator` or `project owner`
  /// rights). Empty string or null values are not accepted.
  String? updatedAt;

  /// The state event of an issue. Set close to close the issue and reopen to
  /// reopen it
  String? stateEvent;

  /// The due date. Date time string in the format `YYYY-MM-DD`, for example:
  /// `2016-03-11`.
  String? dueDate;

  /// ID of the epic to add the issue to. Valid values are greater than or equal
  /// to 0.<br>
  /// `Premium Feature`.
  int? epicId;

  /// IID of the epic to add the issue to. Valid values are greater than or
  /// equal to 0. (deprecated, scheduled for removal in API version 5)<br>
  /// `Premium Feature`.
  int? epicInternalId;

  /// The global ID or URL-encoded path of the project owned by the
  /// authenticated user.
  String? issueId;

  /// The internal ID of the project’s issue (requires `administrator` or
  /// `project owner` rights).
  String? issueInternalId;
  
  /// [IssueTypes] instance.
  /// The type of issue. One of `issue`, `incident`, or `test_case`.
  /// Default is issue.
  IssueTypes? issueType;

  /// Comma-separated label names for an issue.
  List<String>? issueLabels;

  /// Comma-separated label names to remove from an issue. <br>
  /// `modifyGitLabIssue` METHOD ONLY.
  List<String>? issueLabelsToAdd;

  /// Comma-separated label names to remove from an issue. <br>
  /// `modifyGitLabIssue` METHOD ONLY.
  List<String>? issueLabelsToRemove;

  /// The IID of a merge request in which to resolve all issues. This fills out
  /// the issue with a default description and mark all discussions as resolved.
  /// When passing a description or title, these values take precedence over the
  /// default values.
  int? mergeRequestInternalId;

  /// The global ID of a milestone to assign issue. To find the milestone_id
  /// associated with a milestone, view an issue with the milestone assigned
  /// and use the API to retrieve the issue’s details.
  int? milestoneId;

  /// The weight of the issue. Valid values are greater than or equal to 0. <br>
  /// `Premium Feature`
  int? weight;
}

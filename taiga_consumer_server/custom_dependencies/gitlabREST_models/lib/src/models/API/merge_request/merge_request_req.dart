import 'package:dart_mappable/dart_mappable.dart';

part 'merge_request_req.mapper.dart';

/// This [MergeReqRequestAPIModel] Class, is created to be used on the `API` as
/// a Body of the request, with this model, you can interact with any `Merge
/// Request` from your `gitLab` project. <br>
/// For more information about `GitLab API` related to `Merge Request`:
/// https://docs.gitlab.com/ee/api/merge_requests.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class MergeReqRequestAPIModel with MergeReqRequestAPIModelMappable {
  /// Constructor
  MergeReqRequestAPIModel({
    required this.sourceBranch,
    required this.targetBranch,
    this.title,
    this.allowCollaboration,
    this.approvalsBeforeMerge,
    this.allowMaintainerToPush,
    this.assigneeId,
    this.assigneeIds,
    this.description,
    this.labels,
    this.milestoneId,
    this.removeSourceBranch,
    this.reviewerIds,
    this.squash,
    this.targetProjectId,
  });

  /// The source branch of the merge request.
  String sourceBranch;

  /// The target branch of the merge request.
  String targetBranch;

  /// Title of the merge request
  String? title;

  /// Allow commits from members who can merge to the target branch.
  bool? allowCollaboration;

  /// Number of approvals required before this can be merged (see below).
  /// To configure approval rules, see Merge request approvals API.
  /// Deprecated in GitLab 16.0.
  int? approvalsBeforeMerge;

  /// Alias of `allow_collaboration`.
  bool? allowMaintainerToPush;

  /// Assignee user ID.
  int? assigneeId;

  /// The ID of the users to assign the merge request to. Set to 0 or provide
  /// an empty value to unassign all assignees on the `API`.
  List<int>? assigneeIds;

  /// Description of the merge request. Limited to 1,048,576 characters.
  String? description;

  /// Labels for the merge request, as a comma-separated list.
  List<String>? labels;

  /// The global ID of a milestone.
  int? milestoneId;

  /// Flag indicating if a merge request should remove the source branch when
  /// merging.
  bool? removeSourceBranch;

  /// The ID of the users added as a reviewer to the merge request. If set to 0
  /// or left empty, no reviewers are added. Introduced in GitLab 13.8.
  List<int>? reviewerIds;

  /// Indicates if the merge request is set to be squashed when merged. Project
  /// settings may override this value.
  bool? squash;

  /// Numeric ID of the target project.
  int? targetProjectId;
}

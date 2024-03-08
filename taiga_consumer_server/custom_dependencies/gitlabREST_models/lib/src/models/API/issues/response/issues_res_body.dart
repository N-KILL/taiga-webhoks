import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/models/API/issues/issue_states.dart';
import 'package:gitlab_rest_models/src/models/API/issues/issue_types.dart';
import 'package:gitlab_rest_models/src/models/API/links/links.dart';
import 'package:gitlab_rest_models/src/models/API/milestone/milestone.dart';
import 'package:gitlab_rest_models/src/models/API/references/references.dart';
import 'package:gitlab_rest_models/src/models/API/task_status/task_status.dart';
import 'package:gitlab_rest_models/src/models/API/time_stats/time_stats.dart';
import 'package:gitlab_rest_models/src/models/API/user/user.dart';

part 'issues_res_body.mapper.dart';

/// This [IssueAPIResponseModel] Class, is created to map a `GitLab API`
/// response when you do a `GET` method into the `issues` url.
/// For more information about `GitLab API` related to `Issues`:
/// https://docs.gitlab.com/ee/api/issues.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class IssueAPIResponseModel with IssueAPIResponseModelMappable {
  ///
  IssueAPIResponseModel({
    required this.id,
    required this.internalId,
    required this.relatedProjectId,
    required this.name,
    required this.description,
    required this.issueState,
    required this.createdAtDate,
    required this.updatedAtDate,
    required this.closedAtDate,
    required this.closedByUser,
    required this.labels,
    required this.relatedMilestone,
    required this.userAssignees,
    required this.assignedUser,
    required this.authorUser,
    required this.userNotesCount,
    required this.mergeRequestsCount,
    required this.issueUpVotes,
    required this.issueDownVotes,
    required this.dueDate,
    required this.confidentialStatus,
    required this.discussionLockedStatus,
    required this.issueType,
    required this.issueUrl,
    required this.timeStats,
    required this.taskCompletionStatus,
    required this.blockingIssuesCount,
    required this.hasTasksStatus,
    required this.taskStatus,
    required this.links,
    required this.referenceWays,
    required this.severity,
    required this.subscribed,
    required this.movedToId,
    required this.serviceDeskReplyTo,
  });

  /// `id` its the identifier of the issue on `GitLab`. <br>
  /// its better use the [internalId], because this one its for inside the
  /// project.
  int id;

  /// `internalId` its identifier of the issue on a `GitLab Project`. Only works
  /// for inside of your project
  @MappableField(key: 'iid')
  int internalId;

  /// `projectId` its the id of the project on `GitLab`.
  @MappableField(key: 'project_id')
  int relatedProjectId;

  /// `name` its the name given to the `issue`.
  @MappableField(key: 'title')
  String name;

  /// `description` its the description given to the `issue`.
  String? description;

  /// `state` its the state of the issue, can be `opened`, `closed`.
  @MappableField(key: 'state')
  IssueStates issueState;

  /// `createdAtDate` its the date of creation of the `issue`.
  @MappableField(key: 'created_at')
  DateTime createdAtDate;

  /// `updatedAtDate` its the date of the last modification the `issue` received
  @MappableField(key: 'updated_at')
  DateTime updatedAtDate;

  /// `closedAtDate` its the date when the `issue` was marked as closed.
  @MappableField(key: 'created_at')
  DateTime? closedAtDate;

  /// [UserAPI] instance. <br>
  /// `closedByUser` its the user who set the closed status in the issue.
  @MappableField(key: 'closed_by')
  UserAPI? closedByUser;

  /// `labels` Are the list of the labels/tags of the `issue`.
  List<String> labels;

  /// [MilestoneAPI] instance. <br>
  /// `relatedMilestone` Its the `milestone`/`sprint` related to the `issue`.
  @MappableField(key: 'milestone')
  MilestoneAPI? relatedMilestone;

  /// `userAssignees` Its the list of `users` assigned to the `issue` on
  /// `GitLab`.
  @MappableField(key: 'assignees')
  List<UserAPI> userAssignees;

  /// `assignedUser` Its the `user` assigned to the `issue` on `GitLab`.
  @MappableField(key: 'assignee')
  UserAPI? assignedUser;

  /// `author` its the `user` who create the `issue` on `GitLab`.
  @MappableField(key: 'author')
  UserAPI authorUser;

  /// `userNotesCount` It is used in GitLab to track the number of notes or
  /// comments that a specific user has made on an issue or merge request.
  int userNotesCount;

  /// It is used in GitLab to track the number of merge requests associated with
  /// a specific issue or a project in general.
  int mergeRequestsCount;

  /// `issueUpVotes` refers to the count of positive votes that a specific issue
  /// has received from users.
  @MappableField(key: 'upvotes')
  int issueUpVotes;

  /// `issueUpVotes` refers to the count of negative votes that a specific issue
  /// has received from users.
  @MappableField(key: 'downvotes')
  int issueDownVotes;

  /// `dueDate` its the date when the issue will be marked as expired. Can be
  /// `null` if its not assigned on the issue.
  DateTime? dueDate;

  /// `confidential` refers to a property of issues or merge requests that
  /// indicates whether information related to that item should be treated as
  /// confidential or not.
  @MappableField(key: 'confidential')
  bool confidentialStatus;

  /// `discussionLockedStatus` is used in GitLab to restrict the ability to add
  /// additional comments or notes to an issue or merge request.
  @MappableField(key: 'discussion_locked')
  bool? discussionLockedStatus;

  /// [IssueTypes] instance.
  /// `issueType` Filter to a given type of issue. One of issue, incident, or
  /// test_case. (Introduced in GitLab 13.12)
  IssueTypes issueType;

  /// `issueUrl` its the url link to the issue related to this object.
  @MappableField(key: 'web_url')
  String issueUrl;

  /// [TimeStats] instance.
  /// `timeStats` its used for storage information about the estimated time, the
  /// and time spend on this issue.
  TimeStats timeStats;

  /// [TaskCompletionStatus] instance.
  /// `taskCompletionStatus` is used to storage information about the task
  /// related to this `issue`, have two values, count which is the amount of
  /// task the issue have, and completed, which is the amount of completed task
  TaskCompletionStatus taskCompletionStatus;

  /// `blockingIssuesCount` refers to the count of issues that are blocking or
  /// preventing the progress of a specific issue in GitLab.
  int blockingIssuesCount;

  /// `hasTasks` its a bool indicating if the issue have task on it, or not.
  @MappableField(key: 'has_tasks')
  bool hasTasksStatus;

  /// `taskStatus` its a string who says how many task has been completed. <br>
  /// example: <br>
  /// "10 of 15 tasks completed"
  String taskStatus;

  /// [LinksAPI] instance.
  /// `links` its used to give all the links related to this issue.
  @MappableField(key: '_links')
  LinksAPI links;

  /// [ReferencesAPI] instance.
  /// `references` its used to show the different way you can refer this issue
  @MappableField(key: 'references')
  ReferencesAPI referenceWays;

  /// `severity` its the grade of the issue on the project.
  String severity;

  /// `subscribed` its a bool indicated the subscribed status. Used to receive
  /// notification from GitLab when a change was committed on the issue.
  bool subscribed;

  /// `movedToId` if used when the issue is moved to another project. This will
  /// store this new id of the `duplicated issue`.
  int? movedToId;

  /// `serviceDeskReplyTo` its the email who receive the information of the
  /// service desk service, for more info about how this works: <br>
  /// https://docs.gitlab.com/ee/user/project/service_desk/
  String? serviceDeskReplyTo;

  /// FromJson method, convert a json type object into this
  /// [IssueAPIResponseModel] Object
  static const fromJson = IssueAPIResponseModelMapper.fromJson;
}

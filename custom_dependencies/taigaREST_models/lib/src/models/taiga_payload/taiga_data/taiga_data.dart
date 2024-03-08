import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_details/data_details.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_point/data_point.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_project/taiga_project.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_sprint/data_sprint.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_status/taiga_status.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_user/taiga_user.dart';

part 'taiga_data.mapper.dart';

/// This `TaigaData` class will storage all the important data of the Payload of
/// `Taiga` which contains all the common data between all the `jobTypes`. <br>
/// <h4> Important </h4>
/// This "TaigaData" class do not contemplate the values of "TribeGig" and
/// "External Reference" from the Taiga payload.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaData with TaigaDataMappable {
  /// Constructor of the class TaigaData
  TaigaData({
    required this.jobId,
    required this.referenceNumber,
    required this.jobTags,
    required this.jobOwner,
    required this.jobStatus,
    required this.fromProject,
    required this.jobName,
    required this.jobWatchers,
    required this.jobPermalink,
    required this.userAssigned,
    required this.jobDescription,
    required this.creationDate,
    required this.modifiedDate,
    required this.customValues,
  });

  /// `jobId:` Is the ID of the job related on `Taiga`
  @MappableField(key: 'id')
  int jobId;

  /// `referenceNumber:` Is the number of which is given to any job on `Taiga`
  @MappableField(key: 'ref')
  int referenceNumber;

  /// `jobDescription:` Is the description used on `Taiga` for the job, can came
  /// as a `null` value if the job has no description on it
  @MappableField(key: 'description')
  String? jobDescription;

  /// `jobTags:` This are all the tags added on the job, if the job have no tags
  /// , came as an empty list from `Taiga`.
  @MappableField(key: 'tags')
  List<String>? jobTags;

  ///[TaigaUser] instance. <br>
  /// `jobOwner:` Is the Owner of the Job, it will be an instance of `user`,
  /// and is the person who create the job on the `Taiga` project.
  @MappableField(key: 'owner')
  TaigaUser jobOwner;

  ///[TaigaStatus] instance. <br>
  /// `jobStatus:` Is the status of the Job, this is a custom state you can put
  /// to your jobs, have his own `id`, `name`, `color` and a boolean value for
  /// the `is_closed` state. <br>
  @MappableField(key: 'status')
  TaigaStatus jobStatus;

  ///[TaigaProject] instance. <br>
  /// `fromProject:` This is information of the project related to the payload.
  @MappableField(key: 'project')
  TaigaProject fromProject;

  /// `jobName:` Is the name of the Job used on Taiga to identify itself. This
  /// value is created by the `jobOwner`.
  @MappableField(key: 'subject')
  String jobName;

  /// `jobWatchers:` Is a list with the `ids` of the people who is marked as
  /// watchers on a Job in `Taiga`.
  @MappableField(key: 'watchers')
  List<int> jobWatchers;

  /// `jobPermalink:` Its a permanent link to the Job related on `Taiga`.
  @MappableField(key: 'permalink')
  String jobPermalink;

  /// `userAssigned:` Is the person assigned to a task, can be a `null` value
  /// if no one is assigned to it. <br>
  /// If is not a null value, it will be an instance of [TaigaUser]
  @MappableField(key: 'assigned_to')
  TaigaUser? userAssigned;

  /// `creationDate:` Its the date of creation of the Job related in this
  /// payload.
  @MappableField(key: 'created_date')
  DateTime creationDate;

  /// `modifiedDate:` Its the date of the last modification, can be a `null`
  /// value if the job related to this payload never has received a
  /// modification.
  @MappableField(key: 'modified_date')
  DateTime? modifiedDate;

  // TODO(ANY): Create a mapper to grab this data

  /// `customValues:` Is the custom fields you add on `Taiga`, by now, its a 
  /// [Map] because the fields are created by the owner of the `Taiga` project, 
  /// so i can't read it with a normal mapper with the values of my project.<br>
  /// If you want to know more about `Custom fields` on `Taiga`: <br>
  /// https://community.taiga.io/t/can-i-add-new-custom-fields-to-my-project/150
  @MappableField(key: 'custom_attributes_values')
  Map<String, dynamic>? customValues;
}

/// This `TaigaUserStoryData` class is customized to storage the data section
/// of the payload when the `jobType` is equals to `userstory`, having the
/// necessary values to do that conversion of the payload into an object.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaUserStoryData extends TaigaData with TaigaUserStoryDataMappable {
  /// Constructor of the TaigaUserStoryData class
  TaigaUserStoryData({
    required super.jobId,
    required super.referenceNumber,
    required super.jobTags,
    required super.jobOwner,
    required super.jobStatus,
    required super.fromProject,
    required super.jobName,
    required super.jobWatchers,
    required super.jobPermalink,
    required super.userAssigned,
    required super.jobDescription,
    required super.creationDate,
    required super.modifiedDate,
    required super.customValues,
    // Own
    required this.assignedUsers,
    required this.blockedNote,
    required this.clientRequirementStatus,
    required this.dueDate,
    required this.dueDateReason,
    required this.finishDate,
    required this.taskReference,
    required this.issueReference,
    required this.isBlockedStatus,
    required this.isClosedStatus,
    required this.relatedSprint,
    required this.storyPoints,
    required this.teamRequirementStatus,
  });

  /// `assignedUsers:` This is a list of all the `IDs` of the users assigned on
  /// the `userStory`.
  List<int> assignedUsers;

  /// `clientRequirementStatus:` If this is an client requirement or not. <br>
  /// Will be `True` or `False`
  @MappableField(key: 'client_requirement')
  bool clientRequirementStatus;

  /// `blockedNote:` This is a note for the task when its blocked, if is not,
  ///  it came as an empty string: `""`
  String blockedNote;

  /// `dueDate:` Is the date when the issue will be marked as expired, it can be
  /// a `null` value if is not assigned on the `userStory`.
  DateTime? dueDate;

  /// `dueDateReason:` Is the reason because it will be marked as expired,
  /// can come as an empty string: `""` if the dueDate is `null`, or if is not
  /// assigned any reason.
  String dueDateReason;

  /// `finishDate:` Its the date when it was marked as finished this happens
  /// when its at the last part of the kanban board.
  DateTime? finishDate;

  /// `taskReference:` This value appears when a userStory is created from a
  /// task, otherwise it will be a `null` value.
  @MappableField(key: 'from_task_ref')
  String? taskReference;

  /// `issueReference:` This value appears when a userStory is created from an
  /// issue, otherwise it will be a `null` value. <br>
  /// It came as the issue number thats appear like this: `#1` Name of the issue
  @MappableField(key: 'generated_from_issue')
  int? issueReference;

  /// `isBlockedStatus:` Is the state of the `UserStory` Blocked or not Blocked
  /// `True` or `False`.
  @MappableField(key: 'is_blocked')
  bool isBlockedStatus;

  /// `isClosedStatus:` Is the state of the UserStory Closed or not Closed
  /// `True` or `False`.
  @MappableField(key: 'is_closed')
  bool isClosedStatus;

  /// [TaigaSprintData] instance <br>
  /// `relatedSprint:` This is the Sprint related to the `userStory`.
  /// If you need more information about what kind of data will be here, I
  /// recommend to take a look to the `DataSprint` object. <br>
  @MappableField(key: 'milestone')
  TaigaSprintData? relatedSprint;

  /// [DataStoryPoint] instance <br>
  /// All this values are customizable in `Taiga`.
  /// `storyPoints:` This are the points for each apart:
  /// * Design
  /// * Front
  /// * Back
  /// * Project Manager <br>
  /// If you need more information about what kind of data will be here, I
  /// recommend to take a look to the `DataStoryPoint` object. <br>
  @MappableField(key: 'points')
  List<DataStoryPoint> storyPoints;

  /// `teamRequirementStatus:` Its a Bool who says if is a Team requirement
  /// or not.
  @MappableField(key: 'team_requirement')
  bool teamRequirementStatus;

  /// FromJson method, convert a json type object into this
  /// TaigaUserStoryData Object
  static const fromJson = TaigaUserStoryDataMapper.fromJson;
}

/// This `TaigaTaskData` class is customized to storage the data section of the
/// payload when the `jobType` is equal to `task`, having the necessary values
/// to convert that into an object.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaTaskData extends TaigaData with TaigaTaskDataMappable {
  /// Constructor of the class TaigaTaskData
  TaigaTaskData({
    required super.jobId,
    required super.referenceNumber,
    required super.jobTags,
    required super.jobOwner,
    required super.jobStatus,
    required super.fromProject,
    required super.jobName,
    required super.jobWatchers,
    required super.jobPermalink,
    required super.userAssigned,
    required super.jobDescription,
    required super.creationDate,
    required super.modifiedDate,
    required super.customValues,
    // own
    required this.blockedNote,
    required this.dueDate,
    required this.dueDateReason,
    required this.finishedDate,
    required this.isBlockedStatus,
    required this.isIocaineStatus,
    required this.relatedSprint,
    required this.promotedToList,
    required this.taskboardOrder,
    required this.usOrder,
    required this.userStory,
  });

  /// `dueDate:` Its the date when the issue will be marked as expired, it can
  /// be a `null` value if is not assigned any due date on the task
  DateTime? dueDate;

  /// `dueDateReason:` Is the reason because it will be marked as expired,
  /// can come as an empty string: `""` if the dueDate is a `null` value, or if
  /// is not assigned any reason to the issue.
  String dueDateReason;

  /// `relatedSprint:` This is the Sprint related to the `task`. <br>
  /// Its a `DataSprint` instance
  @MappableField(key: 'milestone')
  TaigaSprintData? relatedSprint;

  /// `isBlockedStatus:` Its the state of the `Task` is it Blocked or not.
  /// Can be `True` or `False`
  @MappableField(key: 'is_blocked')
  bool isBlockedStatus;

  /// `blockedNote:` Reason because is blocked, can came as an empty String:
  /// `""` if the status `isBlockedStatus` is `False` or the note, is empty on
  /// `Taiga`.
  String blockedNote;

  /// `usOrder:` Is a custom value from `Taiga` to identify a task position
  /// in the kanban board.
  int usOrder;

  ///[TaigaUserStoryData] instance. <br>
  /// `userStory:` Is the userStory related to the task. If you need
  /// more information about what kind of data will be here, I recommend
  /// to take a look to the `TaigaUserStoryData` object.
  TaigaUserStoryData userStory;

  /// `promotedToList:` If the task is promoted into a `UseStory` will came with
  /// the id of that (Can be more than one ), if is not  promoted to any
  /// `userStory` can came as an empty list.
  @MappableField(key: 'promoted_to')
  List<dynamic> promotedToList;

  /// `finishedDate:` Its the date of the day it was marked as finished, if
  /// is not, came as null value.
  @MappableField(key: 'finished_date')
  DateTime? finishedDate;

  /// 'taskboardOrder:' Its an `int` Value who indicate the order in the Kanban
  /// board vertically, if it on the top will be lower, than if is it on the
  /// bottom part of the board.
  @MappableField(key: 'taskboard_order')
  int taskboardOrder;

  /// `isIocaineStatus:` Its an state indicator about Iocaine, this value is
  /// used in Taiga to warn other group members that this task is a bit heavy.
  /// for the person assigned to it: <br>
  /// <h4>For more information about Iocaine Status check this url:</h4>
  /// https://community.taiga.io/t/what-is-this-iocaine-thing-in-taiga-and-how-should-i-use-it/153
  @MappableField(key: 'is_iocaine')
  bool isIocaineStatus;

  /// FromJson method, convert a json type object into this
  /// TaigaTaskData Object
  static const fromJson = TaigaTaskDataMapper.fromJson;
}

/// This `TaigaIssueData` class is customized to storage the data section of the
/// payload when the `jobType` is equal to `issue`, having the necessary values
/// to convert that into an object.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaIssueData extends TaigaData with TaigaIssueDataMappable {
  /// Constructor of the TaigaIssueData class
  TaigaIssueData({
    required super.jobId,
    required super.referenceNumber,
    required super.jobTags,
    required super.jobOwner,
    required super.jobStatus,
    required super.fromProject,
    required super.jobName,
    required super.jobWatchers,
    required super.jobPermalink,
    required super.userAssigned,
    required super.jobDescription,
    required super.creationDate,
    required super.modifiedDate,
    required super.customValues,
    // own
    required this.dueDate,
    required this.dueDateReason,
    required this.finishedDate,
    required this.issueRelatedSprint,
    required this.issuePriority,
    required this.promotedToList,
    required this.issueSeverity,
    required this.issueType,
  });

  /// `finishedDate:` Its the date when the issue was marked as finished.
  DateTime? finishedDate;

  /// `dueDate:` Date when the issue will be marked as expired, it can be a
  /// `null` value  if is not assigned any due date on the issue.
  DateTime? dueDate;

  /// `dueDateReason:` Its the reason because it will be marked as expired,
  /// can came as an empty string: `""` if the `dueDate` value is `null` or if
  /// is not any reason assigned.
  String dueDateReason;

  /// [TaigaSprintData] Instance <br>
  /// `issueRelatedSprint:` Its the sprint related to the `Taiga Issue`,
  /// this value appears when you attach an `issue` into an `sprint`. <br>
  /// Came from `Taiga` as `milestone`.
  @MappableField(key: 'milestone')
  TaigaSprintData? issueRelatedSprint;

  /// [DataDetails] Instance <br>
  /// `issueType:` Its the `Type` of the Issue, this is a custom value you have
  /// to configure on `Taiga` project configuration. <br>
  /// <h4>For more information about how to configure issues: </h4>
  /// https://community.taiga.io/t/your-crash-course-into-issues-module/125
  @MappableField(key: 'type')
  DataDetails issueType;

  /// [DataDetails] Instance <br>
  /// `issuePriority:` Is the `Priority` of the Issue, this is a custom value
  /// you have to configure on `Taiga` project configuration. <br>
  /// <h4>For more information about how to configure issues: </h4>
  /// https://community.taiga.io/t/your-crash-course-into-issues-module/125
  @MappableField(key: 'priority')
  DataDetails issuePriority;

  /// [DataDetails] Instance <br>
  /// `issueSeverity:` Is the `Severity` of the Issue, this is a custom value
  /// you have to configure on `Taiga` project configuration. <br>
  /// <h4>For more information about how to configure issues: </h4>
  /// https://community.taiga.io/t/your-crash-course-into-issues-module/125
  @MappableField(key: 'severity')
  DataDetails issueSeverity;

  /// `promotedToList:` This value applies only when the `issue` is promoted
  /// into a `userStory`, and will have all the `ids` of the different
  /// `userStory` this issue has been promoted. (Can be more than one)
  @MappableField(key: 'promoted_to')
  List<int?> promotedToList;

  /// FromJson method, convert a json type object into this TaigaIssueData
  ///  Object
  static const fromJson = TaigaIssueDataMapper.fromJson;
}

/// This `TaigaEpicData` class is customized to storage the data section of the
/// payload when the `jobType` is equal to `epic`, having the necessary values
/// to convert that into an object.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaEpicData extends TaigaData with TaigaEpicDataMappable {
  /// Constructor of the TaigaEpicData class
  TaigaEpicData({
    required super.jobId,
    required super.referenceNumber,
    required super.jobTags,
    required super.jobOwner,
    required super.jobStatus,
    required super.fromProject,
    required super.jobName,
    required super.jobWatchers,
    required super.jobPermalink,
    required super.userAssigned,
    required super.jobDescription,
    required super.creationDate,
    required super.modifiedDate,
    required super.customValues,
    // own
    required this.color,
    required this.epicsOrder,
    required this.teamRequirementStatus,
    required this.clientRequirementStatus,
  });

  /// `color:` Its tje chosen color at the time of Creation of the Epic job.
  String color;

  /// `epicsOrder:` Its a value who indicates the order of the Epic.
  /// This is a `Taiga` value
  int epicsOrder;

  /// `teamRequirementStatus:` Its a value who indicates if it is a Team
  /// Requirement or not. Can be `True` of `False`
  @MappableField(key: 'team_requirement')
  bool teamRequirementStatus;

  /// `clientRequirementStatus:` Its a value who indicates if it is a Client
  /// Requirement or not. Can be `True` of `False`
  @MappableField(key: 'client_requirement')
  bool clientRequirementStatus;

  /// FromJson method, convert a json type object into this TaigaEpicData
  /// Object
  static const fromJson = TaigaEpicDataMapper.fromJson;
}

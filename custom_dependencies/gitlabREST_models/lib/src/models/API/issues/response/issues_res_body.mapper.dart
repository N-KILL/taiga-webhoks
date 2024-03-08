// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issues_res_body.dart';

class IssueAPIResponseModelMapper
    extends ClassMapperBase<IssueAPIResponseModel> {
  IssueAPIResponseModelMapper._();

  static IssueAPIResponseModelMapper? _instance;
  static IssueAPIResponseModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IssueAPIResponseModelMapper._());
      IssueStatesMapper.ensureInitialized();
      UserAPIMapper.ensureInitialized();
      MilestoneAPIMapper.ensureInitialized();
      IssueTypesMapper.ensureInitialized();
      TimeStatsMapper.ensureInitialized();
      TaskCompletionStatusMapper.ensureInitialized();
      LinksAPIMapper.ensureInitialized();
      ReferencesAPIMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'IssueAPIResponseModel';

  static int _$id(IssueAPIResponseModel v) => v.id;
  static const Field<IssueAPIResponseModel, int> _f$id = Field('id', _$id);
  static int _$internalId(IssueAPIResponseModel v) => v.internalId;
  static const Field<IssueAPIResponseModel, int> _f$internalId =
      Field('internalId', _$internalId, key: 'iid');
  static int _$relatedProjectId(IssueAPIResponseModel v) => v.relatedProjectId;
  static const Field<IssueAPIResponseModel, int> _f$relatedProjectId =
      Field('relatedProjectId', _$relatedProjectId, key: 'project_id');
  static String _$name(IssueAPIResponseModel v) => v.name;
  static const Field<IssueAPIResponseModel, String> _f$name =
      Field('name', _$name, key: 'title');
  static String? _$description(IssueAPIResponseModel v) => v.description;
  static const Field<IssueAPIResponseModel, String> _f$description =
      Field('description', _$description);
  static IssueStates _$issueState(IssueAPIResponseModel v) => v.issueState;
  static const Field<IssueAPIResponseModel, IssueStates> _f$issueState =
      Field('issueState', _$issueState, key: 'state');
  static DateTime _$createdAtDate(IssueAPIResponseModel v) => v.createdAtDate;
  static const Field<IssueAPIResponseModel, DateTime> _f$createdAtDate =
      Field('createdAtDate', _$createdAtDate, key: 'created_at');
  static DateTime _$updatedAtDate(IssueAPIResponseModel v) => v.updatedAtDate;
  static const Field<IssueAPIResponseModel, DateTime> _f$updatedAtDate =
      Field('updatedAtDate', _$updatedAtDate, key: 'updated_at');
  static DateTime? _$closedAtDate(IssueAPIResponseModel v) => v.closedAtDate;
  static const Field<IssueAPIResponseModel, DateTime> _f$closedAtDate =
      Field('closedAtDate', _$closedAtDate, key: 'created_at');
  static UserAPI? _$closedByUser(IssueAPIResponseModel v) => v.closedByUser;
  static const Field<IssueAPIResponseModel, UserAPI> _f$closedByUser =
      Field('closedByUser', _$closedByUser, key: 'closed_by');
  static List<String> _$labels(IssueAPIResponseModel v) => v.labels;
  static const Field<IssueAPIResponseModel, List<String>> _f$labels =
      Field('labels', _$labels);
  static MilestoneAPI? _$relatedMilestone(IssueAPIResponseModel v) =>
      v.relatedMilestone;
  static const Field<IssueAPIResponseModel, MilestoneAPI> _f$relatedMilestone =
      Field('relatedMilestone', _$relatedMilestone, key: 'milestone');
  static List<UserAPI> _$userAssignees(IssueAPIResponseModel v) =>
      v.userAssignees;
  static const Field<IssueAPIResponseModel, List<UserAPI>> _f$userAssignees =
      Field('userAssignees', _$userAssignees, key: 'assignees');
  static UserAPI? _$assignedUser(IssueAPIResponseModel v) => v.assignedUser;
  static const Field<IssueAPIResponseModel, UserAPI> _f$assignedUser =
      Field('assignedUser', _$assignedUser, key: 'assignee');
  static UserAPI _$authorUser(IssueAPIResponseModel v) => v.authorUser;
  static const Field<IssueAPIResponseModel, UserAPI> _f$authorUser =
      Field('authorUser', _$authorUser, key: 'author');
  static int _$userNotesCount(IssueAPIResponseModel v) => v.userNotesCount;
  static const Field<IssueAPIResponseModel, int> _f$userNotesCount =
      Field('userNotesCount', _$userNotesCount, key: 'user_notes_count');
  static int _$mergeRequestsCount(IssueAPIResponseModel v) =>
      v.mergeRequestsCount;
  static const Field<IssueAPIResponseModel, int> _f$mergeRequestsCount = Field(
      'mergeRequestsCount', _$mergeRequestsCount,
      key: 'merge_requests_count');
  static int _$issueUpVotes(IssueAPIResponseModel v) => v.issueUpVotes;
  static const Field<IssueAPIResponseModel, int> _f$issueUpVotes =
      Field('issueUpVotes', _$issueUpVotes, key: 'upvotes');
  static int _$issueDownVotes(IssueAPIResponseModel v) => v.issueDownVotes;
  static const Field<IssueAPIResponseModel, int> _f$issueDownVotes =
      Field('issueDownVotes', _$issueDownVotes, key: 'downvotes');
  static DateTime? _$dueDate(IssueAPIResponseModel v) => v.dueDate;
  static const Field<IssueAPIResponseModel, DateTime> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date');
  static bool _$confidentialStatus(IssueAPIResponseModel v) =>
      v.confidentialStatus;
  static const Field<IssueAPIResponseModel, bool> _f$confidentialStatus =
      Field('confidentialStatus', _$confidentialStatus, key: 'confidential');
  static bool? _$discussionLockedStatus(IssueAPIResponseModel v) =>
      v.discussionLockedStatus;
  static const Field<IssueAPIResponseModel, bool> _f$discussionLockedStatus =
      Field('discussionLockedStatus', _$discussionLockedStatus,
          key: 'discussion_locked');
  static IssueTypes _$issueType(IssueAPIResponseModel v) => v.issueType;
  static const Field<IssueAPIResponseModel, IssueTypes> _f$issueType =
      Field('issueType', _$issueType, key: 'issue_type');
  static String _$issueUrl(IssueAPIResponseModel v) => v.issueUrl;
  static const Field<IssueAPIResponseModel, String> _f$issueUrl =
      Field('issueUrl', _$issueUrl, key: 'web_url');
  static TimeStats _$timeStats(IssueAPIResponseModel v) => v.timeStats;
  static const Field<IssueAPIResponseModel, TimeStats> _f$timeStats =
      Field('timeStats', _$timeStats, key: 'time_stats');
  static TaskCompletionStatus _$taskCompletionStatus(IssueAPIResponseModel v) =>
      v.taskCompletionStatus;
  static const Field<IssueAPIResponseModel, TaskCompletionStatus>
      _f$taskCompletionStatus = Field(
          'taskCompletionStatus', _$taskCompletionStatus,
          key: 'task_completion_status');
  static int _$blockingIssuesCount(IssueAPIResponseModel v) =>
      v.blockingIssuesCount;
  static const Field<IssueAPIResponseModel, int> _f$blockingIssuesCount = Field(
      'blockingIssuesCount', _$blockingIssuesCount,
      key: 'blocking_issues_count');
  static bool _$hasTasksStatus(IssueAPIResponseModel v) => v.hasTasksStatus;
  static const Field<IssueAPIResponseModel, bool> _f$hasTasksStatus =
      Field('hasTasksStatus', _$hasTasksStatus, key: 'has_tasks');
  static String _$taskStatus(IssueAPIResponseModel v) => v.taskStatus;
  static const Field<IssueAPIResponseModel, String> _f$taskStatus =
      Field('taskStatus', _$taskStatus, key: 'task_status');
  static LinksAPI _$links(IssueAPIResponseModel v) => v.links;
  static const Field<IssueAPIResponseModel, LinksAPI> _f$links =
      Field('links', _$links, key: '_links');
  static ReferencesAPI _$referenceWays(IssueAPIResponseModel v) =>
      v.referenceWays;
  static const Field<IssueAPIResponseModel, ReferencesAPI> _f$referenceWays =
      Field('referenceWays', _$referenceWays, key: 'references');
  static String _$severity(IssueAPIResponseModel v) => v.severity;
  static const Field<IssueAPIResponseModel, String> _f$severity =
      Field('severity', _$severity);
  static bool _$subscribed(IssueAPIResponseModel v) => v.subscribed;
  static const Field<IssueAPIResponseModel, bool> _f$subscribed =
      Field('subscribed', _$subscribed);
  static int? _$movedToId(IssueAPIResponseModel v) => v.movedToId;
  static const Field<IssueAPIResponseModel, int> _f$movedToId =
      Field('movedToId', _$movedToId, key: 'moved_to_id');
  static String? _$serviceDeskReplyTo(IssueAPIResponseModel v) =>
      v.serviceDeskReplyTo;
  static const Field<IssueAPIResponseModel, String> _f$serviceDeskReplyTo =
      Field('serviceDeskReplyTo', _$serviceDeskReplyTo,
          key: 'service_desk_reply_to');

  @override
  final Map<Symbol, Field<IssueAPIResponseModel, dynamic>> fields = const {
    #id: _f$id,
    #internalId: _f$internalId,
    #relatedProjectId: _f$relatedProjectId,
    #name: _f$name,
    #description: _f$description,
    #issueState: _f$issueState,
    #createdAtDate: _f$createdAtDate,
    #updatedAtDate: _f$updatedAtDate,
    #closedAtDate: _f$closedAtDate,
    #closedByUser: _f$closedByUser,
    #labels: _f$labels,
    #relatedMilestone: _f$relatedMilestone,
    #userAssignees: _f$userAssignees,
    #assignedUser: _f$assignedUser,
    #authorUser: _f$authorUser,
    #userNotesCount: _f$userNotesCount,
    #mergeRequestsCount: _f$mergeRequestsCount,
    #issueUpVotes: _f$issueUpVotes,
    #issueDownVotes: _f$issueDownVotes,
    #dueDate: _f$dueDate,
    #confidentialStatus: _f$confidentialStatus,
    #discussionLockedStatus: _f$discussionLockedStatus,
    #issueType: _f$issueType,
    #issueUrl: _f$issueUrl,
    #timeStats: _f$timeStats,
    #taskCompletionStatus: _f$taskCompletionStatus,
    #blockingIssuesCount: _f$blockingIssuesCount,
    #hasTasksStatus: _f$hasTasksStatus,
    #taskStatus: _f$taskStatus,
    #links: _f$links,
    #referenceWays: _f$referenceWays,
    #severity: _f$severity,
    #subscribed: _f$subscribed,
    #movedToId: _f$movedToId,
    #serviceDeskReplyTo: _f$serviceDeskReplyTo,
  };

  static IssueAPIResponseModel _instantiate(DecodingData data) {
    return IssueAPIResponseModel(
        id: data.dec(_f$id),
        internalId: data.dec(_f$internalId),
        relatedProjectId: data.dec(_f$relatedProjectId),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        issueState: data.dec(_f$issueState),
        createdAtDate: data.dec(_f$createdAtDate),
        updatedAtDate: data.dec(_f$updatedAtDate),
        closedAtDate: data.dec(_f$closedAtDate),
        closedByUser: data.dec(_f$closedByUser),
        labels: data.dec(_f$labels),
        relatedMilestone: data.dec(_f$relatedMilestone),
        userAssignees: data.dec(_f$userAssignees),
        assignedUser: data.dec(_f$assignedUser),
        authorUser: data.dec(_f$authorUser),
        userNotesCount: data.dec(_f$userNotesCount),
        mergeRequestsCount: data.dec(_f$mergeRequestsCount),
        issueUpVotes: data.dec(_f$issueUpVotes),
        issueDownVotes: data.dec(_f$issueDownVotes),
        dueDate: data.dec(_f$dueDate),
        confidentialStatus: data.dec(_f$confidentialStatus),
        discussionLockedStatus: data.dec(_f$discussionLockedStatus),
        issueType: data.dec(_f$issueType),
        issueUrl: data.dec(_f$issueUrl),
        timeStats: data.dec(_f$timeStats),
        taskCompletionStatus: data.dec(_f$taskCompletionStatus),
        blockingIssuesCount: data.dec(_f$blockingIssuesCount),
        hasTasksStatus: data.dec(_f$hasTasksStatus),
        taskStatus: data.dec(_f$taskStatus),
        links: data.dec(_f$links),
        referenceWays: data.dec(_f$referenceWays),
        severity: data.dec(_f$severity),
        subscribed: data.dec(_f$subscribed),
        movedToId: data.dec(_f$movedToId),
        serviceDeskReplyTo: data.dec(_f$serviceDeskReplyTo));
  }

  @override
  final Function instantiate = _instantiate;

  static IssueAPIResponseModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IssueAPIResponseModel>(map);
  }

  static IssueAPIResponseModel fromJson(String json) {
    return ensureInitialized().decodeJson<IssueAPIResponseModel>(json);
  }
}

mixin IssueAPIResponseModelMappable {
  String toJson() {
    return IssueAPIResponseModelMapper.ensureInitialized()
        .encodeJson<IssueAPIResponseModel>(this as IssueAPIResponseModel);
  }

  Map<String, dynamic> toMap() {
    return IssueAPIResponseModelMapper.ensureInitialized()
        .encodeMap<IssueAPIResponseModel>(this as IssueAPIResponseModel);
  }

  IssueAPIResponseModelCopyWith<IssueAPIResponseModel, IssueAPIResponseModel,
          IssueAPIResponseModel>
      get copyWith => _IssueAPIResponseModelCopyWithImpl(
          this as IssueAPIResponseModel, $identity, $identity);
  @override
  String toString() {
    return IssueAPIResponseModelMapper.ensureInitialized()
        .stringifyValue(this as IssueAPIResponseModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            IssueAPIResponseModelMapper.ensureInitialized()
                .isValueEqual(this as IssueAPIResponseModel, other));
  }

  @override
  int get hashCode {
    return IssueAPIResponseModelMapper.ensureInitialized()
        .hashValue(this as IssueAPIResponseModel);
  }
}

extension IssueAPIResponseModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IssueAPIResponseModel, $Out> {
  IssueAPIResponseModelCopyWith<$R, IssueAPIResponseModel, $Out>
      get $asIssueAPIResponseModel =>
          $base.as((v, t, t2) => _IssueAPIResponseModelCopyWithImpl(v, t, t2));
}

abstract class IssueAPIResponseModelCopyWith<
    $R,
    $In extends IssueAPIResponseModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  UserAPICopyWith<$R, UserAPI, UserAPI>? get closedByUser;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get labels;
  MilestoneAPICopyWith<$R, MilestoneAPI, MilestoneAPI>? get relatedMilestone;
  ListCopyWith<$R, UserAPI, UserAPICopyWith<$R, UserAPI, UserAPI>>
      get userAssignees;
  UserAPICopyWith<$R, UserAPI, UserAPI>? get assignedUser;
  UserAPICopyWith<$R, UserAPI, UserAPI> get authorUser;
  TimeStatsCopyWith<$R, TimeStats, TimeStats> get timeStats;
  TaskCompletionStatusCopyWith<$R, TaskCompletionStatus, TaskCompletionStatus>
      get taskCompletionStatus;
  LinksAPICopyWith<$R, LinksAPI, LinksAPI> get links;
  ReferencesAPICopyWith<$R, ReferencesAPI, ReferencesAPI> get referenceWays;
  $R call(
      {int? id,
      int? internalId,
      int? relatedProjectId,
      String? name,
      String? description,
      IssueStates? issueState,
      DateTime? createdAtDate,
      DateTime? updatedAtDate,
      DateTime? closedAtDate,
      UserAPI? closedByUser,
      List<String>? labels,
      MilestoneAPI? relatedMilestone,
      List<UserAPI>? userAssignees,
      UserAPI? assignedUser,
      UserAPI? authorUser,
      int? userNotesCount,
      int? mergeRequestsCount,
      int? issueUpVotes,
      int? issueDownVotes,
      DateTime? dueDate,
      bool? confidentialStatus,
      bool? discussionLockedStatus,
      IssueTypes? issueType,
      String? issueUrl,
      TimeStats? timeStats,
      TaskCompletionStatus? taskCompletionStatus,
      int? blockingIssuesCount,
      bool? hasTasksStatus,
      String? taskStatus,
      LinksAPI? links,
      ReferencesAPI? referenceWays,
      String? severity,
      bool? subscribed,
      int? movedToId,
      String? serviceDeskReplyTo});
  IssueAPIResponseModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _IssueAPIResponseModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IssueAPIResponseModel, $Out>
    implements IssueAPIResponseModelCopyWith<$R, IssueAPIResponseModel, $Out> {
  _IssueAPIResponseModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IssueAPIResponseModel> $mapper =
      IssueAPIResponseModelMapper.ensureInitialized();
  @override
  UserAPICopyWith<$R, UserAPI, UserAPI>? get closedByUser =>
      $value.closedByUser?.copyWith.$chain((v) => call(closedByUser: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get labels =>
      ListCopyWith($value.labels, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(labels: v));
  @override
  MilestoneAPICopyWith<$R, MilestoneAPI, MilestoneAPI>? get relatedMilestone =>
      $value.relatedMilestone?.copyWith
          .$chain((v) => call(relatedMilestone: v));
  @override
  ListCopyWith<$R, UserAPI, UserAPICopyWith<$R, UserAPI, UserAPI>>
      get userAssignees => ListCopyWith($value.userAssignees,
          (v, t) => v.copyWith.$chain(t), (v) => call(userAssignees: v));
  @override
  UserAPICopyWith<$R, UserAPI, UserAPI>? get assignedUser =>
      $value.assignedUser?.copyWith.$chain((v) => call(assignedUser: v));
  @override
  UserAPICopyWith<$R, UserAPI, UserAPI> get authorUser =>
      $value.authorUser.copyWith.$chain((v) => call(authorUser: v));
  @override
  TimeStatsCopyWith<$R, TimeStats, TimeStats> get timeStats =>
      $value.timeStats.copyWith.$chain((v) => call(timeStats: v));
  @override
  TaskCompletionStatusCopyWith<$R, TaskCompletionStatus, TaskCompletionStatus>
      get taskCompletionStatus => $value.taskCompletionStatus.copyWith
          .$chain((v) => call(taskCompletionStatus: v));
  @override
  LinksAPICopyWith<$R, LinksAPI, LinksAPI> get links =>
      $value.links.copyWith.$chain((v) => call(links: v));
  @override
  ReferencesAPICopyWith<$R, ReferencesAPI, ReferencesAPI> get referenceWays =>
      $value.referenceWays.copyWith.$chain((v) => call(referenceWays: v));
  @override
  $R call(
          {int? id,
          int? internalId,
          int? relatedProjectId,
          String? name,
          Object? description = $none,
          IssueStates? issueState,
          DateTime? createdAtDate,
          DateTime? updatedAtDate,
          Object? closedAtDate = $none,
          Object? closedByUser = $none,
          List<String>? labels,
          Object? relatedMilestone = $none,
          List<UserAPI>? userAssignees,
          Object? assignedUser = $none,
          UserAPI? authorUser,
          int? userNotesCount,
          int? mergeRequestsCount,
          int? issueUpVotes,
          int? issueDownVotes,
          Object? dueDate = $none,
          bool? confidentialStatus,
          Object? discussionLockedStatus = $none,
          IssueTypes? issueType,
          String? issueUrl,
          TimeStats? timeStats,
          TaskCompletionStatus? taskCompletionStatus,
          int? blockingIssuesCount,
          bool? hasTasksStatus,
          String? taskStatus,
          LinksAPI? links,
          ReferencesAPI? referenceWays,
          String? severity,
          bool? subscribed,
          Object? movedToId = $none,
          Object? serviceDeskReplyTo = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (internalId != null) #internalId: internalId,
        if (relatedProjectId != null) #relatedProjectId: relatedProjectId,
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (issueState != null) #issueState: issueState,
        if (createdAtDate != null) #createdAtDate: createdAtDate,
        if (updatedAtDate != null) #updatedAtDate: updatedAtDate,
        if (closedAtDate != $none) #closedAtDate: closedAtDate,
        if (closedByUser != $none) #closedByUser: closedByUser,
        if (labels != null) #labels: labels,
        if (relatedMilestone != $none) #relatedMilestone: relatedMilestone,
        if (userAssignees != null) #userAssignees: userAssignees,
        if (assignedUser != $none) #assignedUser: assignedUser,
        if (authorUser != null) #authorUser: authorUser,
        if (userNotesCount != null) #userNotesCount: userNotesCount,
        if (mergeRequestsCount != null) #mergeRequestsCount: mergeRequestsCount,
        if (issueUpVotes != null) #issueUpVotes: issueUpVotes,
        if (issueDownVotes != null) #issueDownVotes: issueDownVotes,
        if (dueDate != $none) #dueDate: dueDate,
        if (confidentialStatus != null) #confidentialStatus: confidentialStatus,
        if (discussionLockedStatus != $none)
          #discussionLockedStatus: discussionLockedStatus,
        if (issueType != null) #issueType: issueType,
        if (issueUrl != null) #issueUrl: issueUrl,
        if (timeStats != null) #timeStats: timeStats,
        if (taskCompletionStatus != null)
          #taskCompletionStatus: taskCompletionStatus,
        if (blockingIssuesCount != null)
          #blockingIssuesCount: blockingIssuesCount,
        if (hasTasksStatus != null) #hasTasksStatus: hasTasksStatus,
        if (taskStatus != null) #taskStatus: taskStatus,
        if (links != null) #links: links,
        if (referenceWays != null) #referenceWays: referenceWays,
        if (severity != null) #severity: severity,
        if (subscribed != null) #subscribed: subscribed,
        if (movedToId != $none) #movedToId: movedToId,
        if (serviceDeskReplyTo != $none) #serviceDeskReplyTo: serviceDeskReplyTo
      }));
  @override
  IssueAPIResponseModel $make(CopyWithData data) => IssueAPIResponseModel(
      id: data.get(#id, or: $value.id),
      internalId: data.get(#internalId, or: $value.internalId),
      relatedProjectId:
          data.get(#relatedProjectId, or: $value.relatedProjectId),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      issueState: data.get(#issueState, or: $value.issueState),
      createdAtDate: data.get(#createdAtDate, or: $value.createdAtDate),
      updatedAtDate: data.get(#updatedAtDate, or: $value.updatedAtDate),
      closedAtDate: data.get(#closedAtDate, or: $value.closedAtDate),
      closedByUser: data.get(#closedByUser, or: $value.closedByUser),
      labels: data.get(#labels, or: $value.labels),
      relatedMilestone:
          data.get(#relatedMilestone, or: $value.relatedMilestone),
      userAssignees: data.get(#userAssignees, or: $value.userAssignees),
      assignedUser: data.get(#assignedUser, or: $value.assignedUser),
      authorUser: data.get(#authorUser, or: $value.authorUser),
      userNotesCount: data.get(#userNotesCount, or: $value.userNotesCount),
      mergeRequestsCount:
          data.get(#mergeRequestsCount, or: $value.mergeRequestsCount),
      issueUpVotes: data.get(#issueUpVotes, or: $value.issueUpVotes),
      issueDownVotes: data.get(#issueDownVotes, or: $value.issueDownVotes),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      confidentialStatus:
          data.get(#confidentialStatus, or: $value.confidentialStatus),
      discussionLockedStatus:
          data.get(#discussionLockedStatus, or: $value.discussionLockedStatus),
      issueType: data.get(#issueType, or: $value.issueType),
      issueUrl: data.get(#issueUrl, or: $value.issueUrl),
      timeStats: data.get(#timeStats, or: $value.timeStats),
      taskCompletionStatus:
          data.get(#taskCompletionStatus, or: $value.taskCompletionStatus),
      blockingIssuesCount:
          data.get(#blockingIssuesCount, or: $value.blockingIssuesCount),
      hasTasksStatus: data.get(#hasTasksStatus, or: $value.hasTasksStatus),
      taskStatus: data.get(#taskStatus, or: $value.taskStatus),
      links: data.get(#links, or: $value.links),
      referenceWays: data.get(#referenceWays, or: $value.referenceWays),
      severity: data.get(#severity, or: $value.severity),
      subscribed: data.get(#subscribed, or: $value.subscribed),
      movedToId: data.get(#movedToId, or: $value.movedToId),
      serviceDeskReplyTo:
          data.get(#serviceDeskReplyTo, or: $value.serviceDeskReplyTo));

  @override
  IssueAPIResponseModelCopyWith<$R2, IssueAPIResponseModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _IssueAPIResponseModelCopyWithImpl($value, $cast, t);
}

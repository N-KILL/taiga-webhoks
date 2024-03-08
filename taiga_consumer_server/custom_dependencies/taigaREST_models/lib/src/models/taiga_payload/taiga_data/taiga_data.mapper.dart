// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'taiga_data.dart';

class TaigaDataMapper extends ClassMapperBase<TaigaData> {
  TaigaDataMapper._();

  static TaigaDataMapper? _instance;
  static TaigaDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaDataMapper._());
      TaigaUserStoryDataMapper.ensureInitialized();
      TaigaTaskDataMapper.ensureInitialized();
      TaigaIssueDataMapper.ensureInitialized();
      TaigaEpicDataMapper.ensureInitialized();
      TaigaUserMapper.ensureInitialized();
      TaigaStatusMapper.ensureInitialized();
      TaigaProjectMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaData';

  static int _$jobId(TaigaData v) => v.jobId;
  static const Field<TaigaData, int> _f$jobId =
      Field('jobId', _$jobId, key: 'id');
  static int _$referenceNumber(TaigaData v) => v.referenceNumber;
  static const Field<TaigaData, int> _f$referenceNumber =
      Field('referenceNumber', _$referenceNumber, key: 'ref');
  static List<String>? _$jobTags(TaigaData v) => v.jobTags;
  static const Field<TaigaData, List<String>> _f$jobTags =
      Field('jobTags', _$jobTags, key: 'tags');
  static TaigaUser _$jobOwner(TaigaData v) => v.jobOwner;
  static const Field<TaigaData, TaigaUser> _f$jobOwner =
      Field('jobOwner', _$jobOwner, key: 'owner');
  static TaigaStatus _$jobStatus(TaigaData v) => v.jobStatus;
  static const Field<TaigaData, TaigaStatus> _f$jobStatus =
      Field('jobStatus', _$jobStatus, key: 'status');
  static TaigaProject _$fromProject(TaigaData v) => v.fromProject;
  static const Field<TaigaData, TaigaProject> _f$fromProject =
      Field('fromProject', _$fromProject, key: 'project');
  static String _$jobName(TaigaData v) => v.jobName;
  static const Field<TaigaData, String> _f$jobName =
      Field('jobName', _$jobName, key: 'subject');
  static List<int> _$jobWatchers(TaigaData v) => v.jobWatchers;
  static const Field<TaigaData, List<int>> _f$jobWatchers =
      Field('jobWatchers', _$jobWatchers, key: 'watchers');
  static String _$jobPermalink(TaigaData v) => v.jobPermalink;
  static const Field<TaigaData, String> _f$jobPermalink =
      Field('jobPermalink', _$jobPermalink, key: 'permalink');
  static TaigaUser? _$userAssigned(TaigaData v) => v.userAssigned;
  static const Field<TaigaData, TaigaUser> _f$userAssigned =
      Field('userAssigned', _$userAssigned, key: 'assigned_to');
  static String? _$jobDescription(TaigaData v) => v.jobDescription;
  static const Field<TaigaData, String> _f$jobDescription =
      Field('jobDescription', _$jobDescription, key: 'description');
  static DateTime _$creationDate(TaigaData v) => v.creationDate;
  static const Field<TaigaData, DateTime> _f$creationDate =
      Field('creationDate', _$creationDate, key: 'created_date');
  static DateTime? _$modifiedDate(TaigaData v) => v.modifiedDate;
  static const Field<TaigaData, DateTime> _f$modifiedDate =
      Field('modifiedDate', _$modifiedDate, key: 'modified_date');
  static Map<String, dynamic>? _$customValues(TaigaData v) => v.customValues;
  static const Field<TaigaData, Map<String, dynamic>> _f$customValues =
      Field('customValues', _$customValues, key: 'custom_attributes_values');

  @override
  final Map<Symbol, Field<TaigaData, dynamic>> fields = const {
    #jobId: _f$jobId,
    #referenceNumber: _f$referenceNumber,
    #jobTags: _f$jobTags,
    #jobOwner: _f$jobOwner,
    #jobStatus: _f$jobStatus,
    #fromProject: _f$fromProject,
    #jobName: _f$jobName,
    #jobWatchers: _f$jobWatchers,
    #jobPermalink: _f$jobPermalink,
    #userAssigned: _f$userAssigned,
    #jobDescription: _f$jobDescription,
    #creationDate: _f$creationDate,
    #modifiedDate: _f$modifiedDate,
    #customValues: _f$customValues,
  };

  static TaigaData _instantiate(DecodingData data) {
    return TaigaData(
        jobId: data.dec(_f$jobId),
        referenceNumber: data.dec(_f$referenceNumber),
        jobTags: data.dec(_f$jobTags),
        jobOwner: data.dec(_f$jobOwner),
        jobStatus: data.dec(_f$jobStatus),
        fromProject: data.dec(_f$fromProject),
        jobName: data.dec(_f$jobName),
        jobWatchers: data.dec(_f$jobWatchers),
        jobPermalink: data.dec(_f$jobPermalink),
        userAssigned: data.dec(_f$userAssigned),
        jobDescription: data.dec(_f$jobDescription),
        creationDate: data.dec(_f$creationDate),
        modifiedDate: data.dec(_f$modifiedDate),
        customValues: data.dec(_f$customValues));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaData>(map);
  }

  static TaigaData fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaData>(json);
  }
}

mixin TaigaDataMappable {
  String toJson() {
    return TaigaDataMapper.ensureInitialized()
        .encodeJson<TaigaData>(this as TaigaData);
  }

  Map<String, dynamic> toMap() {
    return TaigaDataMapper.ensureInitialized()
        .encodeMap<TaigaData>(this as TaigaData);
  }

  TaigaDataCopyWith<TaigaData, TaigaData, TaigaData> get copyWith =>
      _TaigaDataCopyWithImpl(this as TaigaData, $identity, $identity);
  @override
  String toString() {
    return TaigaDataMapper.ensureInitialized()
        .stringifyValue(this as TaigaData);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaDataMapper.ensureInitialized()
                .isValueEqual(this as TaigaData, other));
  }

  @override
  int get hashCode {
    return TaigaDataMapper.ensureInitialized().hashValue(this as TaigaData);
  }
}

extension TaigaDataValueCopy<$R, $Out> on ObjectCopyWith<$R, TaigaData, $Out> {
  TaigaDataCopyWith<$R, TaigaData, $Out> get $asTaigaData =>
      $base.as((v, t, t2) => _TaigaDataCopyWithImpl(v, t, t2));
}

abstract class TaigaDataCopyWith<$R, $In extends TaigaData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>? get jobTags;
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner;
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus;
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>?> get jobWatchers;
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
      get customValues;
  $R call(
      {int? jobId,
      int? referenceNumber,
      List<String>? jobTags,
      TaigaUser? jobOwner,
      TaigaStatus? jobStatus,
      TaigaProject? fromProject,
      String? jobName,
      List<int>? jobWatchers,
      String? jobPermalink,
      TaigaUser? userAssigned,
      String? jobDescription,
      DateTime? creationDate,
      DateTime? modifiedDate,
      Map<String, dynamic>? customValues});
  TaigaDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaData, $Out>
    implements TaigaDataCopyWith<$R, TaigaData, $Out> {
  _TaigaDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaData> $mapper =
      TaigaDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>? get jobTags =>
      $value.jobTags != null
          ? ListCopyWith(
              $value.jobTags!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(jobTags: v))
          : null;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner =>
      $value.jobOwner.copyWith.$chain((v) => call(jobOwner: v));
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus =>
      $value.jobStatus.copyWith.$chain((v) => call(jobStatus: v));
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject =>
      $value.fromProject.copyWith.$chain((v) => call(fromProject: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>?> get jobWatchers =>
      ListCopyWith(
          $value.jobWatchers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(jobWatchers: v));
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned =>
      $value.userAssigned?.copyWith.$chain((v) => call(userAssigned: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
      get customValues => $value.customValues != null
          ? MapCopyWith(
              $value.customValues!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(customValues: v))
          : null;
  @override
  $R call(
          {int? jobId,
          int? referenceNumber,
          Object? jobTags = $none,
          TaigaUser? jobOwner,
          TaigaStatus? jobStatus,
          TaigaProject? fromProject,
          String? jobName,
          List<int>? jobWatchers,
          String? jobPermalink,
          Object? userAssigned = $none,
          Object? jobDescription = $none,
          DateTime? creationDate,
          Object? modifiedDate = $none,
          Object? customValues = $none}) =>
      $apply(FieldCopyWithData({
        if (jobId != null) #jobId: jobId,
        if (referenceNumber != null) #referenceNumber: referenceNumber,
        if (jobTags != $none) #jobTags: jobTags,
        if (jobOwner != null) #jobOwner: jobOwner,
        if (jobStatus != null) #jobStatus: jobStatus,
        if (fromProject != null) #fromProject: fromProject,
        if (jobName != null) #jobName: jobName,
        if (jobWatchers != null) #jobWatchers: jobWatchers,
        if (jobPermalink != null) #jobPermalink: jobPermalink,
        if (userAssigned != $none) #userAssigned: userAssigned,
        if (jobDescription != $none) #jobDescription: jobDescription,
        if (creationDate != null) #creationDate: creationDate,
        if (modifiedDate != $none) #modifiedDate: modifiedDate,
        if (customValues != $none) #customValues: customValues
      }));
  @override
  TaigaData $make(CopyWithData data) => TaigaData(
      jobId: data.get(#jobId, or: $value.jobId),
      referenceNumber: data.get(#referenceNumber, or: $value.referenceNumber),
      jobTags: data.get(#jobTags, or: $value.jobTags),
      jobOwner: data.get(#jobOwner, or: $value.jobOwner),
      jobStatus: data.get(#jobStatus, or: $value.jobStatus),
      fromProject: data.get(#fromProject, or: $value.fromProject),
      jobName: data.get(#jobName, or: $value.jobName),
      jobWatchers: data.get(#jobWatchers, or: $value.jobWatchers),
      jobPermalink: data.get(#jobPermalink, or: $value.jobPermalink),
      userAssigned: data.get(#userAssigned, or: $value.userAssigned),
      jobDescription: data.get(#jobDescription, or: $value.jobDescription),
      creationDate: data.get(#creationDate, or: $value.creationDate),
      modifiedDate: data.get(#modifiedDate, or: $value.modifiedDate),
      customValues: data.get(#customValues, or: $value.customValues));

  @override
  TaigaDataCopyWith<$R2, TaigaData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaDataCopyWithImpl($value, $cast, t);
}

class TaigaUserStoryDataMapper extends ClassMapperBase<TaigaUserStoryData> {
  TaigaUserStoryDataMapper._();

  static TaigaUserStoryDataMapper? _instance;
  static TaigaUserStoryDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaUserStoryDataMapper._());
      TaigaDataMapper.ensureInitialized();
      TaigaUserMapper.ensureInitialized();
      TaigaStatusMapper.ensureInitialized();
      TaigaProjectMapper.ensureInitialized();
      TaigaSprintDataMapper.ensureInitialized();
      DataStoryPointMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaUserStoryData';

  static int _$jobId(TaigaUserStoryData v) => v.jobId;
  static const Field<TaigaUserStoryData, int> _f$jobId =
      Field('jobId', _$jobId, key: 'id');
  static int _$referenceNumber(TaigaUserStoryData v) => v.referenceNumber;
  static const Field<TaigaUserStoryData, int> _f$referenceNumber =
      Field('referenceNumber', _$referenceNumber, key: 'ref');
  static List<String>? _$jobTags(TaigaUserStoryData v) => v.jobTags;
  static const Field<TaigaUserStoryData, List<String>> _f$jobTags =
      Field('jobTags', _$jobTags, key: 'tags');
  static TaigaUser _$jobOwner(TaigaUserStoryData v) => v.jobOwner;
  static const Field<TaigaUserStoryData, TaigaUser> _f$jobOwner =
      Field('jobOwner', _$jobOwner, key: 'owner');
  static TaigaStatus _$jobStatus(TaigaUserStoryData v) => v.jobStatus;
  static const Field<TaigaUserStoryData, TaigaStatus> _f$jobStatus =
      Field('jobStatus', _$jobStatus, key: 'status');
  static TaigaProject _$fromProject(TaigaUserStoryData v) => v.fromProject;
  static const Field<TaigaUserStoryData, TaigaProject> _f$fromProject =
      Field('fromProject', _$fromProject, key: 'project');
  static String _$jobName(TaigaUserStoryData v) => v.jobName;
  static const Field<TaigaUserStoryData, String> _f$jobName =
      Field('jobName', _$jobName, key: 'subject');
  static List<int> _$jobWatchers(TaigaUserStoryData v) => v.jobWatchers;
  static const Field<TaigaUserStoryData, List<int>> _f$jobWatchers =
      Field('jobWatchers', _$jobWatchers, key: 'watchers');
  static String _$jobPermalink(TaigaUserStoryData v) => v.jobPermalink;
  static const Field<TaigaUserStoryData, String> _f$jobPermalink =
      Field('jobPermalink', _$jobPermalink, key: 'permalink');
  static TaigaUser? _$userAssigned(TaigaUserStoryData v) => v.userAssigned;
  static const Field<TaigaUserStoryData, TaigaUser> _f$userAssigned =
      Field('userAssigned', _$userAssigned, key: 'assigned_to');
  static String? _$jobDescription(TaigaUserStoryData v) => v.jobDescription;
  static const Field<TaigaUserStoryData, String> _f$jobDescription =
      Field('jobDescription', _$jobDescription, key: 'description');
  static DateTime _$creationDate(TaigaUserStoryData v) => v.creationDate;
  static const Field<TaigaUserStoryData, DateTime> _f$creationDate =
      Field('creationDate', _$creationDate, key: 'created_date');
  static DateTime? _$modifiedDate(TaigaUserStoryData v) => v.modifiedDate;
  static const Field<TaigaUserStoryData, DateTime> _f$modifiedDate =
      Field('modifiedDate', _$modifiedDate, key: 'modified_date');
  static Map<String, dynamic>? _$customValues(TaigaUserStoryData v) =>
      v.customValues;
  static const Field<TaigaUserStoryData, Map<String, dynamic>> _f$customValues =
      Field('customValues', _$customValues, key: 'custom_attributes_values');
  static List<int> _$assignedUsers(TaigaUserStoryData v) => v.assignedUsers;
  static const Field<TaigaUserStoryData, List<int>> _f$assignedUsers =
      Field('assignedUsers', _$assignedUsers, key: 'assigned_users');
  static String _$blockedNote(TaigaUserStoryData v) => v.blockedNote;
  static const Field<TaigaUserStoryData, String> _f$blockedNote =
      Field('blockedNote', _$blockedNote, key: 'blocked_note');
  static bool _$clientRequirementStatus(TaigaUserStoryData v) =>
      v.clientRequirementStatus;
  static const Field<TaigaUserStoryData, bool> _f$clientRequirementStatus =
      Field('clientRequirementStatus', _$clientRequirementStatus,
          key: 'client_requirement');
  static DateTime? _$dueDate(TaigaUserStoryData v) => v.dueDate;
  static const Field<TaigaUserStoryData, DateTime> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date');
  static String _$dueDateReason(TaigaUserStoryData v) => v.dueDateReason;
  static const Field<TaigaUserStoryData, String> _f$dueDateReason =
      Field('dueDateReason', _$dueDateReason, key: 'due_date_reason');
  static DateTime? _$finishDate(TaigaUserStoryData v) => v.finishDate;
  static const Field<TaigaUserStoryData, DateTime> _f$finishDate =
      Field('finishDate', _$finishDate, key: 'finish_date');
  static String? _$taskReference(TaigaUserStoryData v) => v.taskReference;
  static const Field<TaigaUserStoryData, String> _f$taskReference =
      Field('taskReference', _$taskReference, key: 'from_task_ref');
  static int? _$issueReference(TaigaUserStoryData v) => v.issueReference;
  static const Field<TaigaUserStoryData, int> _f$issueReference =
      Field('issueReference', _$issueReference, key: 'generated_from_issue');
  static bool _$isBlockedStatus(TaigaUserStoryData v) => v.isBlockedStatus;
  static const Field<TaigaUserStoryData, bool> _f$isBlockedStatus =
      Field('isBlockedStatus', _$isBlockedStatus, key: 'is_blocked');
  static bool _$isClosedStatus(TaigaUserStoryData v) => v.isClosedStatus;
  static const Field<TaigaUserStoryData, bool> _f$isClosedStatus =
      Field('isClosedStatus', _$isClosedStatus, key: 'is_closed');
  static TaigaSprintData? _$relatedSprint(TaigaUserStoryData v) =>
      v.relatedSprint;
  static const Field<TaigaUserStoryData, TaigaSprintData> _f$relatedSprint =
      Field('relatedSprint', _$relatedSprint, key: 'milestone');
  static List<DataStoryPoint> _$storyPoints(TaigaUserStoryData v) =>
      v.storyPoints;
  static const Field<TaigaUserStoryData, List<DataStoryPoint>> _f$storyPoints =
      Field('storyPoints', _$storyPoints, key: 'points');
  static bool _$teamRequirementStatus(TaigaUserStoryData v) =>
      v.teamRequirementStatus;
  static const Field<TaigaUserStoryData, bool> _f$teamRequirementStatus = Field(
      'teamRequirementStatus', _$teamRequirementStatus,
      key: 'team_requirement');

  @override
  final Map<Symbol, Field<TaigaUserStoryData, dynamic>> fields = const {
    #jobId: _f$jobId,
    #referenceNumber: _f$referenceNumber,
    #jobTags: _f$jobTags,
    #jobOwner: _f$jobOwner,
    #jobStatus: _f$jobStatus,
    #fromProject: _f$fromProject,
    #jobName: _f$jobName,
    #jobWatchers: _f$jobWatchers,
    #jobPermalink: _f$jobPermalink,
    #userAssigned: _f$userAssigned,
    #jobDescription: _f$jobDescription,
    #creationDate: _f$creationDate,
    #modifiedDate: _f$modifiedDate,
    #customValues: _f$customValues,
    #assignedUsers: _f$assignedUsers,
    #blockedNote: _f$blockedNote,
    #clientRequirementStatus: _f$clientRequirementStatus,
    #dueDate: _f$dueDate,
    #dueDateReason: _f$dueDateReason,
    #finishDate: _f$finishDate,
    #taskReference: _f$taskReference,
    #issueReference: _f$issueReference,
    #isBlockedStatus: _f$isBlockedStatus,
    #isClosedStatus: _f$isClosedStatus,
    #relatedSprint: _f$relatedSprint,
    #storyPoints: _f$storyPoints,
    #teamRequirementStatus: _f$teamRequirementStatus,
  };

  static TaigaUserStoryData _instantiate(DecodingData data) {
    return TaigaUserStoryData(
        jobId: data.dec(_f$jobId),
        referenceNumber: data.dec(_f$referenceNumber),
        jobTags: data.dec(_f$jobTags),
        jobOwner: data.dec(_f$jobOwner),
        jobStatus: data.dec(_f$jobStatus),
        fromProject: data.dec(_f$fromProject),
        jobName: data.dec(_f$jobName),
        jobWatchers: data.dec(_f$jobWatchers),
        jobPermalink: data.dec(_f$jobPermalink),
        userAssigned: data.dec(_f$userAssigned),
        jobDescription: data.dec(_f$jobDescription),
        creationDate: data.dec(_f$creationDate),
        modifiedDate: data.dec(_f$modifiedDate),
        customValues: data.dec(_f$customValues),
        assignedUsers: data.dec(_f$assignedUsers),
        blockedNote: data.dec(_f$blockedNote),
        clientRequirementStatus: data.dec(_f$clientRequirementStatus),
        dueDate: data.dec(_f$dueDate),
        dueDateReason: data.dec(_f$dueDateReason),
        finishDate: data.dec(_f$finishDate),
        taskReference: data.dec(_f$taskReference),
        issueReference: data.dec(_f$issueReference),
        isBlockedStatus: data.dec(_f$isBlockedStatus),
        isClosedStatus: data.dec(_f$isClosedStatus),
        relatedSprint: data.dec(_f$relatedSprint),
        storyPoints: data.dec(_f$storyPoints),
        teamRequirementStatus: data.dec(_f$teamRequirementStatus));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaUserStoryData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaUserStoryData>(map);
  }

  static TaigaUserStoryData fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaUserStoryData>(json);
  }
}

mixin TaigaUserStoryDataMappable {
  String toJson() {
    return TaigaUserStoryDataMapper.ensureInitialized()
        .encodeJson<TaigaUserStoryData>(this as TaigaUserStoryData);
  }

  Map<String, dynamic> toMap() {
    return TaigaUserStoryDataMapper.ensureInitialized()
        .encodeMap<TaigaUserStoryData>(this as TaigaUserStoryData);
  }

  TaigaUserStoryDataCopyWith<TaigaUserStoryData, TaigaUserStoryData,
          TaigaUserStoryData>
      get copyWith => _TaigaUserStoryDataCopyWithImpl(
          this as TaigaUserStoryData, $identity, $identity);
  @override
  String toString() {
    return TaigaUserStoryDataMapper.ensureInitialized()
        .stringifyValue(this as TaigaUserStoryData);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaUserStoryDataMapper.ensureInitialized()
                .isValueEqual(this as TaigaUserStoryData, other));
  }

  @override
  int get hashCode {
    return TaigaUserStoryDataMapper.ensureInitialized()
        .hashValue(this as TaigaUserStoryData);
  }
}

extension TaigaUserStoryDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaUserStoryData, $Out> {
  TaigaUserStoryDataCopyWith<$R, TaigaUserStoryData, $Out>
      get $asTaigaUserStoryData =>
          $base.as((v, t, t2) => _TaigaUserStoryDataCopyWithImpl(v, t, t2));
}

abstract class TaigaUserStoryDataCopyWith<$R, $In extends TaigaUserStoryData,
    $Out> implements TaigaDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get jobTags;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner;
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus;
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get jobWatchers;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get customValues;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get assignedUsers;
  TaigaSprintDataCopyWith<$R, TaigaSprintData, TaigaSprintData>?
      get relatedSprint;
  ListCopyWith<$R, DataStoryPoint,
          DataStoryPointCopyWith<$R, DataStoryPoint, DataStoryPoint>>
      get storyPoints;
  @override
  $R call(
      {int? jobId,
      int? referenceNumber,
      List<String>? jobTags,
      TaigaUser? jobOwner,
      TaigaStatus? jobStatus,
      TaigaProject? fromProject,
      String? jobName,
      List<int>? jobWatchers,
      String? jobPermalink,
      TaigaUser? userAssigned,
      String? jobDescription,
      DateTime? creationDate,
      DateTime? modifiedDate,
      Map<String, dynamic>? customValues,
      List<int>? assignedUsers,
      String? blockedNote,
      bool? clientRequirementStatus,
      DateTime? dueDate,
      String? dueDateReason,
      DateTime? finishDate,
      String? taskReference,
      int? issueReference,
      bool? isBlockedStatus,
      bool? isClosedStatus,
      TaigaSprintData? relatedSprint,
      List<DataStoryPoint>? storyPoints,
      bool? teamRequirementStatus});
  TaigaUserStoryDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TaigaUserStoryDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaUserStoryData, $Out>
    implements TaigaUserStoryDataCopyWith<$R, TaigaUserStoryData, $Out> {
  _TaigaUserStoryDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaUserStoryData> $mapper =
      TaigaUserStoryDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get jobTags =>
      $value.jobTags != null
          ? ListCopyWith(
              $value.jobTags!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(jobTags: v))
          : null;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner =>
      $value.jobOwner.copyWith.$chain((v) => call(jobOwner: v));
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus =>
      $value.jobStatus.copyWith.$chain((v) => call(jobStatus: v));
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject =>
      $value.fromProject.copyWith.$chain((v) => call(fromProject: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get jobWatchers =>
      ListCopyWith(
          $value.jobWatchers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(jobWatchers: v));
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned =>
      $value.userAssigned?.copyWith.$chain((v) => call(userAssigned: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get customValues => $value.customValues != null
          ? MapCopyWith(
              $value.customValues!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(customValues: v))
          : null;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get assignedUsers =>
      ListCopyWith(
          $value.assignedUsers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(assignedUsers: v));
  @override
  TaigaSprintDataCopyWith<$R, TaigaSprintData, TaigaSprintData>?
      get relatedSprint =>
          $value.relatedSprint?.copyWith.$chain((v) => call(relatedSprint: v));
  @override
  ListCopyWith<$R, DataStoryPoint,
          DataStoryPointCopyWith<$R, DataStoryPoint, DataStoryPoint>>
      get storyPoints => ListCopyWith($value.storyPoints,
          (v, t) => v.copyWith.$chain(t), (v) => call(storyPoints: v));
  @override
  $R call(
          {int? jobId,
          int? referenceNumber,
          Object? jobTags = $none,
          TaigaUser? jobOwner,
          TaigaStatus? jobStatus,
          TaigaProject? fromProject,
          String? jobName,
          List<int>? jobWatchers,
          String? jobPermalink,
          Object? userAssigned = $none,
          Object? jobDescription = $none,
          DateTime? creationDate,
          Object? modifiedDate = $none,
          Object? customValues = $none,
          List<int>? assignedUsers,
          String? blockedNote,
          bool? clientRequirementStatus,
          Object? dueDate = $none,
          String? dueDateReason,
          Object? finishDate = $none,
          Object? taskReference = $none,
          Object? issueReference = $none,
          bool? isBlockedStatus,
          bool? isClosedStatus,
          Object? relatedSprint = $none,
          List<DataStoryPoint>? storyPoints,
          bool? teamRequirementStatus}) =>
      $apply(FieldCopyWithData({
        if (jobId != null) #jobId: jobId,
        if (referenceNumber != null) #referenceNumber: referenceNumber,
        if (jobTags != $none) #jobTags: jobTags,
        if (jobOwner != null) #jobOwner: jobOwner,
        if (jobStatus != null) #jobStatus: jobStatus,
        if (fromProject != null) #fromProject: fromProject,
        if (jobName != null) #jobName: jobName,
        if (jobWatchers != null) #jobWatchers: jobWatchers,
        if (jobPermalink != null) #jobPermalink: jobPermalink,
        if (userAssigned != $none) #userAssigned: userAssigned,
        if (jobDescription != $none) #jobDescription: jobDescription,
        if (creationDate != null) #creationDate: creationDate,
        if (modifiedDate != $none) #modifiedDate: modifiedDate,
        if (customValues != $none) #customValues: customValues,
        if (assignedUsers != null) #assignedUsers: assignedUsers,
        if (blockedNote != null) #blockedNote: blockedNote,
        if (clientRequirementStatus != null)
          #clientRequirementStatus: clientRequirementStatus,
        if (dueDate != $none) #dueDate: dueDate,
        if (dueDateReason != null) #dueDateReason: dueDateReason,
        if (finishDate != $none) #finishDate: finishDate,
        if (taskReference != $none) #taskReference: taskReference,
        if (issueReference != $none) #issueReference: issueReference,
        if (isBlockedStatus != null) #isBlockedStatus: isBlockedStatus,
        if (isClosedStatus != null) #isClosedStatus: isClosedStatus,
        if (relatedSprint != $none) #relatedSprint: relatedSprint,
        if (storyPoints != null) #storyPoints: storyPoints,
        if (teamRequirementStatus != null)
          #teamRequirementStatus: teamRequirementStatus
      }));
  @override
  TaigaUserStoryData $make(CopyWithData data) => TaigaUserStoryData(
      jobId: data.get(#jobId, or: $value.jobId),
      referenceNumber: data.get(#referenceNumber, or: $value.referenceNumber),
      jobTags: data.get(#jobTags, or: $value.jobTags),
      jobOwner: data.get(#jobOwner, or: $value.jobOwner),
      jobStatus: data.get(#jobStatus, or: $value.jobStatus),
      fromProject: data.get(#fromProject, or: $value.fromProject),
      jobName: data.get(#jobName, or: $value.jobName),
      jobWatchers: data.get(#jobWatchers, or: $value.jobWatchers),
      jobPermalink: data.get(#jobPermalink, or: $value.jobPermalink),
      userAssigned: data.get(#userAssigned, or: $value.userAssigned),
      jobDescription: data.get(#jobDescription, or: $value.jobDescription),
      creationDate: data.get(#creationDate, or: $value.creationDate),
      modifiedDate: data.get(#modifiedDate, or: $value.modifiedDate),
      customValues: data.get(#customValues, or: $value.customValues),
      assignedUsers: data.get(#assignedUsers, or: $value.assignedUsers),
      blockedNote: data.get(#blockedNote, or: $value.blockedNote),
      clientRequirementStatus: data.get(#clientRequirementStatus,
          or: $value.clientRequirementStatus),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      dueDateReason: data.get(#dueDateReason, or: $value.dueDateReason),
      finishDate: data.get(#finishDate, or: $value.finishDate),
      taskReference: data.get(#taskReference, or: $value.taskReference),
      issueReference: data.get(#issueReference, or: $value.issueReference),
      isBlockedStatus: data.get(#isBlockedStatus, or: $value.isBlockedStatus),
      isClosedStatus: data.get(#isClosedStatus, or: $value.isClosedStatus),
      relatedSprint: data.get(#relatedSprint, or: $value.relatedSprint),
      storyPoints: data.get(#storyPoints, or: $value.storyPoints),
      teamRequirementStatus:
          data.get(#teamRequirementStatus, or: $value.teamRequirementStatus));

  @override
  TaigaUserStoryDataCopyWith<$R2, TaigaUserStoryData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaUserStoryDataCopyWithImpl($value, $cast, t);
}

class TaigaTaskDataMapper extends ClassMapperBase<TaigaTaskData> {
  TaigaTaskDataMapper._();

  static TaigaTaskDataMapper? _instance;
  static TaigaTaskDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaTaskDataMapper._());
      TaigaDataMapper.ensureInitialized();
      TaigaUserMapper.ensureInitialized();
      TaigaStatusMapper.ensureInitialized();
      TaigaProjectMapper.ensureInitialized();
      TaigaSprintDataMapper.ensureInitialized();
      TaigaUserStoryDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaTaskData';

  static int _$jobId(TaigaTaskData v) => v.jobId;
  static const Field<TaigaTaskData, int> _f$jobId =
      Field('jobId', _$jobId, key: 'id');
  static int _$referenceNumber(TaigaTaskData v) => v.referenceNumber;
  static const Field<TaigaTaskData, int> _f$referenceNumber =
      Field('referenceNumber', _$referenceNumber, key: 'ref');
  static List<String>? _$jobTags(TaigaTaskData v) => v.jobTags;
  static const Field<TaigaTaskData, List<String>> _f$jobTags =
      Field('jobTags', _$jobTags, key: 'tags');
  static TaigaUser _$jobOwner(TaigaTaskData v) => v.jobOwner;
  static const Field<TaigaTaskData, TaigaUser> _f$jobOwner =
      Field('jobOwner', _$jobOwner, key: 'owner');
  static TaigaStatus _$jobStatus(TaigaTaskData v) => v.jobStatus;
  static const Field<TaigaTaskData, TaigaStatus> _f$jobStatus =
      Field('jobStatus', _$jobStatus, key: 'status');
  static TaigaProject _$fromProject(TaigaTaskData v) => v.fromProject;
  static const Field<TaigaTaskData, TaigaProject> _f$fromProject =
      Field('fromProject', _$fromProject, key: 'project');
  static String _$jobName(TaigaTaskData v) => v.jobName;
  static const Field<TaigaTaskData, String> _f$jobName =
      Field('jobName', _$jobName, key: 'subject');
  static List<int> _$jobWatchers(TaigaTaskData v) => v.jobWatchers;
  static const Field<TaigaTaskData, List<int>> _f$jobWatchers =
      Field('jobWatchers', _$jobWatchers, key: 'watchers');
  static String _$jobPermalink(TaigaTaskData v) => v.jobPermalink;
  static const Field<TaigaTaskData, String> _f$jobPermalink =
      Field('jobPermalink', _$jobPermalink, key: 'permalink');
  static TaigaUser? _$userAssigned(TaigaTaskData v) => v.userAssigned;
  static const Field<TaigaTaskData, TaigaUser> _f$userAssigned =
      Field('userAssigned', _$userAssigned, key: 'assigned_to');
  static String? _$jobDescription(TaigaTaskData v) => v.jobDescription;
  static const Field<TaigaTaskData, String> _f$jobDescription =
      Field('jobDescription', _$jobDescription, key: 'description');
  static DateTime _$creationDate(TaigaTaskData v) => v.creationDate;
  static const Field<TaigaTaskData, DateTime> _f$creationDate =
      Field('creationDate', _$creationDate, key: 'created_date');
  static DateTime? _$modifiedDate(TaigaTaskData v) => v.modifiedDate;
  static const Field<TaigaTaskData, DateTime> _f$modifiedDate =
      Field('modifiedDate', _$modifiedDate, key: 'modified_date');
  static Map<String, dynamic>? _$customValues(TaigaTaskData v) =>
      v.customValues;
  static const Field<TaigaTaskData, Map<String, dynamic>> _f$customValues =
      Field('customValues', _$customValues, key: 'custom_attributes_values');
  static String _$blockedNote(TaigaTaskData v) => v.blockedNote;
  static const Field<TaigaTaskData, String> _f$blockedNote =
      Field('blockedNote', _$blockedNote, key: 'blocked_note');
  static DateTime? _$dueDate(TaigaTaskData v) => v.dueDate;
  static const Field<TaigaTaskData, DateTime> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date');
  static String _$dueDateReason(TaigaTaskData v) => v.dueDateReason;
  static const Field<TaigaTaskData, String> _f$dueDateReason =
      Field('dueDateReason', _$dueDateReason, key: 'due_date_reason');
  static DateTime? _$finishedDate(TaigaTaskData v) => v.finishedDate;
  static const Field<TaigaTaskData, DateTime> _f$finishedDate =
      Field('finishedDate', _$finishedDate, key: 'finished_date');
  static bool _$isBlockedStatus(TaigaTaskData v) => v.isBlockedStatus;
  static const Field<TaigaTaskData, bool> _f$isBlockedStatus =
      Field('isBlockedStatus', _$isBlockedStatus, key: 'is_blocked');
  static bool _$isIocaineStatus(TaigaTaskData v) => v.isIocaineStatus;
  static const Field<TaigaTaskData, bool> _f$isIocaineStatus =
      Field('isIocaineStatus', _$isIocaineStatus, key: 'is_iocaine');
  static TaigaSprintData? _$relatedSprint(TaigaTaskData v) => v.relatedSprint;
  static const Field<TaigaTaskData, TaigaSprintData> _f$relatedSprint =
      Field('relatedSprint', _$relatedSprint, key: 'milestone');
  static List<dynamic> _$promotedToList(TaigaTaskData v) => v.promotedToList;
  static const Field<TaigaTaskData, List<dynamic>> _f$promotedToList =
      Field('promotedToList', _$promotedToList, key: 'promoted_to');
  static int _$taskboardOrder(TaigaTaskData v) => v.taskboardOrder;
  static const Field<TaigaTaskData, int> _f$taskboardOrder =
      Field('taskboardOrder', _$taskboardOrder, key: 'taskboard_order');
  static int _$usOrder(TaigaTaskData v) => v.usOrder;
  static const Field<TaigaTaskData, int> _f$usOrder =
      Field('usOrder', _$usOrder, key: 'us_order');
  static TaigaUserStoryData _$userStory(TaigaTaskData v) => v.userStory;
  static const Field<TaigaTaskData, TaigaUserStoryData> _f$userStory =
      Field('userStory', _$userStory, key: 'user_story');

  @override
  final Map<Symbol, Field<TaigaTaskData, dynamic>> fields = const {
    #jobId: _f$jobId,
    #referenceNumber: _f$referenceNumber,
    #jobTags: _f$jobTags,
    #jobOwner: _f$jobOwner,
    #jobStatus: _f$jobStatus,
    #fromProject: _f$fromProject,
    #jobName: _f$jobName,
    #jobWatchers: _f$jobWatchers,
    #jobPermalink: _f$jobPermalink,
    #userAssigned: _f$userAssigned,
    #jobDescription: _f$jobDescription,
    #creationDate: _f$creationDate,
    #modifiedDate: _f$modifiedDate,
    #customValues: _f$customValues,
    #blockedNote: _f$blockedNote,
    #dueDate: _f$dueDate,
    #dueDateReason: _f$dueDateReason,
    #finishedDate: _f$finishedDate,
    #isBlockedStatus: _f$isBlockedStatus,
    #isIocaineStatus: _f$isIocaineStatus,
    #relatedSprint: _f$relatedSprint,
    #promotedToList: _f$promotedToList,
    #taskboardOrder: _f$taskboardOrder,
    #usOrder: _f$usOrder,
    #userStory: _f$userStory,
  };

  static TaigaTaskData _instantiate(DecodingData data) {
    return TaigaTaskData(
        jobId: data.dec(_f$jobId),
        referenceNumber: data.dec(_f$referenceNumber),
        jobTags: data.dec(_f$jobTags),
        jobOwner: data.dec(_f$jobOwner),
        jobStatus: data.dec(_f$jobStatus),
        fromProject: data.dec(_f$fromProject),
        jobName: data.dec(_f$jobName),
        jobWatchers: data.dec(_f$jobWatchers),
        jobPermalink: data.dec(_f$jobPermalink),
        userAssigned: data.dec(_f$userAssigned),
        jobDescription: data.dec(_f$jobDescription),
        creationDate: data.dec(_f$creationDate),
        modifiedDate: data.dec(_f$modifiedDate),
        customValues: data.dec(_f$customValues),
        blockedNote: data.dec(_f$blockedNote),
        dueDate: data.dec(_f$dueDate),
        dueDateReason: data.dec(_f$dueDateReason),
        finishedDate: data.dec(_f$finishedDate),
        isBlockedStatus: data.dec(_f$isBlockedStatus),
        isIocaineStatus: data.dec(_f$isIocaineStatus),
        relatedSprint: data.dec(_f$relatedSprint),
        promotedToList: data.dec(_f$promotedToList),
        taskboardOrder: data.dec(_f$taskboardOrder),
        usOrder: data.dec(_f$usOrder),
        userStory: data.dec(_f$userStory));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaTaskData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaTaskData>(map);
  }

  static TaigaTaskData fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaTaskData>(json);
  }
}

mixin TaigaTaskDataMappable {
  String toJson() {
    return TaigaTaskDataMapper.ensureInitialized()
        .encodeJson<TaigaTaskData>(this as TaigaTaskData);
  }

  Map<String, dynamic> toMap() {
    return TaigaTaskDataMapper.ensureInitialized()
        .encodeMap<TaigaTaskData>(this as TaigaTaskData);
  }

  TaigaTaskDataCopyWith<TaigaTaskData, TaigaTaskData, TaigaTaskData>
      get copyWith => _TaigaTaskDataCopyWithImpl(
          this as TaigaTaskData, $identity, $identity);
  @override
  String toString() {
    return TaigaTaskDataMapper.ensureInitialized()
        .stringifyValue(this as TaigaTaskData);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaTaskDataMapper.ensureInitialized()
                .isValueEqual(this as TaigaTaskData, other));
  }

  @override
  int get hashCode {
    return TaigaTaskDataMapper.ensureInitialized()
        .hashValue(this as TaigaTaskData);
  }
}

extension TaigaTaskDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaTaskData, $Out> {
  TaigaTaskDataCopyWith<$R, TaigaTaskData, $Out> get $asTaigaTaskData =>
      $base.as((v, t, t2) => _TaigaTaskDataCopyWithImpl(v, t, t2));
}

abstract class TaigaTaskDataCopyWith<$R, $In extends TaigaTaskData, $Out>
    implements TaigaDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get jobTags;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner;
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus;
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get jobWatchers;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get customValues;
  TaigaSprintDataCopyWith<$R, TaigaSprintData, TaigaSprintData>?
      get relatedSprint;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get promotedToList;
  TaigaUserStoryDataCopyWith<$R, TaigaUserStoryData, TaigaUserStoryData>
      get userStory;
  @override
  $R call(
      {int? jobId,
      int? referenceNumber,
      List<String>? jobTags,
      TaigaUser? jobOwner,
      TaigaStatus? jobStatus,
      TaigaProject? fromProject,
      String? jobName,
      List<int>? jobWatchers,
      String? jobPermalink,
      TaigaUser? userAssigned,
      String? jobDescription,
      DateTime? creationDate,
      DateTime? modifiedDate,
      Map<String, dynamic>? customValues,
      String? blockedNote,
      DateTime? dueDate,
      String? dueDateReason,
      DateTime? finishedDate,
      bool? isBlockedStatus,
      bool? isIocaineStatus,
      TaigaSprintData? relatedSprint,
      List<dynamic>? promotedToList,
      int? taskboardOrder,
      int? usOrder,
      TaigaUserStoryData? userStory});
  TaigaTaskDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaTaskDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaTaskData, $Out>
    implements TaigaTaskDataCopyWith<$R, TaigaTaskData, $Out> {
  _TaigaTaskDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaTaskData> $mapper =
      TaigaTaskDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get jobTags =>
      $value.jobTags != null
          ? ListCopyWith(
              $value.jobTags!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(jobTags: v))
          : null;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner =>
      $value.jobOwner.copyWith.$chain((v) => call(jobOwner: v));
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus =>
      $value.jobStatus.copyWith.$chain((v) => call(jobStatus: v));
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject =>
      $value.fromProject.copyWith.$chain((v) => call(fromProject: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get jobWatchers =>
      ListCopyWith(
          $value.jobWatchers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(jobWatchers: v));
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned =>
      $value.userAssigned?.copyWith.$chain((v) => call(userAssigned: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get customValues => $value.customValues != null
          ? MapCopyWith(
              $value.customValues!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(customValues: v))
          : null;
  @override
  TaigaSprintDataCopyWith<$R, TaigaSprintData, TaigaSprintData>?
      get relatedSprint =>
          $value.relatedSprint?.copyWith.$chain((v) => call(relatedSprint: v));
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get promotedToList => ListCopyWith(
          $value.promotedToList,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(promotedToList: v));
  @override
  TaigaUserStoryDataCopyWith<$R, TaigaUserStoryData, TaigaUserStoryData>
      get userStory =>
          $value.userStory.copyWith.$chain((v) => call(userStory: v));
  @override
  $R call(
          {int? jobId,
          int? referenceNumber,
          Object? jobTags = $none,
          TaigaUser? jobOwner,
          TaigaStatus? jobStatus,
          TaigaProject? fromProject,
          String? jobName,
          List<int>? jobWatchers,
          String? jobPermalink,
          Object? userAssigned = $none,
          Object? jobDescription = $none,
          DateTime? creationDate,
          Object? modifiedDate = $none,
          Object? customValues = $none,
          String? blockedNote,
          Object? dueDate = $none,
          String? dueDateReason,
          Object? finishedDate = $none,
          bool? isBlockedStatus,
          bool? isIocaineStatus,
          Object? relatedSprint = $none,
          List<dynamic>? promotedToList,
          int? taskboardOrder,
          int? usOrder,
          TaigaUserStoryData? userStory}) =>
      $apply(FieldCopyWithData({
        if (jobId != null) #jobId: jobId,
        if (referenceNumber != null) #referenceNumber: referenceNumber,
        if (jobTags != $none) #jobTags: jobTags,
        if (jobOwner != null) #jobOwner: jobOwner,
        if (jobStatus != null) #jobStatus: jobStatus,
        if (fromProject != null) #fromProject: fromProject,
        if (jobName != null) #jobName: jobName,
        if (jobWatchers != null) #jobWatchers: jobWatchers,
        if (jobPermalink != null) #jobPermalink: jobPermalink,
        if (userAssigned != $none) #userAssigned: userAssigned,
        if (jobDescription != $none) #jobDescription: jobDescription,
        if (creationDate != null) #creationDate: creationDate,
        if (modifiedDate != $none) #modifiedDate: modifiedDate,
        if (customValues != $none) #customValues: customValues,
        if (blockedNote != null) #blockedNote: blockedNote,
        if (dueDate != $none) #dueDate: dueDate,
        if (dueDateReason != null) #dueDateReason: dueDateReason,
        if (finishedDate != $none) #finishedDate: finishedDate,
        if (isBlockedStatus != null) #isBlockedStatus: isBlockedStatus,
        if (isIocaineStatus != null) #isIocaineStatus: isIocaineStatus,
        if (relatedSprint != $none) #relatedSprint: relatedSprint,
        if (promotedToList != null) #promotedToList: promotedToList,
        if (taskboardOrder != null) #taskboardOrder: taskboardOrder,
        if (usOrder != null) #usOrder: usOrder,
        if (userStory != null) #userStory: userStory
      }));
  @override
  TaigaTaskData $make(CopyWithData data) => TaigaTaskData(
      jobId: data.get(#jobId, or: $value.jobId),
      referenceNumber: data.get(#referenceNumber, or: $value.referenceNumber),
      jobTags: data.get(#jobTags, or: $value.jobTags),
      jobOwner: data.get(#jobOwner, or: $value.jobOwner),
      jobStatus: data.get(#jobStatus, or: $value.jobStatus),
      fromProject: data.get(#fromProject, or: $value.fromProject),
      jobName: data.get(#jobName, or: $value.jobName),
      jobWatchers: data.get(#jobWatchers, or: $value.jobWatchers),
      jobPermalink: data.get(#jobPermalink, or: $value.jobPermalink),
      userAssigned: data.get(#userAssigned, or: $value.userAssigned),
      jobDescription: data.get(#jobDescription, or: $value.jobDescription),
      creationDate: data.get(#creationDate, or: $value.creationDate),
      modifiedDate: data.get(#modifiedDate, or: $value.modifiedDate),
      customValues: data.get(#customValues, or: $value.customValues),
      blockedNote: data.get(#blockedNote, or: $value.blockedNote),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      dueDateReason: data.get(#dueDateReason, or: $value.dueDateReason),
      finishedDate: data.get(#finishedDate, or: $value.finishedDate),
      isBlockedStatus: data.get(#isBlockedStatus, or: $value.isBlockedStatus),
      isIocaineStatus: data.get(#isIocaineStatus, or: $value.isIocaineStatus),
      relatedSprint: data.get(#relatedSprint, or: $value.relatedSprint),
      promotedToList: data.get(#promotedToList, or: $value.promotedToList),
      taskboardOrder: data.get(#taskboardOrder, or: $value.taskboardOrder),
      usOrder: data.get(#usOrder, or: $value.usOrder),
      userStory: data.get(#userStory, or: $value.userStory));

  @override
  TaigaTaskDataCopyWith<$R2, TaigaTaskData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaTaskDataCopyWithImpl($value, $cast, t);
}

class TaigaIssueDataMapper extends ClassMapperBase<TaigaIssueData> {
  TaigaIssueDataMapper._();

  static TaigaIssueDataMapper? _instance;
  static TaigaIssueDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaIssueDataMapper._());
      TaigaDataMapper.ensureInitialized();
      TaigaUserMapper.ensureInitialized();
      TaigaStatusMapper.ensureInitialized();
      TaigaProjectMapper.ensureInitialized();
      TaigaSprintDataMapper.ensureInitialized();
      DataDetailsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaIssueData';

  static int _$jobId(TaigaIssueData v) => v.jobId;
  static const Field<TaigaIssueData, int> _f$jobId =
      Field('jobId', _$jobId, key: 'id');
  static int _$referenceNumber(TaigaIssueData v) => v.referenceNumber;
  static const Field<TaigaIssueData, int> _f$referenceNumber =
      Field('referenceNumber', _$referenceNumber, key: 'ref');
  static List<String>? _$jobTags(TaigaIssueData v) => v.jobTags;
  static const Field<TaigaIssueData, List<String>> _f$jobTags =
      Field('jobTags', _$jobTags, key: 'tags');
  static TaigaUser _$jobOwner(TaigaIssueData v) => v.jobOwner;
  static const Field<TaigaIssueData, TaigaUser> _f$jobOwner =
      Field('jobOwner', _$jobOwner, key: 'owner');
  static TaigaStatus _$jobStatus(TaigaIssueData v) => v.jobStatus;
  static const Field<TaigaIssueData, TaigaStatus> _f$jobStatus =
      Field('jobStatus', _$jobStatus, key: 'status');
  static TaigaProject _$fromProject(TaigaIssueData v) => v.fromProject;
  static const Field<TaigaIssueData, TaigaProject> _f$fromProject =
      Field('fromProject', _$fromProject, key: 'project');
  static String _$jobName(TaigaIssueData v) => v.jobName;
  static const Field<TaigaIssueData, String> _f$jobName =
      Field('jobName', _$jobName, key: 'subject');
  static List<int> _$jobWatchers(TaigaIssueData v) => v.jobWatchers;
  static const Field<TaigaIssueData, List<int>> _f$jobWatchers =
      Field('jobWatchers', _$jobWatchers, key: 'watchers');
  static String _$jobPermalink(TaigaIssueData v) => v.jobPermalink;
  static const Field<TaigaIssueData, String> _f$jobPermalink =
      Field('jobPermalink', _$jobPermalink, key: 'permalink');
  static TaigaUser? _$userAssigned(TaigaIssueData v) => v.userAssigned;
  static const Field<TaigaIssueData, TaigaUser> _f$userAssigned =
      Field('userAssigned', _$userAssigned, key: 'assigned_to');
  static String? _$jobDescription(TaigaIssueData v) => v.jobDescription;
  static const Field<TaigaIssueData, String> _f$jobDescription =
      Field('jobDescription', _$jobDescription, key: 'description');
  static DateTime _$creationDate(TaigaIssueData v) => v.creationDate;
  static const Field<TaigaIssueData, DateTime> _f$creationDate =
      Field('creationDate', _$creationDate, key: 'created_date');
  static DateTime? _$modifiedDate(TaigaIssueData v) => v.modifiedDate;
  static const Field<TaigaIssueData, DateTime> _f$modifiedDate =
      Field('modifiedDate', _$modifiedDate, key: 'modified_date');
  static Map<String, dynamic>? _$customValues(TaigaIssueData v) =>
      v.customValues;
  static const Field<TaigaIssueData, Map<String, dynamic>> _f$customValues =
      Field('customValues', _$customValues, key: 'custom_attributes_values');
  static DateTime? _$dueDate(TaigaIssueData v) => v.dueDate;
  static const Field<TaigaIssueData, DateTime> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date');
  static String _$dueDateReason(TaigaIssueData v) => v.dueDateReason;
  static const Field<TaigaIssueData, String> _f$dueDateReason =
      Field('dueDateReason', _$dueDateReason, key: 'due_date_reason');
  static DateTime? _$finishedDate(TaigaIssueData v) => v.finishedDate;
  static const Field<TaigaIssueData, DateTime> _f$finishedDate =
      Field('finishedDate', _$finishedDate, key: 'finished_date');
  static TaigaSprintData? _$issueRelatedSprint(TaigaIssueData v) =>
      v.issueRelatedSprint;
  static const Field<TaigaIssueData, TaigaSprintData> _f$issueRelatedSprint =
      Field('issueRelatedSprint', _$issueRelatedSprint, key: 'milestone');
  static DataDetails _$issuePriority(TaigaIssueData v) => v.issuePriority;
  static const Field<TaigaIssueData, DataDetails> _f$issuePriority =
      Field('issuePriority', _$issuePriority, key: 'priority');
  static List<int?> _$promotedToList(TaigaIssueData v) => v.promotedToList;
  static const Field<TaigaIssueData, List<int?>> _f$promotedToList =
      Field('promotedToList', _$promotedToList, key: 'promoted_to');
  static DataDetails _$issueSeverity(TaigaIssueData v) => v.issueSeverity;
  static const Field<TaigaIssueData, DataDetails> _f$issueSeverity =
      Field('issueSeverity', _$issueSeverity, key: 'severity');
  static DataDetails _$issueType(TaigaIssueData v) => v.issueType;
  static const Field<TaigaIssueData, DataDetails> _f$issueType =
      Field('issueType', _$issueType, key: 'type');

  @override
  final Map<Symbol, Field<TaigaIssueData, dynamic>> fields = const {
    #jobId: _f$jobId,
    #referenceNumber: _f$referenceNumber,
    #jobTags: _f$jobTags,
    #jobOwner: _f$jobOwner,
    #jobStatus: _f$jobStatus,
    #fromProject: _f$fromProject,
    #jobName: _f$jobName,
    #jobWatchers: _f$jobWatchers,
    #jobPermalink: _f$jobPermalink,
    #userAssigned: _f$userAssigned,
    #jobDescription: _f$jobDescription,
    #creationDate: _f$creationDate,
    #modifiedDate: _f$modifiedDate,
    #customValues: _f$customValues,
    #dueDate: _f$dueDate,
    #dueDateReason: _f$dueDateReason,
    #finishedDate: _f$finishedDate,
    #issueRelatedSprint: _f$issueRelatedSprint,
    #issuePriority: _f$issuePriority,
    #promotedToList: _f$promotedToList,
    #issueSeverity: _f$issueSeverity,
    #issueType: _f$issueType,
  };

  static TaigaIssueData _instantiate(DecodingData data) {
    return TaigaIssueData(
        jobId: data.dec(_f$jobId),
        referenceNumber: data.dec(_f$referenceNumber),
        jobTags: data.dec(_f$jobTags),
        jobOwner: data.dec(_f$jobOwner),
        jobStatus: data.dec(_f$jobStatus),
        fromProject: data.dec(_f$fromProject),
        jobName: data.dec(_f$jobName),
        jobWatchers: data.dec(_f$jobWatchers),
        jobPermalink: data.dec(_f$jobPermalink),
        userAssigned: data.dec(_f$userAssigned),
        jobDescription: data.dec(_f$jobDescription),
        creationDate: data.dec(_f$creationDate),
        modifiedDate: data.dec(_f$modifiedDate),
        customValues: data.dec(_f$customValues),
        dueDate: data.dec(_f$dueDate),
        dueDateReason: data.dec(_f$dueDateReason),
        finishedDate: data.dec(_f$finishedDate),
        issueRelatedSprint: data.dec(_f$issueRelatedSprint),
        issuePriority: data.dec(_f$issuePriority),
        promotedToList: data.dec(_f$promotedToList),
        issueSeverity: data.dec(_f$issueSeverity),
        issueType: data.dec(_f$issueType));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaIssueData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaIssueData>(map);
  }

  static TaigaIssueData fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaIssueData>(json);
  }
}

mixin TaigaIssueDataMappable {
  String toJson() {
    return TaigaIssueDataMapper.ensureInitialized()
        .encodeJson<TaigaIssueData>(this as TaigaIssueData);
  }

  Map<String, dynamic> toMap() {
    return TaigaIssueDataMapper.ensureInitialized()
        .encodeMap<TaigaIssueData>(this as TaigaIssueData);
  }

  TaigaIssueDataCopyWith<TaigaIssueData, TaigaIssueData, TaigaIssueData>
      get copyWith => _TaigaIssueDataCopyWithImpl(
          this as TaigaIssueData, $identity, $identity);
  @override
  String toString() {
    return TaigaIssueDataMapper.ensureInitialized()
        .stringifyValue(this as TaigaIssueData);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaIssueDataMapper.ensureInitialized()
                .isValueEqual(this as TaigaIssueData, other));
  }

  @override
  int get hashCode {
    return TaigaIssueDataMapper.ensureInitialized()
        .hashValue(this as TaigaIssueData);
  }
}

extension TaigaIssueDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaIssueData, $Out> {
  TaigaIssueDataCopyWith<$R, TaigaIssueData, $Out> get $asTaigaIssueData =>
      $base.as((v, t, t2) => _TaigaIssueDataCopyWithImpl(v, t, t2));
}

abstract class TaigaIssueDataCopyWith<$R, $In extends TaigaIssueData, $Out>
    implements TaigaDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get jobTags;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner;
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus;
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get jobWatchers;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get customValues;
  TaigaSprintDataCopyWith<$R, TaigaSprintData, TaigaSprintData>?
      get issueRelatedSprint;
  DataDetailsCopyWith<$R, DataDetails, DataDetails> get issuePriority;
  ListCopyWith<$R, int?, ObjectCopyWith<$R, int?, int?>?> get promotedToList;
  DataDetailsCopyWith<$R, DataDetails, DataDetails> get issueSeverity;
  DataDetailsCopyWith<$R, DataDetails, DataDetails> get issueType;
  @override
  $R call(
      {int? jobId,
      int? referenceNumber,
      List<String>? jobTags,
      TaigaUser? jobOwner,
      TaigaStatus? jobStatus,
      TaigaProject? fromProject,
      String? jobName,
      List<int>? jobWatchers,
      String? jobPermalink,
      TaigaUser? userAssigned,
      String? jobDescription,
      DateTime? creationDate,
      DateTime? modifiedDate,
      Map<String, dynamic>? customValues,
      DateTime? dueDate,
      String? dueDateReason,
      DateTime? finishedDate,
      TaigaSprintData? issueRelatedSprint,
      DataDetails? issuePriority,
      List<int?>? promotedToList,
      DataDetails? issueSeverity,
      DataDetails? issueType});
  TaigaIssueDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TaigaIssueDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaIssueData, $Out>
    implements TaigaIssueDataCopyWith<$R, TaigaIssueData, $Out> {
  _TaigaIssueDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaIssueData> $mapper =
      TaigaIssueDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get jobTags =>
      $value.jobTags != null
          ? ListCopyWith(
              $value.jobTags!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(jobTags: v))
          : null;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner =>
      $value.jobOwner.copyWith.$chain((v) => call(jobOwner: v));
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus =>
      $value.jobStatus.copyWith.$chain((v) => call(jobStatus: v));
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject =>
      $value.fromProject.copyWith.$chain((v) => call(fromProject: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get jobWatchers =>
      ListCopyWith(
          $value.jobWatchers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(jobWatchers: v));
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned =>
      $value.userAssigned?.copyWith.$chain((v) => call(userAssigned: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get customValues => $value.customValues != null
          ? MapCopyWith(
              $value.customValues!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(customValues: v))
          : null;
  @override
  TaigaSprintDataCopyWith<$R, TaigaSprintData, TaigaSprintData>?
      get issueRelatedSprint => $value.issueRelatedSprint?.copyWith
          .$chain((v) => call(issueRelatedSprint: v));
  @override
  DataDetailsCopyWith<$R, DataDetails, DataDetails> get issuePriority =>
      $value.issuePriority.copyWith.$chain((v) => call(issuePriority: v));
  @override
  ListCopyWith<$R, int?, ObjectCopyWith<$R, int?, int?>?> get promotedToList =>
      ListCopyWith(
          $value.promotedToList,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(promotedToList: v));
  @override
  DataDetailsCopyWith<$R, DataDetails, DataDetails> get issueSeverity =>
      $value.issueSeverity.copyWith.$chain((v) => call(issueSeverity: v));
  @override
  DataDetailsCopyWith<$R, DataDetails, DataDetails> get issueType =>
      $value.issueType.copyWith.$chain((v) => call(issueType: v));
  @override
  $R call(
          {int? jobId,
          int? referenceNumber,
          Object? jobTags = $none,
          TaigaUser? jobOwner,
          TaigaStatus? jobStatus,
          TaigaProject? fromProject,
          String? jobName,
          List<int>? jobWatchers,
          String? jobPermalink,
          Object? userAssigned = $none,
          Object? jobDescription = $none,
          DateTime? creationDate,
          Object? modifiedDate = $none,
          Object? customValues = $none,
          Object? dueDate = $none,
          String? dueDateReason,
          Object? finishedDate = $none,
          Object? issueRelatedSprint = $none,
          DataDetails? issuePriority,
          List<int?>? promotedToList,
          DataDetails? issueSeverity,
          DataDetails? issueType}) =>
      $apply(FieldCopyWithData({
        if (jobId != null) #jobId: jobId,
        if (referenceNumber != null) #referenceNumber: referenceNumber,
        if (jobTags != $none) #jobTags: jobTags,
        if (jobOwner != null) #jobOwner: jobOwner,
        if (jobStatus != null) #jobStatus: jobStatus,
        if (fromProject != null) #fromProject: fromProject,
        if (jobName != null) #jobName: jobName,
        if (jobWatchers != null) #jobWatchers: jobWatchers,
        if (jobPermalink != null) #jobPermalink: jobPermalink,
        if (userAssigned != $none) #userAssigned: userAssigned,
        if (jobDescription != $none) #jobDescription: jobDescription,
        if (creationDate != null) #creationDate: creationDate,
        if (modifiedDate != $none) #modifiedDate: modifiedDate,
        if (customValues != $none) #customValues: customValues,
        if (dueDate != $none) #dueDate: dueDate,
        if (dueDateReason != null) #dueDateReason: dueDateReason,
        if (finishedDate != $none) #finishedDate: finishedDate,
        if (issueRelatedSprint != $none)
          #issueRelatedSprint: issueRelatedSprint,
        if (issuePriority != null) #issuePriority: issuePriority,
        if (promotedToList != null) #promotedToList: promotedToList,
        if (issueSeverity != null) #issueSeverity: issueSeverity,
        if (issueType != null) #issueType: issueType
      }));
  @override
  TaigaIssueData $make(CopyWithData data) => TaigaIssueData(
      jobId: data.get(#jobId, or: $value.jobId),
      referenceNumber: data.get(#referenceNumber, or: $value.referenceNumber),
      jobTags: data.get(#jobTags, or: $value.jobTags),
      jobOwner: data.get(#jobOwner, or: $value.jobOwner),
      jobStatus: data.get(#jobStatus, or: $value.jobStatus),
      fromProject: data.get(#fromProject, or: $value.fromProject),
      jobName: data.get(#jobName, or: $value.jobName),
      jobWatchers: data.get(#jobWatchers, or: $value.jobWatchers),
      jobPermalink: data.get(#jobPermalink, or: $value.jobPermalink),
      userAssigned: data.get(#userAssigned, or: $value.userAssigned),
      jobDescription: data.get(#jobDescription, or: $value.jobDescription),
      creationDate: data.get(#creationDate, or: $value.creationDate),
      modifiedDate: data.get(#modifiedDate, or: $value.modifiedDate),
      customValues: data.get(#customValues, or: $value.customValues),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      dueDateReason: data.get(#dueDateReason, or: $value.dueDateReason),
      finishedDate: data.get(#finishedDate, or: $value.finishedDate),
      issueRelatedSprint:
          data.get(#issueRelatedSprint, or: $value.issueRelatedSprint),
      issuePriority: data.get(#issuePriority, or: $value.issuePriority),
      promotedToList: data.get(#promotedToList, or: $value.promotedToList),
      issueSeverity: data.get(#issueSeverity, or: $value.issueSeverity),
      issueType: data.get(#issueType, or: $value.issueType));

  @override
  TaigaIssueDataCopyWith<$R2, TaigaIssueData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaIssueDataCopyWithImpl($value, $cast, t);
}

class TaigaEpicDataMapper extends ClassMapperBase<TaigaEpicData> {
  TaigaEpicDataMapper._();

  static TaigaEpicDataMapper? _instance;
  static TaigaEpicDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaEpicDataMapper._());
      TaigaDataMapper.ensureInitialized();
      TaigaUserMapper.ensureInitialized();
      TaigaStatusMapper.ensureInitialized();
      TaigaProjectMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaEpicData';

  static int _$jobId(TaigaEpicData v) => v.jobId;
  static const Field<TaigaEpicData, int> _f$jobId =
      Field('jobId', _$jobId, key: 'id');
  static int _$referenceNumber(TaigaEpicData v) => v.referenceNumber;
  static const Field<TaigaEpicData, int> _f$referenceNumber =
      Field('referenceNumber', _$referenceNumber, key: 'ref');
  static List<String>? _$jobTags(TaigaEpicData v) => v.jobTags;
  static const Field<TaigaEpicData, List<String>> _f$jobTags =
      Field('jobTags', _$jobTags, key: 'tags');
  static TaigaUser _$jobOwner(TaigaEpicData v) => v.jobOwner;
  static const Field<TaigaEpicData, TaigaUser> _f$jobOwner =
      Field('jobOwner', _$jobOwner, key: 'owner');
  static TaigaStatus _$jobStatus(TaigaEpicData v) => v.jobStatus;
  static const Field<TaigaEpicData, TaigaStatus> _f$jobStatus =
      Field('jobStatus', _$jobStatus, key: 'status');
  static TaigaProject _$fromProject(TaigaEpicData v) => v.fromProject;
  static const Field<TaigaEpicData, TaigaProject> _f$fromProject =
      Field('fromProject', _$fromProject, key: 'project');
  static String _$jobName(TaigaEpicData v) => v.jobName;
  static const Field<TaigaEpicData, String> _f$jobName =
      Field('jobName', _$jobName, key: 'subject');
  static List<int> _$jobWatchers(TaigaEpicData v) => v.jobWatchers;
  static const Field<TaigaEpicData, List<int>> _f$jobWatchers =
      Field('jobWatchers', _$jobWatchers, key: 'watchers');
  static String _$jobPermalink(TaigaEpicData v) => v.jobPermalink;
  static const Field<TaigaEpicData, String> _f$jobPermalink =
      Field('jobPermalink', _$jobPermalink, key: 'permalink');
  static TaigaUser? _$userAssigned(TaigaEpicData v) => v.userAssigned;
  static const Field<TaigaEpicData, TaigaUser> _f$userAssigned =
      Field('userAssigned', _$userAssigned, key: 'assigned_to');
  static String? _$jobDescription(TaigaEpicData v) => v.jobDescription;
  static const Field<TaigaEpicData, String> _f$jobDescription =
      Field('jobDescription', _$jobDescription, key: 'description');
  static DateTime _$creationDate(TaigaEpicData v) => v.creationDate;
  static const Field<TaigaEpicData, DateTime> _f$creationDate =
      Field('creationDate', _$creationDate, key: 'created_date');
  static DateTime? _$modifiedDate(TaigaEpicData v) => v.modifiedDate;
  static const Field<TaigaEpicData, DateTime> _f$modifiedDate =
      Field('modifiedDate', _$modifiedDate, key: 'modified_date');
  static Map<String, dynamic>? _$customValues(TaigaEpicData v) =>
      v.customValues;
  static const Field<TaigaEpicData, Map<String, dynamic>> _f$customValues =
      Field('customValues', _$customValues, key: 'custom_attributes_values');
  static String _$color(TaigaEpicData v) => v.color;
  static const Field<TaigaEpicData, String> _f$color = Field('color', _$color);
  static int _$epicsOrder(TaigaEpicData v) => v.epicsOrder;
  static const Field<TaigaEpicData, int> _f$epicsOrder =
      Field('epicsOrder', _$epicsOrder, key: 'epics_order');
  static bool _$teamRequirementStatus(TaigaEpicData v) =>
      v.teamRequirementStatus;
  static const Field<TaigaEpicData, bool> _f$teamRequirementStatus = Field(
      'teamRequirementStatus', _$teamRequirementStatus,
      key: 'team_requirement');
  static bool _$clientRequirementStatus(TaigaEpicData v) =>
      v.clientRequirementStatus;
  static const Field<TaigaEpicData, bool> _f$clientRequirementStatus = Field(
      'clientRequirementStatus', _$clientRequirementStatus,
      key: 'client_requirement');

  @override
  final Map<Symbol, Field<TaigaEpicData, dynamic>> fields = const {
    #jobId: _f$jobId,
    #referenceNumber: _f$referenceNumber,
    #jobTags: _f$jobTags,
    #jobOwner: _f$jobOwner,
    #jobStatus: _f$jobStatus,
    #fromProject: _f$fromProject,
    #jobName: _f$jobName,
    #jobWatchers: _f$jobWatchers,
    #jobPermalink: _f$jobPermalink,
    #userAssigned: _f$userAssigned,
    #jobDescription: _f$jobDescription,
    #creationDate: _f$creationDate,
    #modifiedDate: _f$modifiedDate,
    #customValues: _f$customValues,
    #color: _f$color,
    #epicsOrder: _f$epicsOrder,
    #teamRequirementStatus: _f$teamRequirementStatus,
    #clientRequirementStatus: _f$clientRequirementStatus,
  };

  static TaigaEpicData _instantiate(DecodingData data) {
    return TaigaEpicData(
        jobId: data.dec(_f$jobId),
        referenceNumber: data.dec(_f$referenceNumber),
        jobTags: data.dec(_f$jobTags),
        jobOwner: data.dec(_f$jobOwner),
        jobStatus: data.dec(_f$jobStatus),
        fromProject: data.dec(_f$fromProject),
        jobName: data.dec(_f$jobName),
        jobWatchers: data.dec(_f$jobWatchers),
        jobPermalink: data.dec(_f$jobPermalink),
        userAssigned: data.dec(_f$userAssigned),
        jobDescription: data.dec(_f$jobDescription),
        creationDate: data.dec(_f$creationDate),
        modifiedDate: data.dec(_f$modifiedDate),
        customValues: data.dec(_f$customValues),
        color: data.dec(_f$color),
        epicsOrder: data.dec(_f$epicsOrder),
        teamRequirementStatus: data.dec(_f$teamRequirementStatus),
        clientRequirementStatus: data.dec(_f$clientRequirementStatus));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaEpicData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaEpicData>(map);
  }

  static TaigaEpicData fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaEpicData>(json);
  }
}

mixin TaigaEpicDataMappable {
  String toJson() {
    return TaigaEpicDataMapper.ensureInitialized()
        .encodeJson<TaigaEpicData>(this as TaigaEpicData);
  }

  Map<String, dynamic> toMap() {
    return TaigaEpicDataMapper.ensureInitialized()
        .encodeMap<TaigaEpicData>(this as TaigaEpicData);
  }

  TaigaEpicDataCopyWith<TaigaEpicData, TaigaEpicData, TaigaEpicData>
      get copyWith => _TaigaEpicDataCopyWithImpl(
          this as TaigaEpicData, $identity, $identity);
  @override
  String toString() {
    return TaigaEpicDataMapper.ensureInitialized()
        .stringifyValue(this as TaigaEpicData);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaEpicDataMapper.ensureInitialized()
                .isValueEqual(this as TaigaEpicData, other));
  }

  @override
  int get hashCode {
    return TaigaEpicDataMapper.ensureInitialized()
        .hashValue(this as TaigaEpicData);
  }
}

extension TaigaEpicDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaEpicData, $Out> {
  TaigaEpicDataCopyWith<$R, TaigaEpicData, $Out> get $asTaigaEpicData =>
      $base.as((v, t, t2) => _TaigaEpicDataCopyWithImpl(v, t, t2));
}

abstract class TaigaEpicDataCopyWith<$R, $In extends TaigaEpicData, $Out>
    implements TaigaDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get jobTags;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner;
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus;
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get jobWatchers;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get customValues;
  @override
  $R call(
      {int? jobId,
      int? referenceNumber,
      List<String>? jobTags,
      TaigaUser? jobOwner,
      TaigaStatus? jobStatus,
      TaigaProject? fromProject,
      String? jobName,
      List<int>? jobWatchers,
      String? jobPermalink,
      TaigaUser? userAssigned,
      String? jobDescription,
      DateTime? creationDate,
      DateTime? modifiedDate,
      Map<String, dynamic>? customValues,
      String? color,
      int? epicsOrder,
      bool? teamRequirementStatus,
      bool? clientRequirementStatus});
  TaigaEpicDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaEpicDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaEpicData, $Out>
    implements TaigaEpicDataCopyWith<$R, TaigaEpicData, $Out> {
  _TaigaEpicDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaEpicData> $mapper =
      TaigaEpicDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get jobTags =>
      $value.jobTags != null
          ? ListCopyWith(
              $value.jobTags!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(jobTags: v))
          : null;
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get jobOwner =>
      $value.jobOwner.copyWith.$chain((v) => call(jobOwner: v));
  @override
  TaigaStatusCopyWith<$R, TaigaStatus, TaigaStatus> get jobStatus =>
      $value.jobStatus.copyWith.$chain((v) => call(jobStatus: v));
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get fromProject =>
      $value.fromProject.copyWith.$chain((v) => call(fromProject: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get jobWatchers =>
      ListCopyWith(
          $value.jobWatchers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(jobWatchers: v));
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser>? get userAssigned =>
      $value.userAssigned?.copyWith.$chain((v) => call(userAssigned: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get customValues => $value.customValues != null
          ? MapCopyWith(
              $value.customValues!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(customValues: v))
          : null;
  @override
  $R call(
          {int? jobId,
          int? referenceNumber,
          Object? jobTags = $none,
          TaigaUser? jobOwner,
          TaigaStatus? jobStatus,
          TaigaProject? fromProject,
          String? jobName,
          List<int>? jobWatchers,
          String? jobPermalink,
          Object? userAssigned = $none,
          Object? jobDescription = $none,
          DateTime? creationDate,
          Object? modifiedDate = $none,
          Object? customValues = $none,
          String? color,
          int? epicsOrder,
          bool? teamRequirementStatus,
          bool? clientRequirementStatus}) =>
      $apply(FieldCopyWithData({
        if (jobId != null) #jobId: jobId,
        if (referenceNumber != null) #referenceNumber: referenceNumber,
        if (jobTags != $none) #jobTags: jobTags,
        if (jobOwner != null) #jobOwner: jobOwner,
        if (jobStatus != null) #jobStatus: jobStatus,
        if (fromProject != null) #fromProject: fromProject,
        if (jobName != null) #jobName: jobName,
        if (jobWatchers != null) #jobWatchers: jobWatchers,
        if (jobPermalink != null) #jobPermalink: jobPermalink,
        if (userAssigned != $none) #userAssigned: userAssigned,
        if (jobDescription != $none) #jobDescription: jobDescription,
        if (creationDate != null) #creationDate: creationDate,
        if (modifiedDate != $none) #modifiedDate: modifiedDate,
        if (customValues != $none) #customValues: customValues,
        if (color != null) #color: color,
        if (epicsOrder != null) #epicsOrder: epicsOrder,
        if (teamRequirementStatus != null)
          #teamRequirementStatus: teamRequirementStatus,
        if (clientRequirementStatus != null)
          #clientRequirementStatus: clientRequirementStatus
      }));
  @override
  TaigaEpicData $make(CopyWithData data) => TaigaEpicData(
      jobId: data.get(#jobId, or: $value.jobId),
      referenceNumber: data.get(#referenceNumber, or: $value.referenceNumber),
      jobTags: data.get(#jobTags, or: $value.jobTags),
      jobOwner: data.get(#jobOwner, or: $value.jobOwner),
      jobStatus: data.get(#jobStatus, or: $value.jobStatus),
      fromProject: data.get(#fromProject, or: $value.fromProject),
      jobName: data.get(#jobName, or: $value.jobName),
      jobWatchers: data.get(#jobWatchers, or: $value.jobWatchers),
      jobPermalink: data.get(#jobPermalink, or: $value.jobPermalink),
      userAssigned: data.get(#userAssigned, or: $value.userAssigned),
      jobDescription: data.get(#jobDescription, or: $value.jobDescription),
      creationDate: data.get(#creationDate, or: $value.creationDate),
      modifiedDate: data.get(#modifiedDate, or: $value.modifiedDate),
      customValues: data.get(#customValues, or: $value.customValues),
      color: data.get(#color, or: $value.color),
      epicsOrder: data.get(#epicsOrder, or: $value.epicsOrder),
      teamRequirementStatus:
          data.get(#teamRequirementStatus, or: $value.teamRequirementStatus),
      clientRequirementStatus: data.get(#clientRequirementStatus,
          or: $value.clientRequirementStatus));

  @override
  TaigaEpicDataCopyWith<$R2, TaigaEpicData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaEpicDataCopyWithImpl($value, $cast, t);
}

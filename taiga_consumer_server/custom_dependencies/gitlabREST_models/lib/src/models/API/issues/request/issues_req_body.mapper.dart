// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issues_req_body.dart';

class IssueAPIRequestModelMapper extends ClassMapperBase<IssueAPIRequestModel> {
  IssueAPIRequestModelMapper._();

  static IssueAPIRequestModelMapper? _instance;
  static IssueAPIRequestModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IssueAPIRequestModelMapper._());
      IssueTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'IssueAPIRequestModel';

  static String? _$issueTitle(IssueAPIRequestModel v) => v.issueTitle;
  static const Field<IssueAPIRequestModel, String> _f$issueTitle =
      Field('issueTitle', _$issueTitle, key: 'issue_title', opt: true);
  static String? _$description(IssueAPIRequestModel v) => v.description;
  static const Field<IssueAPIRequestModel, String> _f$description =
      Field('description', _$description, opt: true);
  static int? _$assignedToId(IssueAPIRequestModel v) => v.assignedToId;
  static const Field<IssueAPIRequestModel, int> _f$assignedToId =
      Field('assignedToId', _$assignedToId, key: 'assigned_to_id', opt: true);
  static List<int>? _$assignedToIds(IssueAPIRequestModel v) => v.assignedToIds;
  static const Field<IssueAPIRequestModel, List<int>> _f$assignedToIds = Field(
      'assignedToIds', _$assignedToIds,
      key: 'assigned_to_ids', opt: true);
  static bool? _$isConfidential(IssueAPIRequestModel v) => v.isConfidential;
  static const Field<IssueAPIRequestModel, bool> _f$isConfidential = Field(
      'isConfidential', _$isConfidential,
      key: 'is_confidential', opt: true);
  static String? _$discussionToResolve(IssueAPIRequestModel v) =>
      v.discussionToResolve;
  static const Field<IssueAPIRequestModel, String> _f$discussionToResolve =
      Field('discussionToResolve', _$discussionToResolve,
          key: 'discussion_to_resolve', opt: true);
  static String? _$createdAt(IssueAPIRequestModel v) => v.createdAt;
  static const Field<IssueAPIRequestModel, String> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at', opt: true);
  static String? _$dueDate(IssueAPIRequestModel v) => v.dueDate;
  static const Field<IssueAPIRequestModel, String> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date', opt: true);
  static int? _$epicId(IssueAPIRequestModel v) => v.epicId;
  static const Field<IssueAPIRequestModel, int> _f$epicId =
      Field('epicId', _$epicId, key: 'epic_id', opt: true);
  static int? _$epicInternalId(IssueAPIRequestModel v) => v.epicInternalId;
  static const Field<IssueAPIRequestModel, int> _f$epicInternalId = Field(
      'epicInternalId', _$epicInternalId,
      key: 'epic_internal_id', opt: true);
  static String? _$issueId(IssueAPIRequestModel v) => v.issueId;
  static const Field<IssueAPIRequestModel, String> _f$issueId =
      Field('issueId', _$issueId, key: 'issue_id', opt: true);
  static String? _$issueInternalId(IssueAPIRequestModel v) => v.issueInternalId;
  static const Field<IssueAPIRequestModel, String> _f$issueInternalId = Field(
      'issueInternalId', _$issueInternalId,
      key: 'issue_internal_id', opt: true);
  static IssueTypes? _$issueType(IssueAPIRequestModel v) => v.issueType;
  static const Field<IssueAPIRequestModel, IssueTypes> _f$issueType = Field(
      'issueType', _$issueType,
      key: 'issue_type', opt: true, def: IssueTypes.issue);
  static List<String>? _$issueLabels(IssueAPIRequestModel v) => v.issueLabels;
  static const Field<IssueAPIRequestModel, List<String>> _f$issueLabels =
      Field('issueLabels', _$issueLabels, key: 'issue_labels', opt: true);
  static int? _$mergeRequestInternalId(IssueAPIRequestModel v) =>
      v.mergeRequestInternalId;
  static const Field<IssueAPIRequestModel, int> _f$mergeRequestInternalId =
      Field('mergeRequestInternalId', _$mergeRequestInternalId,
          key: 'merge_request_internal_id', opt: true);
  static int? _$milestoneId(IssueAPIRequestModel v) => v.milestoneId;
  static const Field<IssueAPIRequestModel, int> _f$milestoneId =
      Field('milestoneId', _$milestoneId, key: 'milestone_id', opt: true);
  static List<String>? _$issueLabelsToAdd(IssueAPIRequestModel v) =>
      v.issueLabelsToAdd;
  static const Field<IssueAPIRequestModel, List<String>> _f$issueLabelsToAdd =
      Field('issueLabelsToAdd', _$issueLabelsToAdd,
          key: 'issue_labels_to_add', opt: true);
  static List<String>? _$issueLabelsToRemove(IssueAPIRequestModel v) =>
      v.issueLabelsToRemove;
  static const Field<IssueAPIRequestModel, List<String>>
      _f$issueLabelsToRemove = Field(
          'issueLabelsToRemove', _$issueLabelsToRemove,
          key: 'issue_labels_to_remove', opt: true);
  static int? _$weight(IssueAPIRequestModel v) => v.weight;
  static const Field<IssueAPIRequestModel, int> _f$weight =
      Field('weight', _$weight, opt: true);
  static String? _$discussionStatus(IssueAPIRequestModel v) =>
      v.discussionStatus;
  static const Field<IssueAPIRequestModel, String> _f$discussionStatus = Field(
      'discussionStatus', _$discussionStatus,
      key: 'discussion_status', opt: true);
  static String? _$stateEvent(IssueAPIRequestModel v) => v.stateEvent;
  static const Field<IssueAPIRequestModel, String> _f$stateEvent =
      Field('stateEvent', _$stateEvent, key: 'state_event', opt: true);
  static String? _$updatedAt(IssueAPIRequestModel v) => v.updatedAt;
  static const Field<IssueAPIRequestModel, String> _f$updatedAt = Field(
      'updatedAt', _$updatedAt,
      key: 'updated_at', mode: FieldMode.member);

  @override
  final Map<Symbol, Field<IssueAPIRequestModel, dynamic>> fields = const {
    #issueTitle: _f$issueTitle,
    #description: _f$description,
    #assignedToId: _f$assignedToId,
    #assignedToIds: _f$assignedToIds,
    #isConfidential: _f$isConfidential,
    #discussionToResolve: _f$discussionToResolve,
    #createdAt: _f$createdAt,
    #dueDate: _f$dueDate,
    #epicId: _f$epicId,
    #epicInternalId: _f$epicInternalId,
    #issueId: _f$issueId,
    #issueInternalId: _f$issueInternalId,
    #issueType: _f$issueType,
    #issueLabels: _f$issueLabels,
    #mergeRequestInternalId: _f$mergeRequestInternalId,
    #milestoneId: _f$milestoneId,
    #issueLabelsToAdd: _f$issueLabelsToAdd,
    #issueLabelsToRemove: _f$issueLabelsToRemove,
    #weight: _f$weight,
    #discussionStatus: _f$discussionStatus,
    #stateEvent: _f$stateEvent,
    #updatedAt: _f$updatedAt,
  };

  static IssueAPIRequestModel _instantiate(DecodingData data) {
    return IssueAPIRequestModel(
        issueTitle: data.dec(_f$issueTitle),
        description: data.dec(_f$description),
        assignedToId: data.dec(_f$assignedToId),
        assignedToIds: data.dec(_f$assignedToIds),
        isConfidential: data.dec(_f$isConfidential),
        discussionToResolve: data.dec(_f$discussionToResolve),
        createdAt: data.dec(_f$createdAt),
        dueDate: data.dec(_f$dueDate),
        epicId: data.dec(_f$epicId),
        epicInternalId: data.dec(_f$epicInternalId),
        issueId: data.dec(_f$issueId),
        issueInternalId: data.dec(_f$issueInternalId),
        issueType: data.dec(_f$issueType),
        issueLabels: data.dec(_f$issueLabels),
        mergeRequestInternalId: data.dec(_f$mergeRequestInternalId),
        milestoneId: data.dec(_f$milestoneId),
        issueLabelsToAdd: data.dec(_f$issueLabelsToAdd),
        issueLabelsToRemove: data.dec(_f$issueLabelsToRemove),
        weight: data.dec(_f$weight),
        discussionStatus: data.dec(_f$discussionStatus),
        stateEvent: data.dec(_f$stateEvent));
  }

  @override
  final Function instantiate = _instantiate;

  static IssueAPIRequestModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IssueAPIRequestModel>(map);
  }

  static IssueAPIRequestModel fromJson(String json) {
    return ensureInitialized().decodeJson<IssueAPIRequestModel>(json);
  }
}

mixin IssueAPIRequestModelMappable {
  String toJson() {
    return IssueAPIRequestModelMapper.ensureInitialized()
        .encodeJson<IssueAPIRequestModel>(this as IssueAPIRequestModel);
  }

  Map<String, dynamic> toMap() {
    return IssueAPIRequestModelMapper.ensureInitialized()
        .encodeMap<IssueAPIRequestModel>(this as IssueAPIRequestModel);
  }

  IssueAPIRequestModelCopyWith<IssueAPIRequestModel, IssueAPIRequestModel,
          IssueAPIRequestModel>
      get copyWith => _IssueAPIRequestModelCopyWithImpl(
          this as IssueAPIRequestModel, $identity, $identity);
  @override
  String toString() {
    return IssueAPIRequestModelMapper.ensureInitialized()
        .stringifyValue(this as IssueAPIRequestModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            IssueAPIRequestModelMapper.ensureInitialized()
                .isValueEqual(this as IssueAPIRequestModel, other));
  }

  @override
  int get hashCode {
    return IssueAPIRequestModelMapper.ensureInitialized()
        .hashValue(this as IssueAPIRequestModel);
  }
}

extension IssueAPIRequestModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IssueAPIRequestModel, $Out> {
  IssueAPIRequestModelCopyWith<$R, IssueAPIRequestModel, $Out>
      get $asIssueAPIRequestModel =>
          $base.as((v, t, t2) => _IssueAPIRequestModelCopyWithImpl(v, t, t2));
}

abstract class IssueAPIRequestModelCopyWith<
    $R,
    $In extends IssueAPIRequestModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get assignedToIds;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get issueLabels;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get issueLabelsToAdd;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get issueLabelsToRemove;
  $R call(
      {String? issueTitle,
      String? description,
      int? assignedToId,
      List<int>? assignedToIds,
      bool? isConfidential,
      String? discussionToResolve,
      String? createdAt,
      String? dueDate,
      int? epicId,
      int? epicInternalId,
      String? issueId,
      String? issueInternalId,
      IssueTypes? issueType,
      List<String>? issueLabels,
      int? mergeRequestInternalId,
      int? milestoneId,
      List<String>? issueLabelsToAdd,
      List<String>? issueLabelsToRemove,
      int? weight,
      String? discussionStatus,
      String? stateEvent});
  IssueAPIRequestModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _IssueAPIRequestModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IssueAPIRequestModel, $Out>
    implements IssueAPIRequestModelCopyWith<$R, IssueAPIRequestModel, $Out> {
  _IssueAPIRequestModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IssueAPIRequestModel> $mapper =
      IssueAPIRequestModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get assignedToIds =>
      $value.assignedToIds != null
          ? ListCopyWith(
              $value.assignedToIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(assignedToIds: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get issueLabels => $value.issueLabels != null
          ? ListCopyWith(
              $value.issueLabels!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(issueLabels: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get issueLabelsToAdd => $value.issueLabelsToAdd != null
          ? ListCopyWith(
              $value.issueLabelsToAdd!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(issueLabelsToAdd: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get issueLabelsToRemove => $value.issueLabelsToRemove != null
          ? ListCopyWith(
              $value.issueLabelsToRemove!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(issueLabelsToRemove: v))
          : null;
  @override
  $R call(
          {Object? issueTitle = $none,
          Object? description = $none,
          Object? assignedToId = $none,
          Object? assignedToIds = $none,
          Object? isConfidential = $none,
          Object? discussionToResolve = $none,
          Object? createdAt = $none,
          Object? dueDate = $none,
          Object? epicId = $none,
          Object? epicInternalId = $none,
          Object? issueId = $none,
          Object? issueInternalId = $none,
          Object? issueType = $none,
          Object? issueLabels = $none,
          Object? mergeRequestInternalId = $none,
          Object? milestoneId = $none,
          Object? issueLabelsToAdd = $none,
          Object? issueLabelsToRemove = $none,
          Object? weight = $none,
          Object? discussionStatus = $none,
          Object? stateEvent = $none}) =>
      $apply(FieldCopyWithData({
        if (issueTitle != $none) #issueTitle: issueTitle,
        if (description != $none) #description: description,
        if (assignedToId != $none) #assignedToId: assignedToId,
        if (assignedToIds != $none) #assignedToIds: assignedToIds,
        if (isConfidential != $none) #isConfidential: isConfidential,
        if (discussionToResolve != $none)
          #discussionToResolve: discussionToResolve,
        if (createdAt != $none) #createdAt: createdAt,
        if (dueDate != $none) #dueDate: dueDate,
        if (epicId != $none) #epicId: epicId,
        if (epicInternalId != $none) #epicInternalId: epicInternalId,
        if (issueId != $none) #issueId: issueId,
        if (issueInternalId != $none) #issueInternalId: issueInternalId,
        if (issueType != $none) #issueType: issueType,
        if (issueLabels != $none) #issueLabels: issueLabels,
        if (mergeRequestInternalId != $none)
          #mergeRequestInternalId: mergeRequestInternalId,
        if (milestoneId != $none) #milestoneId: milestoneId,
        if (issueLabelsToAdd != $none) #issueLabelsToAdd: issueLabelsToAdd,
        if (issueLabelsToRemove != $none)
          #issueLabelsToRemove: issueLabelsToRemove,
        if (weight != $none) #weight: weight,
        if (discussionStatus != $none) #discussionStatus: discussionStatus,
        if (stateEvent != $none) #stateEvent: stateEvent
      }));
  @override
  IssueAPIRequestModel $make(CopyWithData data) => IssueAPIRequestModel(
      issueTitle: data.get(#issueTitle, or: $value.issueTitle),
      description: data.get(#description, or: $value.description),
      assignedToId: data.get(#assignedToId, or: $value.assignedToId),
      assignedToIds: data.get(#assignedToIds, or: $value.assignedToIds),
      isConfidential: data.get(#isConfidential, or: $value.isConfidential),
      discussionToResolve:
          data.get(#discussionToResolve, or: $value.discussionToResolve),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      epicId: data.get(#epicId, or: $value.epicId),
      epicInternalId: data.get(#epicInternalId, or: $value.epicInternalId),
      issueId: data.get(#issueId, or: $value.issueId),
      issueInternalId: data.get(#issueInternalId, or: $value.issueInternalId),
      issueType: data.get(#issueType, or: $value.issueType),
      issueLabels: data.get(#issueLabels, or: $value.issueLabels),
      mergeRequestInternalId:
          data.get(#mergeRequestInternalId, or: $value.mergeRequestInternalId),
      milestoneId: data.get(#milestoneId, or: $value.milestoneId),
      issueLabelsToAdd:
          data.get(#issueLabelsToAdd, or: $value.issueLabelsToAdd),
      issueLabelsToRemove:
          data.get(#issueLabelsToRemove, or: $value.issueLabelsToRemove),
      weight: data.get(#weight, or: $value.weight),
      discussionStatus:
          data.get(#discussionStatus, or: $value.discussionStatus),
      stateEvent: data.get(#stateEvent, or: $value.stateEvent));

  @override
  IssueAPIRequestModelCopyWith<$R2, IssueAPIRequestModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _IssueAPIRequestModelCopyWithImpl($value, $cast, t);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'merge_request_req.dart';

class MergeReqRequestAPIModelMapper
    extends ClassMapperBase<MergeReqRequestAPIModel> {
  MergeReqRequestAPIModelMapper._();

  static MergeReqRequestAPIModelMapper? _instance;
  static MergeReqRequestAPIModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = MergeReqRequestAPIModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MergeReqRequestAPIModel';

  static String _$sourceBranch(MergeReqRequestAPIModel v) => v.sourceBranch;
  static const Field<MergeReqRequestAPIModel, String> _f$sourceBranch =
      Field('sourceBranch', _$sourceBranch, key: 'source_branch');
  static String _$targetBranch(MergeReqRequestAPIModel v) => v.targetBranch;
  static const Field<MergeReqRequestAPIModel, String> _f$targetBranch =
      Field('targetBranch', _$targetBranch, key: 'target_branch');
  static String? _$title(MergeReqRequestAPIModel v) => v.title;
  static const Field<MergeReqRequestAPIModel, String> _f$title =
      Field('title', _$title, opt: true);
  static bool? _$allowCollaboration(MergeReqRequestAPIModel v) =>
      v.allowCollaboration;
  static const Field<MergeReqRequestAPIModel, bool> _f$allowCollaboration =
      Field('allowCollaboration', _$allowCollaboration,
          key: 'allow_collaboration', opt: true);
  static int? _$approvalsBeforeMerge(MergeReqRequestAPIModel v) =>
      v.approvalsBeforeMerge;
  static const Field<MergeReqRequestAPIModel, int> _f$approvalsBeforeMerge =
      Field('approvalsBeforeMerge', _$approvalsBeforeMerge,
          key: 'approvals_before_merge', opt: true);
  static bool? _$allowMaintainerToPush(MergeReqRequestAPIModel v) =>
      v.allowMaintainerToPush;
  static const Field<MergeReqRequestAPIModel, bool> _f$allowMaintainerToPush =
      Field('allowMaintainerToPush', _$allowMaintainerToPush,
          key: 'allow_maintainer_to_push', opt: true);
  static int? _$assigneeId(MergeReqRequestAPIModel v) => v.assigneeId;
  static const Field<MergeReqRequestAPIModel, int> _f$assigneeId =
      Field('assigneeId', _$assigneeId, key: 'assignee_id', opt: true);
  static List<int>? _$assigneeIds(MergeReqRequestAPIModel v) => v.assigneeIds;
  static const Field<MergeReqRequestAPIModel, List<int>> _f$assigneeIds =
      Field('assigneeIds', _$assigneeIds, key: 'assignee_ids', opt: true);
  static String? _$description(MergeReqRequestAPIModel v) => v.description;
  static const Field<MergeReqRequestAPIModel, String> _f$description =
      Field('description', _$description, opt: true);
  static List<String>? _$labels(MergeReqRequestAPIModel v) => v.labels;
  static const Field<MergeReqRequestAPIModel, List<String>> _f$labels =
      Field('labels', _$labels, opt: true);
  static int? _$milestoneId(MergeReqRequestAPIModel v) => v.milestoneId;
  static const Field<MergeReqRequestAPIModel, int> _f$milestoneId =
      Field('milestoneId', _$milestoneId, key: 'milestone_id', opt: true);
  static bool? _$removeSourceBranch(MergeReqRequestAPIModel v) =>
      v.removeSourceBranch;
  static const Field<MergeReqRequestAPIModel, bool> _f$removeSourceBranch =
      Field('removeSourceBranch', _$removeSourceBranch,
          key: 'remove_source_branch', opt: true);
  static List<int>? _$reviewerIds(MergeReqRequestAPIModel v) => v.reviewerIds;
  static const Field<MergeReqRequestAPIModel, List<int>> _f$reviewerIds =
      Field('reviewerIds', _$reviewerIds, key: 'reviewer_ids', opt: true);
  static bool? _$squash(MergeReqRequestAPIModel v) => v.squash;
  static const Field<MergeReqRequestAPIModel, bool> _f$squash =
      Field('squash', _$squash, opt: true);
  static int? _$targetProjectId(MergeReqRequestAPIModel v) => v.targetProjectId;
  static const Field<MergeReqRequestAPIModel, int> _f$targetProjectId = Field(
      'targetProjectId', _$targetProjectId,
      key: 'target_project_id', opt: true);

  @override
  final Map<Symbol, Field<MergeReqRequestAPIModel, dynamic>> fields = const {
    #sourceBranch: _f$sourceBranch,
    #targetBranch: _f$targetBranch,
    #title: _f$title,
    #allowCollaboration: _f$allowCollaboration,
    #approvalsBeforeMerge: _f$approvalsBeforeMerge,
    #allowMaintainerToPush: _f$allowMaintainerToPush,
    #assigneeId: _f$assigneeId,
    #assigneeIds: _f$assigneeIds,
    #description: _f$description,
    #labels: _f$labels,
    #milestoneId: _f$milestoneId,
    #removeSourceBranch: _f$removeSourceBranch,
    #reviewerIds: _f$reviewerIds,
    #squash: _f$squash,
    #targetProjectId: _f$targetProjectId,
  };

  static MergeReqRequestAPIModel _instantiate(DecodingData data) {
    return MergeReqRequestAPIModel(
        sourceBranch: data.dec(_f$sourceBranch),
        targetBranch: data.dec(_f$targetBranch),
        title: data.dec(_f$title),
        allowCollaboration: data.dec(_f$allowCollaboration),
        approvalsBeforeMerge: data.dec(_f$approvalsBeforeMerge),
        allowMaintainerToPush: data.dec(_f$allowMaintainerToPush),
        assigneeId: data.dec(_f$assigneeId),
        assigneeIds: data.dec(_f$assigneeIds),
        description: data.dec(_f$description),
        labels: data.dec(_f$labels),
        milestoneId: data.dec(_f$milestoneId),
        removeSourceBranch: data.dec(_f$removeSourceBranch),
        reviewerIds: data.dec(_f$reviewerIds),
        squash: data.dec(_f$squash),
        targetProjectId: data.dec(_f$targetProjectId));
  }

  @override
  final Function instantiate = _instantiate;

  static MergeReqRequestAPIModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MergeReqRequestAPIModel>(map);
  }

  static MergeReqRequestAPIModel fromJson(String json) {
    return ensureInitialized().decodeJson<MergeReqRequestAPIModel>(json);
  }
}

mixin MergeReqRequestAPIModelMappable {
  String toJson() {
    return MergeReqRequestAPIModelMapper.ensureInitialized()
        .encodeJson<MergeReqRequestAPIModel>(this as MergeReqRequestAPIModel);
  }

  Map<String, dynamic> toMap() {
    return MergeReqRequestAPIModelMapper.ensureInitialized()
        .encodeMap<MergeReqRequestAPIModel>(this as MergeReqRequestAPIModel);
  }

  MergeReqRequestAPIModelCopyWith<MergeReqRequestAPIModel,
          MergeReqRequestAPIModel, MergeReqRequestAPIModel>
      get copyWith => _MergeReqRequestAPIModelCopyWithImpl(
          this as MergeReqRequestAPIModel, $identity, $identity);
  @override
  String toString() {
    return MergeReqRequestAPIModelMapper.ensureInitialized()
        .stringifyValue(this as MergeReqRequestAPIModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            MergeReqRequestAPIModelMapper.ensureInitialized()
                .isValueEqual(this as MergeReqRequestAPIModel, other));
  }

  @override
  int get hashCode {
    return MergeReqRequestAPIModelMapper.ensureInitialized()
        .hashValue(this as MergeReqRequestAPIModel);
  }
}

extension MergeReqRequestAPIModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MergeReqRequestAPIModel, $Out> {
  MergeReqRequestAPIModelCopyWith<$R, MergeReqRequestAPIModel, $Out>
      get $asMergeReqRequestAPIModel => $base
          .as((v, t, t2) => _MergeReqRequestAPIModelCopyWithImpl(v, t, t2));
}

abstract class MergeReqRequestAPIModelCopyWith<
    $R,
    $In extends MergeReqRequestAPIModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get assigneeIds;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get labels;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get reviewerIds;
  $R call(
      {String? sourceBranch,
      String? targetBranch,
      String? title,
      bool? allowCollaboration,
      int? approvalsBeforeMerge,
      bool? allowMaintainerToPush,
      int? assigneeId,
      List<int>? assigneeIds,
      String? description,
      List<String>? labels,
      int? milestoneId,
      bool? removeSourceBranch,
      List<int>? reviewerIds,
      bool? squash,
      int? targetProjectId});
  MergeReqRequestAPIModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MergeReqRequestAPIModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MergeReqRequestAPIModel, $Out>
    implements
        MergeReqRequestAPIModelCopyWith<$R, MergeReqRequestAPIModel, $Out> {
  _MergeReqRequestAPIModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MergeReqRequestAPIModel> $mapper =
      MergeReqRequestAPIModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get assigneeIds =>
      $value.assigneeIds != null
          ? ListCopyWith(
              $value.assigneeIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(assigneeIds: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get labels =>
      $value.labels != null
          ? ListCopyWith($value.labels!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(labels: v))
          : null;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get reviewerIds =>
      $value.reviewerIds != null
          ? ListCopyWith(
              $value.reviewerIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(reviewerIds: v))
          : null;
  @override
  $R call(
          {String? sourceBranch,
          String? targetBranch,
          Object? title = $none,
          Object? allowCollaboration = $none,
          Object? approvalsBeforeMerge = $none,
          Object? allowMaintainerToPush = $none,
          Object? assigneeId = $none,
          Object? assigneeIds = $none,
          Object? description = $none,
          Object? labels = $none,
          Object? milestoneId = $none,
          Object? removeSourceBranch = $none,
          Object? reviewerIds = $none,
          Object? squash = $none,
          Object? targetProjectId = $none}) =>
      $apply(FieldCopyWithData({
        if (sourceBranch != null) #sourceBranch: sourceBranch,
        if (targetBranch != null) #targetBranch: targetBranch,
        if (title != $none) #title: title,
        if (allowCollaboration != $none)
          #allowCollaboration: allowCollaboration,
        if (approvalsBeforeMerge != $none)
          #approvalsBeforeMerge: approvalsBeforeMerge,
        if (allowMaintainerToPush != $none)
          #allowMaintainerToPush: allowMaintainerToPush,
        if (assigneeId != $none) #assigneeId: assigneeId,
        if (assigneeIds != $none) #assigneeIds: assigneeIds,
        if (description != $none) #description: description,
        if (labels != $none) #labels: labels,
        if (milestoneId != $none) #milestoneId: milestoneId,
        if (removeSourceBranch != $none)
          #removeSourceBranch: removeSourceBranch,
        if (reviewerIds != $none) #reviewerIds: reviewerIds,
        if (squash != $none) #squash: squash,
        if (targetProjectId != $none) #targetProjectId: targetProjectId
      }));
  @override
  MergeReqRequestAPIModel $make(CopyWithData data) => MergeReqRequestAPIModel(
      sourceBranch: data.get(#sourceBranch, or: $value.sourceBranch),
      targetBranch: data.get(#targetBranch, or: $value.targetBranch),
      title: data.get(#title, or: $value.title),
      allowCollaboration:
          data.get(#allowCollaboration, or: $value.allowCollaboration),
      approvalsBeforeMerge:
          data.get(#approvalsBeforeMerge, or: $value.approvalsBeforeMerge),
      allowMaintainerToPush:
          data.get(#allowMaintainerToPush, or: $value.allowMaintainerToPush),
      assigneeId: data.get(#assigneeId, or: $value.assigneeId),
      assigneeIds: data.get(#assigneeIds, or: $value.assigneeIds),
      description: data.get(#description, or: $value.description),
      labels: data.get(#labels, or: $value.labels),
      milestoneId: data.get(#milestoneId, or: $value.milestoneId),
      removeSourceBranch:
          data.get(#removeSourceBranch, or: $value.removeSourceBranch),
      reviewerIds: data.get(#reviewerIds, or: $value.reviewerIds),
      squash: data.get(#squash, or: $value.squash),
      targetProjectId: data.get(#targetProjectId, or: $value.targetProjectId));

  @override
  MergeReqRequestAPIModelCopyWith<$R2, MergeReqRequestAPIModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MergeReqRequestAPIModelCopyWithImpl($value, $cast, t);
}

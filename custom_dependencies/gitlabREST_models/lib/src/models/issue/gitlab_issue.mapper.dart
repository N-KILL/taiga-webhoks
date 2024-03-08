// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'gitlab_issue.dart';

class GitLabIssuePayloadMapper extends ClassMapperBase<GitLabIssuePayload> {
  GitLabIssuePayloadMapper._();

  static GitLabIssuePayloadMapper? _instance;
  static GitLabIssuePayloadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitLabIssuePayloadMapper._());
      GitLabUserMapper.ensureInitialized();
      GitLabProjectMapper.ensureInitialized();
      IssueDetailsMapper.ensureInitialized();
      LabelMapper.ensureInitialized();
      ChangesMapper.ensureInitialized();
      GitLabRepositoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GitLabIssuePayload';

  static String _$operationType(GitLabIssuePayload v) => v.operationType;
  static const Field<GitLabIssuePayload, String> _f$operationType =
      Field('operationType', _$operationType, key: 'object_kind');
  static String _$eventType(GitLabIssuePayload v) => v.eventType;
  static const Field<GitLabIssuePayload, String> _f$eventType =
      Field('eventType', _$eventType, key: 'event_type');
  static GitLabUser _$performer(GitLabIssuePayload v) => v.performer;
  static const Field<GitLabIssuePayload, GitLabUser> _f$performer =
      Field('performer', _$performer, key: 'user');
  static GitLabProject _$projectDetails(GitLabIssuePayload v) =>
      v.projectDetails;
  static const Field<GitLabIssuePayload, GitLabProject> _f$projectDetails =
      Field('projectDetails', _$projectDetails, key: 'project');
  static IssueDetails _$issueDetails(GitLabIssuePayload v) => v.issueDetails;
  static const Field<GitLabIssuePayload, IssueDetails> _f$issueDetails =
      Field('issueDetails', _$issueDetails, key: 'object_attributes');
  static List<Label> _$labels(GitLabIssuePayload v) => v.labels;
  static const Field<GitLabIssuePayload, List<Label>> _f$labels =
      Field('labels', _$labels);
  static Changes _$changes(GitLabIssuePayload v) => v.changes;
  static const Field<GitLabIssuePayload, Changes> _f$changes =
      Field('changes', _$changes);
  static GitLabRepository _$relatedRepository(GitLabIssuePayload v) =>
      v.relatedRepository;
  static const Field<GitLabIssuePayload, GitLabRepository>
      _f$relatedRepository =
      Field('relatedRepository', _$relatedRepository, key: 'repository');

  @override
  final Map<Symbol, Field<GitLabIssuePayload, dynamic>> fields = const {
    #operationType: _f$operationType,
    #eventType: _f$eventType,
    #performer: _f$performer,
    #projectDetails: _f$projectDetails,
    #issueDetails: _f$issueDetails,
    #labels: _f$labels,
    #changes: _f$changes,
    #relatedRepository: _f$relatedRepository,
  };

  static GitLabIssuePayload _instantiate(DecodingData data) {
    return GitLabIssuePayload(
        operationType: data.dec(_f$operationType),
        eventType: data.dec(_f$eventType),
        performer: data.dec(_f$performer),
        projectDetails: data.dec(_f$projectDetails),
        issueDetails: data.dec(_f$issueDetails),
        labels: data.dec(_f$labels),
        changes: data.dec(_f$changes),
        relatedRepository: data.dec(_f$relatedRepository));
  }

  @override
  final Function instantiate = _instantiate;

  static GitLabIssuePayload fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitLabIssuePayload>(map);
  }

  static GitLabIssuePayload fromJson(String json) {
    return ensureInitialized().decodeJson<GitLabIssuePayload>(json);
  }
}

mixin GitLabIssuePayloadMappable {
  String toJson() {
    return GitLabIssuePayloadMapper.ensureInitialized()
        .encodeJson<GitLabIssuePayload>(this as GitLabIssuePayload);
  }

  Map<String, dynamic> toMap() {
    return GitLabIssuePayloadMapper.ensureInitialized()
        .encodeMap<GitLabIssuePayload>(this as GitLabIssuePayload);
  }

  GitLabIssuePayloadCopyWith<GitLabIssuePayload, GitLabIssuePayload,
          GitLabIssuePayload>
      get copyWith => _GitLabIssuePayloadCopyWithImpl(
          this as GitLabIssuePayload, $identity, $identity);
  @override
  String toString() {
    return GitLabIssuePayloadMapper.ensureInitialized()
        .stringifyValue(this as GitLabIssuePayload);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GitLabIssuePayloadMapper.ensureInitialized()
                .isValueEqual(this as GitLabIssuePayload, other));
  }

  @override
  int get hashCode {
    return GitLabIssuePayloadMapper.ensureInitialized()
        .hashValue(this as GitLabIssuePayload);
  }
}

extension GitLabIssuePayloadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GitLabIssuePayload, $Out> {
  GitLabIssuePayloadCopyWith<$R, GitLabIssuePayload, $Out>
      get $asGitLabIssuePayload =>
          $base.as((v, t, t2) => _GitLabIssuePayloadCopyWithImpl(v, t, t2));
}

abstract class GitLabIssuePayloadCopyWith<$R, $In extends GitLabIssuePayload,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  GitLabUserCopyWith<$R, GitLabUser, GitLabUser> get performer;
  GitLabProjectCopyWith<$R, GitLabProject, GitLabProject> get projectDetails;
  IssueDetailsCopyWith<$R, IssueDetails, IssueDetails> get issueDetails;
  ListCopyWith<$R, Label, LabelCopyWith<$R, Label, Label>> get labels;
  ChangesCopyWith<$R, Changes, Changes> get changes;
  GitLabRepositoryCopyWith<$R, GitLabRepository, GitLabRepository>
      get relatedRepository;
  $R call(
      {String? operationType,
      String? eventType,
      GitLabUser? performer,
      GitLabProject? projectDetails,
      IssueDetails? issueDetails,
      List<Label>? labels,
      Changes? changes,
      GitLabRepository? relatedRepository});
  GitLabIssuePayloadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GitLabIssuePayloadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GitLabIssuePayload, $Out>
    implements GitLabIssuePayloadCopyWith<$R, GitLabIssuePayload, $Out> {
  _GitLabIssuePayloadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GitLabIssuePayload> $mapper =
      GitLabIssuePayloadMapper.ensureInitialized();
  @override
  GitLabUserCopyWith<$R, GitLabUser, GitLabUser> get performer =>
      $value.performer.copyWith.$chain((v) => call(performer: v));
  @override
  GitLabProjectCopyWith<$R, GitLabProject, GitLabProject> get projectDetails =>
      $value.projectDetails.copyWith.$chain((v) => call(projectDetails: v));
  @override
  IssueDetailsCopyWith<$R, IssueDetails, IssueDetails> get issueDetails =>
      $value.issueDetails.copyWith.$chain((v) => call(issueDetails: v));
  @override
  ListCopyWith<$R, Label, LabelCopyWith<$R, Label, Label>> get labels =>
      ListCopyWith($value.labels, (v, t) => v.copyWith.$chain(t),
          (v) => call(labels: v));
  @override
  ChangesCopyWith<$R, Changes, Changes> get changes =>
      $value.changes.copyWith.$chain((v) => call(changes: v));
  @override
  GitLabRepositoryCopyWith<$R, GitLabRepository, GitLabRepository>
      get relatedRepository => $value.relatedRepository.copyWith
          .$chain((v) => call(relatedRepository: v));
  @override
  $R call(
          {String? operationType,
          String? eventType,
          GitLabUser? performer,
          GitLabProject? projectDetails,
          IssueDetails? issueDetails,
          List<Label>? labels,
          Changes? changes,
          GitLabRepository? relatedRepository}) =>
      $apply(FieldCopyWithData({
        if (operationType != null) #operationType: operationType,
        if (eventType != null) #eventType: eventType,
        if (performer != null) #performer: performer,
        if (projectDetails != null) #projectDetails: projectDetails,
        if (issueDetails != null) #issueDetails: issueDetails,
        if (labels != null) #labels: labels,
        if (changes != null) #changes: changes,
        if (relatedRepository != null) #relatedRepository: relatedRepository
      }));
  @override
  GitLabIssuePayload $make(CopyWithData data) => GitLabIssuePayload(
      operationType: data.get(#operationType, or: $value.operationType),
      eventType: data.get(#eventType, or: $value.eventType),
      performer: data.get(#performer, or: $value.performer),
      projectDetails: data.get(#projectDetails, or: $value.projectDetails),
      issueDetails: data.get(#issueDetails, or: $value.issueDetails),
      labels: data.get(#labels, or: $value.labels),
      changes: data.get(#changes, or: $value.changes),
      relatedRepository:
          data.get(#relatedRepository, or: $value.relatedRepository));

  @override
  GitLabIssuePayloadCopyWith<$R2, GitLabIssuePayload, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GitLabIssuePayloadCopyWithImpl($value, $cast, t);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'gitlab_payload.dart';

class GitLabPayloadMapper extends ClassMapperBase<GitLabPayload> {
  GitLabPayloadMapper._();

  static GitLabPayloadMapper? _instance;
  static GitLabPayloadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitLabPayloadMapper._());
      GitLabProjectMapper.ensureInitialized();
      GitLabCommitMapper.ensureInitialized();
      GitLabRepositoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GitLabPayload';

  static String _$operationType(GitLabPayload v) => v.operationType;
  static const Field<GitLabPayload, String> _f$operationType =
      Field('operationType', _$operationType, key: 'object_kind');
  static String _$eventType(GitLabPayload v) => v.eventType;
  static const Field<GitLabPayload, String> _f$eventType =
      Field('eventType', _$eventType, key: 'event_name');
  static String _$beforeCommitSHA(GitLabPayload v) => v.beforeCommitSHA;
  static const Field<GitLabPayload, String> _f$beforeCommitSHA =
      Field('beforeCommitSHA', _$beforeCommitSHA, key: 'before');
  static String _$afterCommitSHA(GitLabPayload v) => v.afterCommitSHA;
  static const Field<GitLabPayload, String> _f$afterCommitSHA =
      Field('afterCommitSHA', _$afterCommitSHA, key: 'after');
  static String _$branchRefName(GitLabPayload v) => v.branchRefName;
  static const Field<GitLabPayload, String> _f$branchRefName =
      Field('branchRefName', _$branchRefName, key: 'ref');
  static bool _$isRefBranchProtected(GitLabPayload v) => v.isRefBranchProtected;
  static const Field<GitLabPayload, bool> _f$isRefBranchProtected = Field(
      'isRefBranchProtected', _$isRefBranchProtected,
      key: 'ref_protected');
  static String _$checkoutSha(GitLabPayload v) => v.checkoutSha;
  static const Field<GitLabPayload, String> _f$checkoutSha =
      Field('checkoutSha', _$checkoutSha, key: 'checkout_sha');
  static String? _$message(GitLabPayload v) => v.message;
  static const Field<GitLabPayload, String> _f$message =
      Field('message', _$message);
  static int _$performerUserId(GitLabPayload v) => v.performerUserId;
  static const Field<GitLabPayload, int> _f$performerUserId =
      Field('performerUserId', _$performerUserId, key: 'user_id');
  static String _$performerUserAvatar(GitLabPayload v) => v.performerUserAvatar;
  static const Field<GitLabPayload, String> _f$performerUserAvatar =
      Field('performerUserAvatar', _$performerUserAvatar, key: 'user_avatar');
  static String? _$performerUserEmail(GitLabPayload v) => v.performerUserEmail;
  static const Field<GitLabPayload, String> _f$performerUserEmail =
      Field('performerUserEmail', _$performerUserEmail, key: 'user_email');
  static String _$performerUserName(GitLabPayload v) => v.performerUserName;
  static const Field<GitLabPayload, String> _f$performerUserName =
      Field('performerUserName', _$performerUserName, key: 'user_name');
  static String _$performerUserUsername(GitLabPayload v) =>
      v.performerUserUsername;
  static const Field<GitLabPayload, String> _f$performerUserUsername = Field(
      'performerUserUsername', _$performerUserUsername,
      key: 'user_username');
  static int _$relatedProjectId(GitLabPayload v) => v.relatedProjectId;
  static const Field<GitLabPayload, int> _f$relatedProjectId =
      Field('relatedProjectId', _$relatedProjectId, key: 'project_id');
  static GitLabProject _$projectDetails(GitLabPayload v) => v.projectDetails;
  static const Field<GitLabPayload, GitLabProject> _f$projectDetails =
      Field('projectDetails', _$projectDetails, key: 'project');
  static List<GitLabCommit> _$commitsDetails(GitLabPayload v) =>
      v.commitsDetails;
  static const Field<GitLabPayload, List<GitLabCommit>> _f$commitsDetails =
      Field('commitsDetails', _$commitsDetails, key: 'commits');
  static int _$commitAmount(GitLabPayload v) => v.commitAmount;
  static const Field<GitLabPayload, int> _f$commitAmount =
      Field('commitAmount', _$commitAmount, key: 'total_commits_count');
  static GitLabRepository _$repositoryDetails(GitLabPayload v) =>
      v.repositoryDetails;
  static const Field<GitLabPayload, GitLabRepository> _f$repositoryDetails =
      Field('repositoryDetails', _$repositoryDetails, key: 'repository');

  @override
  final Map<Symbol, Field<GitLabPayload, dynamic>> fields = const {
    #operationType: _f$operationType,
    #eventType: _f$eventType,
    #beforeCommitSHA: _f$beforeCommitSHA,
    #afterCommitSHA: _f$afterCommitSHA,
    #branchRefName: _f$branchRefName,
    #isRefBranchProtected: _f$isRefBranchProtected,
    #checkoutSha: _f$checkoutSha,
    #message: _f$message,
    #performerUserId: _f$performerUserId,
    #performerUserAvatar: _f$performerUserAvatar,
    #performerUserEmail: _f$performerUserEmail,
    #performerUserName: _f$performerUserName,
    #performerUserUsername: _f$performerUserUsername,
    #relatedProjectId: _f$relatedProjectId,
    #projectDetails: _f$projectDetails,
    #commitsDetails: _f$commitsDetails,
    #commitAmount: _f$commitAmount,
    #repositoryDetails: _f$repositoryDetails,
  };

  static GitLabPayload _instantiate(DecodingData data) {
    return GitLabPayload(
        operationType: data.dec(_f$operationType),
        eventType: data.dec(_f$eventType),
        beforeCommitSHA: data.dec(_f$beforeCommitSHA),
        afterCommitSHA: data.dec(_f$afterCommitSHA),
        branchRefName: data.dec(_f$branchRefName),
        isRefBranchProtected: data.dec(_f$isRefBranchProtected),
        checkoutSha: data.dec(_f$checkoutSha),
        message: data.dec(_f$message),
        performerUserId: data.dec(_f$performerUserId),
        performerUserAvatar: data.dec(_f$performerUserAvatar),
        performerUserEmail: data.dec(_f$performerUserEmail),
        performerUserName: data.dec(_f$performerUserName),
        performerUserUsername: data.dec(_f$performerUserUsername),
        relatedProjectId: data.dec(_f$relatedProjectId),
        projectDetails: data.dec(_f$projectDetails),
        commitsDetails: data.dec(_f$commitsDetails),
        commitAmount: data.dec(_f$commitAmount),
        repositoryDetails: data.dec(_f$repositoryDetails));
  }

  @override
  final Function instantiate = _instantiate;

  static GitLabPayload fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitLabPayload>(map);
  }

  static GitLabPayload fromJson(String json) {
    return ensureInitialized().decodeJson<GitLabPayload>(json);
  }
}

mixin GitLabPayloadMappable {
  String toJson() {
    return GitLabPayloadMapper.ensureInitialized()
        .encodeJson<GitLabPayload>(this as GitLabPayload);
  }

  Map<String, dynamic> toMap() {
    return GitLabPayloadMapper.ensureInitialized()
        .encodeMap<GitLabPayload>(this as GitLabPayload);
  }

  GitLabPayloadCopyWith<GitLabPayload, GitLabPayload, GitLabPayload>
      get copyWith => _GitLabPayloadCopyWithImpl(
          this as GitLabPayload, $identity, $identity);
  @override
  String toString() {
    return GitLabPayloadMapper.ensureInitialized()
        .stringifyValue(this as GitLabPayload);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GitLabPayloadMapper.ensureInitialized()
                .isValueEqual(this as GitLabPayload, other));
  }

  @override
  int get hashCode {
    return GitLabPayloadMapper.ensureInitialized()
        .hashValue(this as GitLabPayload);
  }
}

extension GitLabPayloadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GitLabPayload, $Out> {
  GitLabPayloadCopyWith<$R, GitLabPayload, $Out> get $asGitLabPayload =>
      $base.as((v, t, t2) => _GitLabPayloadCopyWithImpl(v, t, t2));
}

abstract class GitLabPayloadCopyWith<$R, $In extends GitLabPayload, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  GitLabProjectCopyWith<$R, GitLabProject, GitLabProject> get projectDetails;
  ListCopyWith<$R, GitLabCommit,
      GitLabCommitCopyWith<$R, GitLabCommit, GitLabCommit>> get commitsDetails;
  GitLabRepositoryCopyWith<$R, GitLabRepository, GitLabRepository>
      get repositoryDetails;
  $R call(
      {String? operationType,
      String? eventType,
      String? beforeCommitSHA,
      String? afterCommitSHA,
      String? branchRefName,
      bool? isRefBranchProtected,
      String? checkoutSha,
      String? message,
      int? performerUserId,
      String? performerUserAvatar,
      String? performerUserEmail,
      String? performerUserName,
      String? performerUserUsername,
      int? relatedProjectId,
      GitLabProject? projectDetails,
      List<GitLabCommit>? commitsDetails,
      int? commitAmount,
      GitLabRepository? repositoryDetails});
  GitLabPayloadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GitLabPayloadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GitLabPayload, $Out>
    implements GitLabPayloadCopyWith<$R, GitLabPayload, $Out> {
  _GitLabPayloadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GitLabPayload> $mapper =
      GitLabPayloadMapper.ensureInitialized();
  @override
  GitLabProjectCopyWith<$R, GitLabProject, GitLabProject> get projectDetails =>
      $value.projectDetails.copyWith.$chain((v) => call(projectDetails: v));
  @override
  ListCopyWith<$R, GitLabCommit,
          GitLabCommitCopyWith<$R, GitLabCommit, GitLabCommit>>
      get commitsDetails => ListCopyWith($value.commitsDetails,
          (v, t) => v.copyWith.$chain(t), (v) => call(commitsDetails: v));
  @override
  GitLabRepositoryCopyWith<$R, GitLabRepository, GitLabRepository>
      get repositoryDetails => $value.repositoryDetails.copyWith
          .$chain((v) => call(repositoryDetails: v));
  @override
  $R call(
          {String? operationType,
          String? eventType,
          String? beforeCommitSHA,
          String? afterCommitSHA,
          String? branchRefName,
          bool? isRefBranchProtected,
          String? checkoutSha,
          Object? message = $none,
          int? performerUserId,
          String? performerUserAvatar,
          Object? performerUserEmail = $none,
          String? performerUserName,
          String? performerUserUsername,
          int? relatedProjectId,
          GitLabProject? projectDetails,
          List<GitLabCommit>? commitsDetails,
          int? commitAmount,
          GitLabRepository? repositoryDetails}) =>
      $apply(FieldCopyWithData({
        if (operationType != null) #operationType: operationType,
        if (eventType != null) #eventType: eventType,
        if (beforeCommitSHA != null) #beforeCommitSHA: beforeCommitSHA,
        if (afterCommitSHA != null) #afterCommitSHA: afterCommitSHA,
        if (branchRefName != null) #branchRefName: branchRefName,
        if (isRefBranchProtected != null)
          #isRefBranchProtected: isRefBranchProtected,
        if (checkoutSha != null) #checkoutSha: checkoutSha,
        if (message != $none) #message: message,
        if (performerUserId != null) #performerUserId: performerUserId,
        if (performerUserAvatar != null)
          #performerUserAvatar: performerUserAvatar,
        if (performerUserEmail != $none)
          #performerUserEmail: performerUserEmail,
        if (performerUserName != null) #performerUserName: performerUserName,
        if (performerUserUsername != null)
          #performerUserUsername: performerUserUsername,
        if (relatedProjectId != null) #relatedProjectId: relatedProjectId,
        if (projectDetails != null) #projectDetails: projectDetails,
        if (commitsDetails != null) #commitsDetails: commitsDetails,
        if (commitAmount != null) #commitAmount: commitAmount,
        if (repositoryDetails != null) #repositoryDetails: repositoryDetails
      }));
  @override
  GitLabPayload $make(CopyWithData data) => GitLabPayload(
      operationType: data.get(#operationType, or: $value.operationType),
      eventType: data.get(#eventType, or: $value.eventType),
      beforeCommitSHA: data.get(#beforeCommitSHA, or: $value.beforeCommitSHA),
      afterCommitSHA: data.get(#afterCommitSHA, or: $value.afterCommitSHA),
      branchRefName: data.get(#branchRefName, or: $value.branchRefName),
      isRefBranchProtected:
          data.get(#isRefBranchProtected, or: $value.isRefBranchProtected),
      checkoutSha: data.get(#checkoutSha, or: $value.checkoutSha),
      message: data.get(#message, or: $value.message),
      performerUserId: data.get(#performerUserId, or: $value.performerUserId),
      performerUserAvatar:
          data.get(#performerUserAvatar, or: $value.performerUserAvatar),
      performerUserEmail:
          data.get(#performerUserEmail, or: $value.performerUserEmail),
      performerUserName:
          data.get(#performerUserName, or: $value.performerUserName),
      performerUserUsername:
          data.get(#performerUserUsername, or: $value.performerUserUsername),
      relatedProjectId:
          data.get(#relatedProjectId, or: $value.relatedProjectId),
      projectDetails: data.get(#projectDetails, or: $value.projectDetails),
      commitsDetails: data.get(#commitsDetails, or: $value.commitsDetails),
      commitAmount: data.get(#commitAmount, or: $value.commitAmount),
      repositoryDetails:
          data.get(#repositoryDetails, or: $value.repositoryDetails));

  @override
  GitLabPayloadCopyWith<$R2, GitLabPayload, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GitLabPayloadCopyWithImpl($value, $cast, t);
}

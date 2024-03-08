// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'project.dart';

class GitLabProjectMapper extends ClassMapperBase<GitLabProject> {
  GitLabProjectMapper._();

  static GitLabProjectMapper? _instance;
  static GitLabProjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitLabProjectMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GitLabProject';

  static int _$id(GitLabProject v) => v.id;
  static const Field<GitLabProject, int> _f$id = Field('id', _$id);
  static String _$name(GitLabProject v) => v.name;
  static const Field<GitLabProject, String> _f$name = Field('name', _$name);
  static String? _$description(GitLabProject v) => v.description;
  static const Field<GitLabProject, String> _f$description =
      Field('description', _$description);
  static String _$webUrl(GitLabProject v) => v.webUrl;
  static const Field<GitLabProject, String> _f$webUrl =
      Field('webUrl', _$webUrl, key: 'web_url');
  static String? _$projectAvatarUrl(GitLabProject v) => v.projectAvatarUrl;
  static const Field<GitLabProject, String> _f$projectAvatarUrl =
      Field('projectAvatarUrl', _$projectAvatarUrl, key: 'avatar_url');
  static String _$gitSshUrl(GitLabProject v) => v.gitSshUrl;
  static const Field<GitLabProject, String> _f$gitSshUrl =
      Field('gitSshUrl', _$gitSshUrl, key: 'git_ssh_url');
  static String _$gitHttpUrl(GitLabProject v) => v.gitHttpUrl;
  static const Field<GitLabProject, String> _f$gitHttpUrl =
      Field('gitHttpUrl', _$gitHttpUrl, key: 'git_http_url');
  static String _$namespace(GitLabProject v) => v.namespace;
  static const Field<GitLabProject, String> _f$namespace =
      Field('namespace', _$namespace);
  static int _$visibilityLevel(GitLabProject v) => v.visibilityLevel;
  static const Field<GitLabProject, int> _f$visibilityLevel =
      Field('visibilityLevel', _$visibilityLevel, key: 'visibility_level');
  static String _$projectPathWithNamespace(GitLabProject v) =>
      v.projectPathWithNamespace;
  static const Field<GitLabProject, String> _f$projectPathWithNamespace = Field(
      'projectPathWithNamespace', _$projectPathWithNamespace,
      key: 'path_with_namespace');
  static String _$projectDefaultBranch(GitLabProject v) =>
      v.projectDefaultBranch;
  static const Field<GitLabProject, String> _f$projectDefaultBranch = Field(
      'projectDefaultBranch', _$projectDefaultBranch,
      key: 'default_branch');
  static String _$projectCIConfigPath(GitLabProject v) => v.projectCIConfigPath;
  static const Field<GitLabProject, String> _f$projectCIConfigPath = Field(
      'projectCIConfigPath', _$projectCIConfigPath,
      key: 'ci_config_path');
  static String _$homepageUrl(GitLabProject v) => v.homepageUrl;
  static const Field<GitLabProject, String> _f$homepageUrl =
      Field('homepageUrl', _$homepageUrl, key: 'homepage');
  static String _$projectUrl(GitLabProject v) => v.projectUrl;
  static const Field<GitLabProject, String> _f$projectUrl =
      Field('projectUrl', _$projectUrl, key: 'url');
  static String _$sshUrl(GitLabProject v) => v.sshUrl;
  static const Field<GitLabProject, String> _f$sshUrl =
      Field('sshUrl', _$sshUrl, key: 'ssh_url');
  static String _$httpUrl(GitLabProject v) => v.httpUrl;
  static const Field<GitLabProject, String> _f$httpUrl =
      Field('httpUrl', _$httpUrl, key: 'http_url');

  @override
  final Map<Symbol, Field<GitLabProject, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #webUrl: _f$webUrl,
    #projectAvatarUrl: _f$projectAvatarUrl,
    #gitSshUrl: _f$gitSshUrl,
    #gitHttpUrl: _f$gitHttpUrl,
    #namespace: _f$namespace,
    #visibilityLevel: _f$visibilityLevel,
    #projectPathWithNamespace: _f$projectPathWithNamespace,
    #projectDefaultBranch: _f$projectDefaultBranch,
    #projectCIConfigPath: _f$projectCIConfigPath,
    #homepageUrl: _f$homepageUrl,
    #projectUrl: _f$projectUrl,
    #sshUrl: _f$sshUrl,
    #httpUrl: _f$httpUrl,
  };

  static GitLabProject _instantiate(DecodingData data) {
    return GitLabProject(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        webUrl: data.dec(_f$webUrl),
        projectAvatarUrl: data.dec(_f$projectAvatarUrl),
        gitSshUrl: data.dec(_f$gitSshUrl),
        gitHttpUrl: data.dec(_f$gitHttpUrl),
        namespace: data.dec(_f$namespace),
        visibilityLevel: data.dec(_f$visibilityLevel),
        projectPathWithNamespace: data.dec(_f$projectPathWithNamespace),
        projectDefaultBranch: data.dec(_f$projectDefaultBranch),
        projectCIConfigPath: data.dec(_f$projectCIConfigPath),
        homepageUrl: data.dec(_f$homepageUrl),
        projectUrl: data.dec(_f$projectUrl),
        sshUrl: data.dec(_f$sshUrl),
        httpUrl: data.dec(_f$httpUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static GitLabProject fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitLabProject>(map);
  }

  static GitLabProject fromJson(String json) {
    return ensureInitialized().decodeJson<GitLabProject>(json);
  }
}

mixin GitLabProjectMappable {
  String toJson() {
    return GitLabProjectMapper.ensureInitialized()
        .encodeJson<GitLabProject>(this as GitLabProject);
  }

  Map<String, dynamic> toMap() {
    return GitLabProjectMapper.ensureInitialized()
        .encodeMap<GitLabProject>(this as GitLabProject);
  }

  GitLabProjectCopyWith<GitLabProject, GitLabProject, GitLabProject>
      get copyWith => _GitLabProjectCopyWithImpl(
          this as GitLabProject, $identity, $identity);
  @override
  String toString() {
    return GitLabProjectMapper.ensureInitialized()
        .stringifyValue(this as GitLabProject);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GitLabProjectMapper.ensureInitialized()
                .isValueEqual(this as GitLabProject, other));
  }

  @override
  int get hashCode {
    return GitLabProjectMapper.ensureInitialized()
        .hashValue(this as GitLabProject);
  }
}

extension GitLabProjectValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GitLabProject, $Out> {
  GitLabProjectCopyWith<$R, GitLabProject, $Out> get $asGitLabProject =>
      $base.as((v, t, t2) => _GitLabProjectCopyWithImpl(v, t, t2));
}

abstract class GitLabProjectCopyWith<$R, $In extends GitLabProject, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      String? description,
      String? webUrl,
      String? projectAvatarUrl,
      String? gitSshUrl,
      String? gitHttpUrl,
      String? namespace,
      int? visibilityLevel,
      String? projectPathWithNamespace,
      String? projectDefaultBranch,
      String? projectCIConfigPath,
      String? homepageUrl,
      String? projectUrl,
      String? sshUrl,
      String? httpUrl});
  GitLabProjectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GitLabProjectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GitLabProject, $Out>
    implements GitLabProjectCopyWith<$R, GitLabProject, $Out> {
  _GitLabProjectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GitLabProject> $mapper =
      GitLabProjectMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          Object? description = $none,
          String? webUrl,
          Object? projectAvatarUrl = $none,
          String? gitSshUrl,
          String? gitHttpUrl,
          String? namespace,
          int? visibilityLevel,
          String? projectPathWithNamespace,
          String? projectDefaultBranch,
          String? projectCIConfigPath,
          String? homepageUrl,
          String? projectUrl,
          String? sshUrl,
          String? httpUrl}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (webUrl != null) #webUrl: webUrl,
        if (projectAvatarUrl != $none) #projectAvatarUrl: projectAvatarUrl,
        if (gitSshUrl != null) #gitSshUrl: gitSshUrl,
        if (gitHttpUrl != null) #gitHttpUrl: gitHttpUrl,
        if (namespace != null) #namespace: namespace,
        if (visibilityLevel != null) #visibilityLevel: visibilityLevel,
        if (projectPathWithNamespace != null)
          #projectPathWithNamespace: projectPathWithNamespace,
        if (projectDefaultBranch != null)
          #projectDefaultBranch: projectDefaultBranch,
        if (projectCIConfigPath != null)
          #projectCIConfigPath: projectCIConfigPath,
        if (homepageUrl != null) #homepageUrl: homepageUrl,
        if (projectUrl != null) #projectUrl: projectUrl,
        if (sshUrl != null) #sshUrl: sshUrl,
        if (httpUrl != null) #httpUrl: httpUrl
      }));
  @override
  GitLabProject $make(CopyWithData data) => GitLabProject(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      webUrl: data.get(#webUrl, or: $value.webUrl),
      projectAvatarUrl:
          data.get(#projectAvatarUrl, or: $value.projectAvatarUrl),
      gitSshUrl: data.get(#gitSshUrl, or: $value.gitSshUrl),
      gitHttpUrl: data.get(#gitHttpUrl, or: $value.gitHttpUrl),
      namespace: data.get(#namespace, or: $value.namespace),
      visibilityLevel: data.get(#visibilityLevel, or: $value.visibilityLevel),
      projectPathWithNamespace: data.get(#projectPathWithNamespace,
          or: $value.projectPathWithNamespace),
      projectDefaultBranch:
          data.get(#projectDefaultBranch, or: $value.projectDefaultBranch),
      projectCIConfigPath:
          data.get(#projectCIConfigPath, or: $value.projectCIConfigPath),
      homepageUrl: data.get(#homepageUrl, or: $value.homepageUrl),
      projectUrl: data.get(#projectUrl, or: $value.projectUrl),
      sshUrl: data.get(#sshUrl, or: $value.sshUrl),
      httpUrl: data.get(#httpUrl, or: $value.httpUrl));

  @override
  GitLabProjectCopyWith<$R2, GitLabProject, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GitLabProjectCopyWithImpl($value, $cast, t);
}

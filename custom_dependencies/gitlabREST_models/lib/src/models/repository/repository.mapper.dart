// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'repository.dart';

class GitLabRepositoryMapper extends ClassMapperBase<GitLabRepository> {
  GitLabRepositoryMapper._();

  static GitLabRepositoryMapper? _instance;
  static GitLabRepositoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitLabRepositoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GitLabRepository';

  static String _$name(GitLabRepository v) => v.name;
  static const Field<GitLabRepository, String> _f$name = Field('name', _$name);
  static String _$url(GitLabRepository v) => v.url;
  static const Field<GitLabRepository, String> _f$url = Field('url', _$url);
  static String? _$description(GitLabRepository v) => v.description;
  static const Field<GitLabRepository, String> _f$description =
      Field('description', _$description);
  static String _$homepageUrl(GitLabRepository v) => v.homepageUrl;
  static const Field<GitLabRepository, String> _f$homepageUrl =
      Field('homepageUrl', _$homepageUrl, key: 'homepage');
  static String? _$gitHttpUrl(GitLabRepository v) => v.gitHttpUrl;
  static const Field<GitLabRepository, String> _f$gitHttpUrl =
      Field('gitHttpUrl', _$gitHttpUrl, key: 'git_http_url', opt: true);
  static String? _$gitSshUrl(GitLabRepository v) => v.gitSshUrl;
  static const Field<GitLabRepository, String> _f$gitSshUrl =
      Field('gitSshUrl', _$gitSshUrl, key: 'git_ssh_url', opt: true);
  static int? _$visibilityLevel(GitLabRepository v) => v.visibilityLevel;
  static const Field<GitLabRepository, int> _f$visibilityLevel = Field(
      'visibilityLevel', _$visibilityLevel,
      key: 'visibility_level', opt: true);

  @override
  final Map<Symbol, Field<GitLabRepository, dynamic>> fields = const {
    #name: _f$name,
    #url: _f$url,
    #description: _f$description,
    #homepageUrl: _f$homepageUrl,
    #gitHttpUrl: _f$gitHttpUrl,
    #gitSshUrl: _f$gitSshUrl,
    #visibilityLevel: _f$visibilityLevel,
  };

  static GitLabRepository _instantiate(DecodingData data) {
    return GitLabRepository(
        name: data.dec(_f$name),
        url: data.dec(_f$url),
        description: data.dec(_f$description),
        homepageUrl: data.dec(_f$homepageUrl),
        gitHttpUrl: data.dec(_f$gitHttpUrl),
        gitSshUrl: data.dec(_f$gitSshUrl),
        visibilityLevel: data.dec(_f$visibilityLevel));
  }

  @override
  final Function instantiate = _instantiate;

  static GitLabRepository fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitLabRepository>(map);
  }

  static GitLabRepository fromJson(String json) {
    return ensureInitialized().decodeJson<GitLabRepository>(json);
  }
}

mixin GitLabRepositoryMappable {
  String toJson() {
    return GitLabRepositoryMapper.ensureInitialized()
        .encodeJson<GitLabRepository>(this as GitLabRepository);
  }

  Map<String, dynamic> toMap() {
    return GitLabRepositoryMapper.ensureInitialized()
        .encodeMap<GitLabRepository>(this as GitLabRepository);
  }

  GitLabRepositoryCopyWith<GitLabRepository, GitLabRepository, GitLabRepository>
      get copyWith => _GitLabRepositoryCopyWithImpl(
          this as GitLabRepository, $identity, $identity);
  @override
  String toString() {
    return GitLabRepositoryMapper.ensureInitialized()
        .stringifyValue(this as GitLabRepository);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GitLabRepositoryMapper.ensureInitialized()
                .isValueEqual(this as GitLabRepository, other));
  }

  @override
  int get hashCode {
    return GitLabRepositoryMapper.ensureInitialized()
        .hashValue(this as GitLabRepository);
  }
}

extension GitLabRepositoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GitLabRepository, $Out> {
  GitLabRepositoryCopyWith<$R, GitLabRepository, $Out>
      get $asGitLabRepository =>
          $base.as((v, t, t2) => _GitLabRepositoryCopyWithImpl(v, t, t2));
}

abstract class GitLabRepositoryCopyWith<$R, $In extends GitLabRepository, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? url,
      String? description,
      String? homepageUrl,
      String? gitHttpUrl,
      String? gitSshUrl,
      int? visibilityLevel});
  GitLabRepositoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GitLabRepositoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GitLabRepository, $Out>
    implements GitLabRepositoryCopyWith<$R, GitLabRepository, $Out> {
  _GitLabRepositoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GitLabRepository> $mapper =
      GitLabRepositoryMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          String? url,
          Object? description = $none,
          String? homepageUrl,
          Object? gitHttpUrl = $none,
          Object? gitSshUrl = $none,
          Object? visibilityLevel = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (url != null) #url: url,
        if (description != $none) #description: description,
        if (homepageUrl != null) #homepageUrl: homepageUrl,
        if (gitHttpUrl != $none) #gitHttpUrl: gitHttpUrl,
        if (gitSshUrl != $none) #gitSshUrl: gitSshUrl,
        if (visibilityLevel != $none) #visibilityLevel: visibilityLevel
      }));
  @override
  GitLabRepository $make(CopyWithData data) => GitLabRepository(
      name: data.get(#name, or: $value.name),
      url: data.get(#url, or: $value.url),
      description: data.get(#description, or: $value.description),
      homepageUrl: data.get(#homepageUrl, or: $value.homepageUrl),
      gitHttpUrl: data.get(#gitHttpUrl, or: $value.gitHttpUrl),
      gitSshUrl: data.get(#gitSshUrl, or: $value.gitSshUrl),
      visibilityLevel: data.get(#visibilityLevel, or: $value.visibilityLevel));

  @override
  GitLabRepositoryCopyWith<$R2, GitLabRepository, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GitLabRepositoryCopyWithImpl($value, $cast, t);
}

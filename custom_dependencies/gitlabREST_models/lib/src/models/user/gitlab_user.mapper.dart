// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'gitlab_user.dart';

class GitLabUserMapper extends ClassMapperBase<GitLabUser> {
  GitLabUserMapper._();

  static GitLabUserMapper? _instance;
  static GitLabUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitLabUserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GitLabUser';

  static int _$id(GitLabUser v) => v.id;
  static const Field<GitLabUser, int> _f$id = Field('id', _$id);
  static String _$name(GitLabUser v) => v.name;
  static const Field<GitLabUser, String> _f$name = Field('name', _$name);
  static String _$username(GitLabUser v) => v.username;
  static const Field<GitLabUser, String> _f$username =
      Field('username', _$username);
  static String _$avatarUrl(GitLabUser v) => v.avatarUrl;
  static const Field<GitLabUser, String> _f$avatarUrl =
      Field('avatarUrl', _$avatarUrl, key: 'avatar_url');
  static String _$email(GitLabUser v) => v.email;
  static const Field<GitLabUser, String> _f$email = Field('email', _$email);

  @override
  final Map<Symbol, Field<GitLabUser, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #username: _f$username,
    #avatarUrl: _f$avatarUrl,
    #email: _f$email,
  };

  static GitLabUser _instantiate(DecodingData data) {
    return GitLabUser(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        username: data.dec(_f$username),
        avatarUrl: data.dec(_f$avatarUrl),
        email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static GitLabUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitLabUser>(map);
  }

  static GitLabUser fromJson(String json) {
    return ensureInitialized().decodeJson<GitLabUser>(json);
  }
}

mixin GitLabUserMappable {
  String toJson() {
    return GitLabUserMapper.ensureInitialized()
        .encodeJson<GitLabUser>(this as GitLabUser);
  }

  Map<String, dynamic> toMap() {
    return GitLabUserMapper.ensureInitialized()
        .encodeMap<GitLabUser>(this as GitLabUser);
  }

  GitLabUserCopyWith<GitLabUser, GitLabUser, GitLabUser> get copyWith =>
      _GitLabUserCopyWithImpl(this as GitLabUser, $identity, $identity);
  @override
  String toString() {
    return GitLabUserMapper.ensureInitialized()
        .stringifyValue(this as GitLabUser);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GitLabUserMapper.ensureInitialized()
                .isValueEqual(this as GitLabUser, other));
  }

  @override
  int get hashCode {
    return GitLabUserMapper.ensureInitialized().hashValue(this as GitLabUser);
  }
}

extension GitLabUserValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GitLabUser, $Out> {
  GitLabUserCopyWith<$R, GitLabUser, $Out> get $asGitLabUser =>
      $base.as((v, t, t2) => _GitLabUserCopyWithImpl(v, t, t2));
}

abstract class GitLabUserCopyWith<$R, $In extends GitLabUser, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      String? username,
      String? avatarUrl,
      String? email});
  GitLabUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GitLabUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GitLabUser, $Out>
    implements GitLabUserCopyWith<$R, GitLabUser, $Out> {
  _GitLabUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GitLabUser> $mapper =
      GitLabUserMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          String? username,
          String? avatarUrl,
          String? email}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (username != null) #username: username,
        if (avatarUrl != null) #avatarUrl: avatarUrl,
        if (email != null) #email: email
      }));
  @override
  GitLabUser $make(CopyWithData data) => GitLabUser(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      username: data.get(#username, or: $value.username),
      avatarUrl: data.get(#avatarUrl, or: $value.avatarUrl),
      email: data.get(#email, or: $value.email));

  @override
  GitLabUserCopyWith<$R2, GitLabUser, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GitLabUserCopyWithImpl($value, $cast, t);
}

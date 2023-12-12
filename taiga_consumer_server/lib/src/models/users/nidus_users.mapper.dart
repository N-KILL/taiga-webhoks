// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nidus_users.dart';

class NidusUserMapper extends ClassMapperBase<NidusUser> {
  NidusUserMapper._();

  static NidusUserMapper? _instance;
  static NidusUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NidusUserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NidusUser';

  static int _$id(NidusUser v) => v.id;
  static const Field<NidusUser, int> _f$id = Field('id', _$id);
  static String _$username(NidusUser v) => v.username;
  static const Field<NidusUser, String> _f$username =
      Field('username', _$username);
  static String _$avatarUrl(NidusUser v) => v.avatarUrl;
  static const Field<NidusUser, String> _f$avatarUrl =
      Field('avatarUrl', _$avatarUrl);
  static String _$fullName(NidusUser v) => v.fullName;
  static const Field<NidusUser, String> _f$fullName =
      Field('fullName', _$fullName);
  static int _$gitlabId(NidusUser v) => v.gitlabId;
  static const Field<NidusUser, int> _f$gitlabId =
      Field('gitlabId', _$gitlabId);
  static int _$taigaId(NidusUser v) => v.taigaId;
  static const Field<NidusUser, int> _f$taigaId = Field('taigaId', _$taigaId);

  @override
  final Map<Symbol, Field<NidusUser, dynamic>> fields = const {
    #id: _f$id,
    #username: _f$username,
    #avatarUrl: _f$avatarUrl,
    #fullName: _f$fullName,
    #gitlabId: _f$gitlabId,
    #taigaId: _f$taigaId,
  };

  static NidusUser _instantiate(DecodingData data) {
    return NidusUser(
        id: data.dec(_f$id),
        username: data.dec(_f$username),
        avatarUrl: data.dec(_f$avatarUrl),
        fullName: data.dec(_f$fullName),
        gitlabId: data.dec(_f$gitlabId),
        taigaId: data.dec(_f$taigaId));
  }

  @override
  final Function instantiate = _instantiate;

  static NidusUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NidusUser>(map);
  }

  static NidusUser fromJson(String json) {
    return ensureInitialized().decodeJson<NidusUser>(json);
  }
}

mixin NidusUserMappable {
  String toJson() {
    return NidusUserMapper.ensureInitialized()
        .encodeJson<NidusUser>(this as NidusUser);
  }

  Map<String, dynamic> toMap() {
    return NidusUserMapper.ensureInitialized()
        .encodeMap<NidusUser>(this as NidusUser);
  }

  NidusUserCopyWith<NidusUser, NidusUser, NidusUser> get copyWith =>
      _NidusUserCopyWithImpl(this as NidusUser, $identity, $identity);
  @override
  String toString() {
    return NidusUserMapper.ensureInitialized()
        .stringifyValue(this as NidusUser);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NidusUserMapper.ensureInitialized()
                .isValueEqual(this as NidusUser, other));
  }

  @override
  int get hashCode {
    return NidusUserMapper.ensureInitialized().hashValue(this as NidusUser);
  }
}

extension NidusUserValueCopy<$R, $Out> on ObjectCopyWith<$R, NidusUser, $Out> {
  NidusUserCopyWith<$R, NidusUser, $Out> get $asNidusUser =>
      $base.as((v, t, t2) => _NidusUserCopyWithImpl(v, t, t2));
}

abstract class NidusUserCopyWith<$R, $In extends NidusUser, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? username,
      String? avatarUrl,
      String? fullName,
      int? gitlabId,
      int? taigaId});
  NidusUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NidusUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NidusUser, $Out>
    implements NidusUserCopyWith<$R, NidusUser, $Out> {
  _NidusUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NidusUser> $mapper =
      NidusUserMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? username,
          String? avatarUrl,
          String? fullName,
          int? gitlabId,
          int? taigaId}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (username != null) #username: username,
        if (avatarUrl != null) #avatarUrl: avatarUrl,
        if (fullName != null) #fullName: fullName,
        if (gitlabId != null) #gitlabId: gitlabId,
        if (taigaId != null) #taigaId: taigaId
      }));
  @override
  NidusUser $make(CopyWithData data) => NidusUser(
      id: data.get(#id, or: $value.id),
      username: data.get(#username, or: $value.username),
      avatarUrl: data.get(#avatarUrl, or: $value.avatarUrl),
      fullName: data.get(#fullName, or: $value.fullName),
      gitlabId: data.get(#gitlabId, or: $value.gitlabId),
      taigaId: data.get(#taigaId, or: $value.taigaId));

  @override
  NidusUserCopyWith<$R2, NidusUser, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NidusUserCopyWithImpl($value, $cast, t);
}

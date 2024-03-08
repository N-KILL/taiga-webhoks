// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'taiga_user.dart';

class TaigaUserMapper extends ClassMapperBase<TaigaUser> {
  TaigaUserMapper._();

  static TaigaUserMapper? _instance;
  static TaigaUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaUserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaUser';

  static int _$id(TaigaUser v) => v.id;
  static const Field<TaigaUser, int> _f$id = Field('id', _$id);
  static String _$taigaProfileUrl(TaigaUser v) => v.taigaProfileUrl;
  static const Field<TaigaUser, String> _f$taigaProfileUrl =
      Field('taigaProfileUrl', _$taigaProfileUrl, key: 'permalink');
  static String _$username(TaigaUser v) => v.username;
  static const Field<TaigaUser, String> _f$username =
      Field('username', _$username);
  static String _$fullName(TaigaUser v) => v.fullName;
  static const Field<TaigaUser, String> _f$fullName =
      Field('fullName', _$fullName, key: 'full_name');
  static String _$profilePicUrl(TaigaUser v) => v.profilePicUrl;
  static const Field<TaigaUser, String> _f$profilePicUrl =
      Field('profilePicUrl', _$profilePicUrl, key: 'photo');
  static String _$gravatarServiceId(TaigaUser v) => v.gravatarServiceId;
  static const Field<TaigaUser, String> _f$gravatarServiceId =
      Field('gravatarServiceId', _$gravatarServiceId, key: 'gravatar_id');

  @override
  final Map<Symbol, Field<TaigaUser, dynamic>> fields = const {
    #id: _f$id,
    #taigaProfileUrl: _f$taigaProfileUrl,
    #username: _f$username,
    #fullName: _f$fullName,
    #profilePicUrl: _f$profilePicUrl,
    #gravatarServiceId: _f$gravatarServiceId,
  };

  static TaigaUser _instantiate(DecodingData data) {
    return TaigaUser(
        id: data.dec(_f$id),
        taigaProfileUrl: data.dec(_f$taigaProfileUrl),
        username: data.dec(_f$username),
        fullName: data.dec(_f$fullName),
        profilePicUrl: data.dec(_f$profilePicUrl),
        gravatarServiceId: data.dec(_f$gravatarServiceId));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaUser>(map);
  }

  static TaigaUser fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaUser>(json);
  }
}

mixin TaigaUserMappable {
  String toJson() {
    return TaigaUserMapper.ensureInitialized()
        .encodeJson<TaigaUser>(this as TaigaUser);
  }

  Map<String, dynamic> toMap() {
    return TaigaUserMapper.ensureInitialized()
        .encodeMap<TaigaUser>(this as TaigaUser);
  }

  TaigaUserCopyWith<TaigaUser, TaigaUser, TaigaUser> get copyWith =>
      _TaigaUserCopyWithImpl(this as TaigaUser, $identity, $identity);
  @override
  String toString() {
    return TaigaUserMapper.ensureInitialized()
        .stringifyValue(this as TaigaUser);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaUserMapper.ensureInitialized()
                .isValueEqual(this as TaigaUser, other));
  }

  @override
  int get hashCode {
    return TaigaUserMapper.ensureInitialized().hashValue(this as TaigaUser);
  }
}

extension TaigaUserValueCopy<$R, $Out> on ObjectCopyWith<$R, TaigaUser, $Out> {
  TaigaUserCopyWith<$R, TaigaUser, $Out> get $asTaigaUser =>
      $base.as((v, t, t2) => _TaigaUserCopyWithImpl(v, t, t2));
}

abstract class TaigaUserCopyWith<$R, $In extends TaigaUser, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? taigaProfileUrl,
      String? username,
      String? fullName,
      String? profilePicUrl,
      String? gravatarServiceId});
  TaigaUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaUser, $Out>
    implements TaigaUserCopyWith<$R, TaigaUser, $Out> {
  _TaigaUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaUser> $mapper =
      TaigaUserMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? taigaProfileUrl,
          String? username,
          String? fullName,
          String? profilePicUrl,
          String? gravatarServiceId}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (taigaProfileUrl != null) #taigaProfileUrl: taigaProfileUrl,
        if (username != null) #username: username,
        if (fullName != null) #fullName: fullName,
        if (profilePicUrl != null) #profilePicUrl: profilePicUrl,
        if (gravatarServiceId != null) #gravatarServiceId: gravatarServiceId
      }));
  @override
  TaigaUser $make(CopyWithData data) => TaigaUser(
      id: data.get(#id, or: $value.id),
      taigaProfileUrl: data.get(#taigaProfileUrl, or: $value.taigaProfileUrl),
      username: data.get(#username, or: $value.username),
      fullName: data.get(#fullName, or: $value.fullName),
      profilePicUrl: data.get(#profilePicUrl, or: $value.profilePicUrl),
      gravatarServiceId:
          data.get(#gravatarServiceId, or: $value.gravatarServiceId));

  @override
  TaigaUserCopyWith<$R2, TaigaUser, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaUserCopyWithImpl($value, $cast, t);
}

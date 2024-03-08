// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserAPIStatusMapper extends EnumMapper<UserAPIStatus> {
  UserAPIStatusMapper._();

  static UserAPIStatusMapper? _instance;
  static UserAPIStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserAPIStatusMapper._());
    }
    return _instance!;
  }

  static UserAPIStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  UserAPIStatus decode(dynamic value) {
    switch (value) {
      case 'active':
        return UserAPIStatus.active;
      case 'inactive':
        return UserAPIStatus.inactive;
      case 'blocked':
        return UserAPIStatus.blocked;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(UserAPIStatus self) {
    switch (self) {
      case UserAPIStatus.active:
        return 'active';
      case UserAPIStatus.inactive:
        return 'inactive';
      case UserAPIStatus.blocked:
        return 'blocked';
    }
  }
}

extension UserAPIStatusMapperExtension on UserAPIStatus {
  String toValue() {
    UserAPIStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<UserAPIStatus>(this) as String;
  }
}

class UserAPIMapper extends ClassMapperBase<UserAPI> {
  UserAPIMapper._();

  static UserAPIMapper? _instance;
  static UserAPIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserAPIMapper._());
      UserAPIStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserAPI';

  static int _$id(UserAPI v) => v.id;
  static const Field<UserAPI, int> _f$id = Field('id', _$id);
  static String _$username(UserAPI v) => v.username;
  static const Field<UserAPI, String> _f$username =
      Field('username', _$username);
  static String _$name(UserAPI v) => v.name;
  static const Field<UserAPI, String> _f$name = Field('name', _$name);
  static UserAPIStatus _$state(UserAPI v) => v.state;
  static const Field<UserAPI, UserAPIStatus> _f$state = Field('state', _$state);
  static bool _$isLocked(UserAPI v) => v.isLocked;
  static const Field<UserAPI, bool> _f$isLocked =
      Field('isLocked', _$isLocked, key: 'locked');
  static String _$avatarUrl(UserAPI v) => v.avatarUrl;
  static const Field<UserAPI, String> _f$avatarUrl =
      Field('avatarUrl', _$avatarUrl, key: 'avatar_url');
  static String _$webUrl(UserAPI v) => v.webUrl;
  static const Field<UserAPI, String> _f$webUrl =
      Field('webUrl', _$webUrl, key: 'web_url');

  @override
  final Map<Symbol, Field<UserAPI, dynamic>> fields = const {
    #id: _f$id,
    #username: _f$username,
    #name: _f$name,
    #state: _f$state,
    #isLocked: _f$isLocked,
    #avatarUrl: _f$avatarUrl,
    #webUrl: _f$webUrl,
  };

  static UserAPI _instantiate(DecodingData data) {
    return UserAPI(
        id: data.dec(_f$id),
        username: data.dec(_f$username),
        name: data.dec(_f$name),
        state: data.dec(_f$state),
        isLocked: data.dec(_f$isLocked),
        avatarUrl: data.dec(_f$avatarUrl),
        webUrl: data.dec(_f$webUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static UserAPI fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserAPI>(map);
  }

  static UserAPI fromJson(String json) {
    return ensureInitialized().decodeJson<UserAPI>(json);
  }
}

mixin UserAPIMappable {
  String toJson() {
    return UserAPIMapper.ensureInitialized()
        .encodeJson<UserAPI>(this as UserAPI);
  }

  Map<String, dynamic> toMap() {
    return UserAPIMapper.ensureInitialized()
        .encodeMap<UserAPI>(this as UserAPI);
  }

  UserAPICopyWith<UserAPI, UserAPI, UserAPI> get copyWith =>
      _UserAPICopyWithImpl(this as UserAPI, $identity, $identity);
  @override
  String toString() {
    return UserAPIMapper.ensureInitialized().stringifyValue(this as UserAPI);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            UserAPIMapper.ensureInitialized()
                .isValueEqual(this as UserAPI, other));
  }

  @override
  int get hashCode {
    return UserAPIMapper.ensureInitialized().hashValue(this as UserAPI);
  }
}

extension UserAPIValueCopy<$R, $Out> on ObjectCopyWith<$R, UserAPI, $Out> {
  UserAPICopyWith<$R, UserAPI, $Out> get $asUserAPI =>
      $base.as((v, t, t2) => _UserAPICopyWithImpl(v, t, t2));
}

abstract class UserAPICopyWith<$R, $In extends UserAPI, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? username,
      String? name,
      UserAPIStatus? state,
      bool? isLocked,
      String? avatarUrl,
      String? webUrl});
  UserAPICopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserAPICopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserAPI, $Out>
    implements UserAPICopyWith<$R, UserAPI, $Out> {
  _UserAPICopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserAPI> $mapper =
      UserAPIMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? username,
          String? name,
          UserAPIStatus? state,
          bool? isLocked,
          String? avatarUrl,
          String? webUrl}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (username != null) #username: username,
        if (name != null) #name: name,
        if (state != null) #state: state,
        if (isLocked != null) #isLocked: isLocked,
        if (avatarUrl != null) #avatarUrl: avatarUrl,
        if (webUrl != null) #webUrl: webUrl
      }));
  @override
  UserAPI $make(CopyWithData data) => UserAPI(
      id: data.get(#id, or: $value.id),
      username: data.get(#username, or: $value.username),
      name: data.get(#name, or: $value.name),
      state: data.get(#state, or: $value.state),
      isLocked: data.get(#isLocked, or: $value.isLocked),
      avatarUrl: data.get(#avatarUrl, or: $value.avatarUrl),
      webUrl: data.get(#webUrl, or: $value.webUrl));

  @override
  UserAPICopyWith<$R2, UserAPI, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserAPICopyWithImpl($value, $cast, t);
}

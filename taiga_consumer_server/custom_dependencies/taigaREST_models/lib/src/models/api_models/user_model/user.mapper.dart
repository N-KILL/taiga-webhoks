// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class ApiUserMapper extends ClassMapperBase<ApiUser> {
  ApiUserMapper._();

  static ApiUserMapper? _instance;
  static ApiUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiUserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApiUser';

  static int _$userId(ApiUser v) => v.userId;
  static const Field<ApiUser, int> _f$userId =
      Field('userId', _$userId, key: 'id');
  static String _$username(ApiUser v) => v.username;
  static const Field<ApiUser, String> _f$username =
      Field('username', _$username);
  static String _$fullName(ApiUser v) => v.fullName;
  static const Field<ApiUser, String> _f$fullName =
      Field('fullName', _$fullName, key: 'full_name');
  static String _$fullNameDisplay(ApiUser v) => v.fullNameDisplay;
  static const Field<ApiUser, String> _f$fullNameDisplay =
      Field('fullNameDisplay', _$fullNameDisplay, key: 'full_name_display');
  static String _$color(ApiUser v) => v.color;
  static const Field<ApiUser, String> _f$color = Field('color', _$color);
  static String _$biography(ApiUser v) => v.biography;
  static const Field<ApiUser, String> _f$biography =
      Field('biography', _$biography, key: 'bio');
  static String _$language(ApiUser v) => v.language;
  static const Field<ApiUser, String> _f$language =
      Field('language', _$language, key: 'lang');
  static String _$userTheme(ApiUser v) => v.userTheme;
  static const Field<ApiUser, String> _f$userTheme =
      Field('userTheme', _$userTheme, key: 'theme');
  static String _$timezone(ApiUser v) => v.timezone;
  static const Field<ApiUser, String> _f$timezone =
      Field('timezone', _$timezone);
  static bool _$isActive(ApiUser v) => v.isActive;
  static const Field<ApiUser, bool> _f$isActive =
      Field('isActive', _$isActive, key: 'is_active');
  static String? _$avatar(ApiUser v) => v.avatar;
  static const Field<ApiUser, String> _f$avatar =
      Field('avatar', _$avatar, key: 'photo');
  static String? _$bigAvatar(ApiUser v) => v.bigAvatar;
  static const Field<ApiUser, String> _f$bigAvatar =
      Field('bigAvatar', _$bigAvatar, key: 'big_photo');
  static String _$gravatarId(ApiUser v) => v.gravatarId;
  static const Field<ApiUser, String> _f$gravatarId =
      Field('gravatarId', _$gravatarId, key: 'gravatar_id');
  static List<String> _$roles(ApiUser v) => v.roles;
  static const Field<ApiUser, List<String>> _f$roles = Field('roles', _$roles);

  @override
  final Map<Symbol, Field<ApiUser, dynamic>> fields = const {
    #userId: _f$userId,
    #username: _f$username,
    #fullName: _f$fullName,
    #fullNameDisplay: _f$fullNameDisplay,
    #color: _f$color,
    #biography: _f$biography,
    #language: _f$language,
    #userTheme: _f$userTheme,
    #timezone: _f$timezone,
    #isActive: _f$isActive,
    #avatar: _f$avatar,
    #bigAvatar: _f$bigAvatar,
    #gravatarId: _f$gravatarId,
    #roles: _f$roles,
  };

  static ApiUser _instantiate(DecodingData data) {
    return ApiUser(
        userId: data.dec(_f$userId),
        username: data.dec(_f$username),
        fullName: data.dec(_f$fullName),
        fullNameDisplay: data.dec(_f$fullNameDisplay),
        color: data.dec(_f$color),
        biography: data.dec(_f$biography),
        language: data.dec(_f$language),
        userTheme: data.dec(_f$userTheme),
        timezone: data.dec(_f$timezone),
        isActive: data.dec(_f$isActive),
        avatar: data.dec(_f$avatar),
        bigAvatar: data.dec(_f$bigAvatar),
        gravatarId: data.dec(_f$gravatarId),
        roles: data.dec(_f$roles));
  }

  @override
  final Function instantiate = _instantiate;

  static ApiUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiUser>(map);
  }

  static ApiUser fromJson(String json) {
    return ensureInitialized().decodeJson<ApiUser>(json);
  }
}

mixin ApiUserMappable {
  String toJson() {
    return ApiUserMapper.ensureInitialized()
        .encodeJson<ApiUser>(this as ApiUser);
  }

  Map<String, dynamic> toMap() {
    return ApiUserMapper.ensureInitialized()
        .encodeMap<ApiUser>(this as ApiUser);
  }

  ApiUserCopyWith<ApiUser, ApiUser, ApiUser> get copyWith =>
      _ApiUserCopyWithImpl(this as ApiUser, $identity, $identity);
  @override
  String toString() {
    return ApiUserMapper.ensureInitialized().stringifyValue(this as ApiUser);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ApiUserMapper.ensureInitialized()
                .isValueEqual(this as ApiUser, other));
  }

  @override
  int get hashCode {
    return ApiUserMapper.ensureInitialized().hashValue(this as ApiUser);
  }
}

extension ApiUserValueCopy<$R, $Out> on ObjectCopyWith<$R, ApiUser, $Out> {
  ApiUserCopyWith<$R, ApiUser, $Out> get $asApiUser =>
      $base.as((v, t, t2) => _ApiUserCopyWithImpl(v, t, t2));
}

abstract class ApiUserCopyWith<$R, $In extends ApiUser, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get roles;
  $R call(
      {int? userId,
      String? username,
      String? fullName,
      String? fullNameDisplay,
      String? color,
      String? biography,
      String? language,
      String? userTheme,
      String? timezone,
      bool? isActive,
      String? avatar,
      String? bigAvatar,
      String? gravatarId,
      List<String>? roles});
  ApiUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApiUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiUser, $Out>
    implements ApiUserCopyWith<$R, ApiUser, $Out> {
  _ApiUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiUser> $mapper =
      ApiUserMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get roles =>
      ListCopyWith($value.roles, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(roles: v));
  @override
  $R call(
          {int? userId,
          String? username,
          String? fullName,
          String? fullNameDisplay,
          String? color,
          String? biography,
          String? language,
          String? userTheme,
          String? timezone,
          bool? isActive,
          Object? avatar = $none,
          Object? bigAvatar = $none,
          String? gravatarId,
          List<String>? roles}) =>
      $apply(FieldCopyWithData({
        if (userId != null) #userId: userId,
        if (username != null) #username: username,
        if (fullName != null) #fullName: fullName,
        if (fullNameDisplay != null) #fullNameDisplay: fullNameDisplay,
        if (color != null) #color: color,
        if (biography != null) #biography: biography,
        if (language != null) #language: language,
        if (userTheme != null) #userTheme: userTheme,
        if (timezone != null) #timezone: timezone,
        if (isActive != null) #isActive: isActive,
        if (avatar != $none) #avatar: avatar,
        if (bigAvatar != $none) #bigAvatar: bigAvatar,
        if (gravatarId != null) #gravatarId: gravatarId,
        if (roles != null) #roles: roles
      }));
  @override
  ApiUser $make(CopyWithData data) => ApiUser(
      userId: data.get(#userId, or: $value.userId),
      username: data.get(#username, or: $value.username),
      fullName: data.get(#fullName, or: $value.fullName),
      fullNameDisplay: data.get(#fullNameDisplay, or: $value.fullNameDisplay),
      color: data.get(#color, or: $value.color),
      biography: data.get(#biography, or: $value.biography),
      language: data.get(#language, or: $value.language),
      userTheme: data.get(#userTheme, or: $value.userTheme),
      timezone: data.get(#timezone, or: $value.timezone),
      isActive: data.get(#isActive, or: $value.isActive),
      avatar: data.get(#avatar, or: $value.avatar),
      bigAvatar: data.get(#bigAvatar, or: $value.bigAvatar),
      gravatarId: data.get(#gravatarId, or: $value.gravatarId),
      roles: data.get(#roles, or: $value.roles));

  @override
  ApiUserCopyWith<$R2, ApiUser, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ApiUserCopyWithImpl($value, $cast, t);
}

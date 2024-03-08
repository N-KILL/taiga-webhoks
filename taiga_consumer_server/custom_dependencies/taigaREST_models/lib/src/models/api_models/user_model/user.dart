import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';


/// This [ApiUser] class is a model of the users with the format the `Taiga API`
/// returns. So it is used to map the response from the API into a Dart object 
/// to be used or readable
/// 
/// <h4>Note: </h4> 
/// This model is used on the api_users function.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ApiUser with ApiUserMappable {
  /// Constructor of the [ApiUser] Class
  ApiUser({
    required this.userId,
    required this.username,
    required this.fullName,
    required this.fullNameDisplay,
    required this.color,
    required this.biography,
    required this.language,
    required this.userTheme,
    required this.timezone,
    required this.isActive,
    required this.avatar,
    required this.bigAvatar,
    required this.gravatarId,
    required this.roles,
  });

  /// [userId] Its the id of the user on `Taiga`
  @MappableField(key: 'id')
  int userId;

  /// [username] Its the username of the user on the platform
  String username;

  /// [fullName] Its the full name of the user 
  String fullName;

  /// [fullNameDisplay] Its the full name of the user which is displayed on the 
  /// platform
  String fullNameDisplay;

  /// [color] Its the color of the user border on the platform 
  String color;

  /// [biography] Its the biography of the user on his profile
  @MappableField(key: 'bio')
  String biography;

  /// [language] Its the language the user have on the config
  @MappableField(key: 'lang')
  String language;

  /// [userTheme] Its the theme the user is using on `Taiga`
  @MappableField(key: 'theme')
  String userTheme;

  /// [timezone] Its a value to indicate the timezone of the user, this can came
  /// as an empty string: ''
  String timezone;

  /// [isActive] Its a [bool] to indicate if the user is active on the platform
  bool isActive;

  /// [avatar] Is the avatar image url at 80x80
  @MappableField(key: 'photo')
  String? avatar;

  /// [bigAvatar] Is the avatar image url but its in a 300x300 format
  @MappableField(key: 'big_photo')
  String? bigAvatar;

  /// [gravatarId] Its the id of gravatar of the user.
  /// 
  /// For more info about gravatar: <br>
  /// Gravatar service url: https://docs.gravatar.com/
  String gravatarId;

  /// [roles] Its a list of the roles of the user, can be different on project
  List<String> roles;

  /// This [fromJson] method, is to convert the response from the `API` when you
  /// do a `GET` request. Will crate an [ApiUser] from a json
  static const fromJson = ApiUserMapper.fromJson;
}

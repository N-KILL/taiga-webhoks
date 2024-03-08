import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

/// This enum is used to set the values of an user of the `GitLab API`. <br>
/// Based on this values: <br>
/// https://docs.gitlab.com/ee/api/users.html#user-status
@MappableEnum(mode: ValuesMode.named, caseStyle: CaseStyle.snakeCase)
enum UserAPIStatus {
  /// This is for the user status `active` on `Gitlab`.
  active,

  /// This is for the user status `inactive` on `Gitlab`.
  inactive,

  /// This is for the user status `blocked` on `Gitlab`.
  blocked,
}

/// This [UserAPI] class is used to map a user from the `GitLab API`. <br>
/// Based on the response of the API when you hit the `get /users` url. <br>
/// https://docs.gitlab.com/ee/api/users.html#user-status
@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserAPI with UserAPIMappable {
  /// Constructor
  UserAPI({
    required this.id,
    required this.username,
    required this.name,
    required this.state,
    required this.isLocked,
    required this.avatarUrl,
    required this.webUrl,
  });

  /// `Id` of the user on `GitLab`
  int id;

  /// `username` of the user on `GitLab`
  String username;

  /// `name` of the user on `GitLab`
  String name;

  /// `state` of the user on `GitLab`, indicate if he is "active" or not.
  UserAPIStatus state;

  /// `isLocked` show the status of the user. If its blocked or not
  @MappableField(key: 'locked')
  bool isLocked;

  /// `avatarUrl` its the url of the `GitLab User`. <br> 
  /// Usually it its a gravatar one. <br>
  /// More info about gravatar avatars: <br>
  /// https://gravatar.com/
  String avatarUrl;

  /// `webUrl` is the url to the profile of the user
  String webUrl;

  /// FromJson method, convert a json type object into this [UserAPI] Object
  static const fromJson = UserAPIMapper.fromJson;
}

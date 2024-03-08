import 'package:dart_mappable/dart_mappable.dart';

part 'gitlab_user.mapper.dart';

/// This class [GitLabUser] is used for map a `GitLab User` with the data it 
/// the `GitLab webhooks` brings . <br>
/// This is based on the webhook payloads samples: <br>
/// https://docs.gitlab.com/ee/user/project/integrations/webhook_events.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabUser with GitLabUserMappable {
  /// GitLabUser class constructor
  GitLabUser({
    required this.id,
    required this.name,
    required this.username,
    required this.avatarUrl,
    required this.email,
  });

  /// `Id` of the user on `GitLab`.
  int id;

  /// `Name` of the user on `GitLab`.
  String name;

  /// `Username` of the user on `GitLab`.
  String username;

  /// `Url` of avatar related to the user on `GitLab`.
  String avatarUrl;

  /// `Email` of the user on `GitLab`.
  String email;

  /// FromJson method, convert a json type object into this GitLabUser
  /// Object
  static const fromJson = GitLabUserMapper.fromJson;
}

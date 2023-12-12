import 'package:dart_mappable/dart_mappable.dart';

part 'nidus_users.mapper.dart';

/// This [NidusUser] class is used to create an user object for the `Nidus` app
/// this will be using the related `Taiga` account, and the related `GitLab`
/// account. To mix those two platforms in the new `Nidus` platform `Gestion`
@MappableClass()
class NidusUser with NidusUserMappable {
  /// Constructor of the [NidusUser] class
  NidusUser({
    required this.id,
    required this.username,
    required this.avatarUrl,
    required this.fullName,
    required this.gitlabId,
    required this.taigaId,
  });

  /// `id` its the identifier for the [NidusUser] object.
  int id;

  /// `fullName` its the full name of the person owner of the `user`.
  String fullName;

  /// `username` its the username/alias of the person owner of the `user`,
  /// decided to put in his account.
  String username;

  /// `avatar` its the url where the avatar image of the `user` is stored.
  String avatarUrl;

  /// `gitlabId` its the id of the `user` `GitLab account`.
  int gitlabId;

  /// `taigaId` its the id of the `user` `Taiga account`.
  int taigaId;

  /// FromJson method, convert a json type object into this
  /// [NidusUser] Object
  static const fromJson = NidusUserMapper.fromJson;
}

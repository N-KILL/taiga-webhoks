import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';

//? Note: This function is private, is avoided by .gitignore by the moment
// import 'package:taiga_consumer_server/src/helpers/user_generator.dart';

// TODO(Nacho): Terminar Endpoint
// Crear Documentacion
// Colocar logger
// Error handler

class UserEndpoint extends Endpoint {
  Future<User?> GetUserById(
    Session session, {
    required int id,
  }) async {
    final response = await User.db.findById(session, id);
    return response;
  }

  Future<User?> GetUserByTaigaId(
    Session session, {
    required int taigaId,
  }) async {
    final response = await User.db.findFirstRow(
      session,
      where: (t) => t.taigaId.equals(taigaId),
    );
    return response;
  }

  Future<User?> GetUserByGitHubId(
    Session session, {
    required int gitHubId,
  }) async {
    final response = await User.db.findFirstRow(
      session,
      where: (t) => t.gitHubId.equals(gitHubId),
    );
    return response;
  }

  Future<User?> GetUserByGitLabId(
    Session session, {
    required int gitLabId,
  }) async {
    final response = await User.db.findFirstRow(
      session,
      where: (t) => t.gitLabId.equals(gitLabId),
    );
    return response;
  }

  Future<User> CreateUser(
    Session session, {
    required User user,
  }) async {
    final response = await User.db.insertRow(session, user);
    return response;
  }

  Future<User?> UpdateUserById(
    Session session, {
    required int id,
    required User user,
  }) async {
    final modify = await User.db.findById(session, id);
    if (modify != null) {
      modify.gitHubId = user.gitHubId;
      modify.gitLabId = user.gitLabId;
      modify.taigaId = user.taigaId;
      modify.userAvatar = user.userAvatar;
      modify.username = user.username;

      final response = await User.db.updateRow(session, modify);

      return response;
    }

    return null;
  }

  //? Note: This function is private, is avoided by .gitignore by the moment
  // Future<bool> MagicEndpoint(Session session) async {
  //   final response = await UserGenerator(session);
  //   return response;
  // }
}

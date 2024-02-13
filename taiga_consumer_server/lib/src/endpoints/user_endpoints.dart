import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';
import 'package:taiga_consumer_server/src/helpers/user_generator.dart';

/// This [UserEndpoint] contains all the CRUD method to interact with an user
/// from the database.
/// <h5> NOTE: </h5>
///
/// The Read Methods, can return `null` when can't find any [User] information
///
/// <h5> CREATE METHODS </h5>
/// <ul>
/// <li>[createUser]</li>
/// <li>[createMultipleUsers]</li>
/// <li>[generateUsersFromTaigaProject]</li>
/// </ul>
///
/// <h5> READ METHODS </h5>
/// <ul>
/// <li>[getAllUsers]</li>
/// <li>[getUserById]</li>
/// <li>[getUserByTaigaId]</li>
/// <li>[getUserByGitHubId]</li>
/// <li>[getUserByGitLabId]</li>
/// </ul>
///
/// <h5> UPDATE METHODS </h5>
/// <ul>
/// <li>[updateUserById]</li>
/// </ul>
///
/// <h5> DELETE METHODS </h5>
/// <ul>
/// <li>[deleteUser]</li>
/// </ul>
class UserEndpoint extends Endpoint {
  /// This endpoint [getAllUsers] is used to get all the users on the database
  /// Don't require any parameter, just call it.
  Future<List<User>> getAllUsers(Session session) async {
    // Message indication this endpoint is running
    session.log(
      'Running getAllUsers Endpoint',
    );

    try {
      // Grab all the user information from the database
      final response = await User.db.find(
        session,
      );

      // Then return that data
      return response;
    } catch (e) {
      // throw an error in case of fail
      throw (
        'getAllUsers Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [getUserById] is used to get a user from the database using
  /// his id
  ///
  /// <h4> Required data: </h4>
  ///
  /// `userId`: [int] Id of the user on the database
  Future<User?> getUserById(
    Session session, {
    required int userId,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running GetUserById Endpoint',
    );

    try {
      // Try to find any user with that id
      final response = await User.db.findById(
        session,
        userId,
      );

      // Return the user if can be found
      if (response == null) {
        session.log(
          'GetUserById: Was not possible to found any user with that id',
        );

        // Return null
        return response;
      }

      // Return the user data
      return response;
    } catch (e) {
      // throw an error in case of fail
      throw (
        'GetUserById Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [getUserByTaigaId] is used to get a user from the database
  /// using his id of `Taiga`
  ///
  /// <h4> Required data: </h4>
  ///
  /// `taigaId`: [int] Id of the user on `Taiga`
  Future<User?> getUserByTaigaId(
    Session session, {
    required int taigaId,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running GetUserByTaigaId Endpoint',
    );

    try {
      // Get the first user with the taigaId
      final response = await User.db.findFirstRow(
        session,
        where: (t) => t.taigaId.equals(taigaId),
      );

      // Return the user if can be found
      if (response == null) {
        session.log(
          'GetUserByTaigaId: Was not possible to found any user with that id',
        );

        // Return null
        return response;
      }

      // Return the user data
      return response;
    } catch (e) {
      // throw an error in case of fail
      throw (
        'GetUserByTaigaId Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [getUserByGitHubId] is used to get a user from the database
  /// using his id of `GitHub`
  ///
  /// <h4> Required data: </h4>
  ///
  /// `gitHubId`: [int] Id of the user on `GitHub`
  Future<User?> getUserByGitHubId(
    Session session, {
    required int gitHubId,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running GetUserByGitHubId Endpoint',
    );

    try {
      // Get the first user with the gitHubId
      final response = await User.db.findFirstRow(
        session,
        where: (t) => t.gitHubId.equals(gitHubId),
      );

      // Return the user if can be found
      if (response == null) {
        session.log(
          'GetUserByGitHubId: Was not possible to found any user with that id',
        );

        // Return null
        return response;
      }

      // Return the user data
      return response;
    } catch (e) {
      // throw an error in case of fail
      throw (
        'GetUserByGitHubId Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [getUserByGitLabId] is used to get a user from the database
  /// using his id of `GitLab`
  ///
  /// <h4> Required data: </h4>
  ///
  /// `gitLabId`: [int] Id of the user on `GitLab`
  Future<User?> getUserByGitLabId(
    Session session, {
    required int gitLabId,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running GetUserByGitLabId Endpoint',
    );

    try {
      // Get the first user with the gitLabId
      final response = await User.db.findFirstRow(
        session,
        where: (t) => t.gitLabId.equals(gitLabId),
      );

      // Return the user if can be found
      if (response == null) {
        session.log(
          'GetUserByGitHubId: Was not possible to found any user with that id',
        );

        // Return null
        return response;
      }

      // Return the user data
      return response;
    } catch (e) {
      // throw an error in case of fail
      throw (
        'GetUserByGitLabId Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [createUser] is used to create a new user register in the
  /// database
  /// <h4> Required data: </h4>
  ///
  /// `user`: [User] instance with all the user data.
  Future<User> createUser(
    Session session, {
    required User user,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running CreateUser Endpoint',
    );

    try {
      // Attempt to create the user
      final response = await User.db.insertRow(
        session,
        user,
      );

      // Then return the information of the user
      return response;
    } catch (e) {
      // throw an error in case of fail
      throw (
        'CreateUser Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [createUser] is used to create a multiple new user registers
  /// in the database
  ///
  /// <h4> Required data: </h4>
  ///
  /// `users`: List[User] instance with all the user data.
  Future<List<User>> createMultipleUsers(
    Session session, {
    required List<User> users,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running CreateMultipleUsers Endpoint',
    );

    try {
      // Attempt to create the user
      final response = await User.db.insert(
        session,
        users,
      );

      // Then return the information of the user
      return response;
    } catch (e) {
      // throw an error in case of fail
      throw (
        'CreateMultipleUsers Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [updateUserById] is used to update information from a user
  /// registered in the database.
  ///
  /// <h4> Note: </h4>
  /// Is recommended to read the user information first with any `get` method,
  /// and then modify the stuff and call this function, to prevent deleting data
  /// if the `user` data you give is incomplete.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `userId`: [int] Its the id of the user on the database <br>
  /// `user`: [User] instance with all the user data we re going to put
  Future<User> updateUserById(
    Session session, {
    required int userId,
    required User user,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running UpdateUserById Endpoint',
    );

    try {
      // Find the user we re trying to modify
      final modify = await User.db.findById(
        session,
        userId,
      );

      // Modify the data based on the new
      if (modify != null) {
        modify.gitHubId = user.gitHubId;
        modify.gitLabId = user.gitLabId;
        modify.taigaId = user.taigaId;
        modify.userAvatar = user.userAvatar;
        modify.username = user.username;

        // Then update the user information on the database
        final response = await User.db.updateRow(
          session,
          modify,
        );

        // And return the new user data
        return response;
      }

      // In case the modify call, can't found any user, throw an error
      throw ('Was not possible to found any user with id: $userId',);
    } catch (e) {
      // throw an error in case of fail
      throw (
        'UpdateUserById Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [deleteUser] is used to delete information from a user
  /// registered in the database.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `userId`: [int] Its the id of the user on the database <br>
  Future<int> deleteUser(
    Session session, {
    required int userId,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running DeleteUser Endpoint',
    );

    try {
      // Try to delete the user
      final userData = await User.db.findById(
        session,
        userId,
      );
      if (userData != null) {
        // Remove the user from the database
        final id = await User.db.deleteRow(
          session,
          userData,
        );

        // Then return his id
        return id;
      }

      // In case that we can't find any user by that id, throw an error
      throw ('Was not possible to found any user with that id: $userId',);
    } catch (e) {
      // throw an error in case of fail
      throw (
        'DeleteUser Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  /// This endpoint [generateUsersFromTaigaProject] is used to generate user
  /// information based on a `Taiga Project`.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `taigaUsername`: [String] Its the name used to login into `Taiga` <br>
  /// `taigaPassword`: [String] Its the password used to login into `Taiga` <br>
  /// `taigaProjectId`: [int] Its the id of the project from we re going to read
  /// the users
  Future<List<User>> generateUsersFromTaigaProject(
    Session session, {
    required String taigaUsername,
    required String taigaPassword,
    required int taigaProjectId,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running GenerateUsersFromTaigaProject Endpoint',
    );
    try {
      // Call the function UserGenerator
      final response = await UserGenerator(
        session,
        taigaUsername: taigaUsername,
        taigaPassword: taigaPassword,
        taigaProjectId: taigaProjectId,
      );

      // Then return true or false, based on the function response
      return response;
    } catch (e) {
      // throw an error in case of fail
      throw (
        'GenerateUsersFromTaigaProject Failed, error: $e',
        LogLevel.error,
      );
    }
  }
}

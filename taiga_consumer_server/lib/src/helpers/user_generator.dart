import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/endpoints/user_endpoints.dart';
import 'package:taiga_consumer_server/src/generated/protocol/user.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

/// This user generator function is a private function used to generate users
/// based on the user in Taiga
Future<List<User>> UserGenerator(
  Session session, {
  required String taigaUsername,
  required String taigaPassword,
  required int taigaProjectId,
}) async {
  // Use the Taiga credentials to generate a token, this will be used to read
  // the project data.
  final auth = await ApiAuth().authenticateWithTaiga(
    username: taigaUsername,
    password: taigaPassword,
  );

  // Endpoint to get the users from taiga.
  //? Note: This came as ApiUser instance, which is a custom model from the
  //?Taiga package
  final projectUsers = await ApiTaigaUsers().getUsersFromProject(
    projectId: taigaProjectId,
    token: auth,
    apiUrl: 'https://api.taiga.io/api/v1',
  );

  // Get a list with all the user on the database
  final actualUserList = await UserEndpoint().getAllUsers(session);

  // This list is used to storage all the user that we re going to generate at
  // the end of the function
  final userList = <User>[];

  // Here we re going to turn a TaigaUser instance into a User instance.
  //? Note: This two values are different, thats we re turning one into another
  //? I recommend to check the models if you want to modify this function for
  //? some reason
  for (final user in projectUsers) {
    // Create a user instance
    final userData = User(
      username: user.username,
      fullName: user.fullName,
      taigaId: user.userId,
    );

    // If the user is already register on the database
    if (actualUserList.isNotEmpty &&
        actualUserList.any((userData) => userData.taigaId == user.userId)) {
      session.log('The user ${user.username} is already registered on the db');
    } else {
      // Add the user information into a list, that we re going to create later
      userList.add(userData);
    }
  }

  /// Attempt to register the users on the database
  try {
    // Register the users on the database
    final returnValue = await UserEndpoint().createMultipleUsers(
      session,
      users: userList,
    );

    // Return the list of users generated
    return returnValue;
  } catch (e) {
    // In case of failure, throw an error
    throw ('Error using UserGenerator: $e');
  }
}

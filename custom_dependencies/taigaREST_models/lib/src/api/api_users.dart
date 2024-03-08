import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:taiga_rest_models/src/models/api_models/user_model/user.dart';

/// This [ApiTaigaUsers] is used to manage all the methods of `Taiga` related
/// with users.
class ApiTaigaUsers {
  /// <h4> How to use </h4>
  ///
  /// If you're using online taiga the api url will be this:
  /// https://api.taiga.io/api/v1
  ///
  /// To get your projectId
  Future<List<ApiUser>> getUsersFromProject({
    required int projectId,
    required String token,
    required String apiUrl,
  }) async {
    // Set the url
    final url = '$apiUrl/users?project=$projectId';

    // Set the headers
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    // Create the get petition into the url, with the headers
    final response = await http.get(Uri.parse(url), headers: headers);

    // Aux to store the user list, this will be returned at the end
    final userList = <ApiUser>[];

    if (response.statusCode == 200) {
      // Turn the response into a list<dynamic>
      //? Because the response is a list, can't be used on the ApiUser.fromJson
      //? So we have to do this
      final responseData = jsonDecode(response.body) as List<dynamic>;

      // For each user in the response data
      for (final user in responseData) {
        // Map the user
        final apiUser = ApiUser.fromJson(jsonEncode(user));

        // And add it into the list that we re going to return
        userList.add(apiUser);
      }

      // Return the list of user
      return userList;
    } else {
      // If the request fail, print the error code and return null
      throw Exception(
        '''Failed to get users from the project $projectId. Status Code: ${response.statusCode}''',
      );
    }
  }
}

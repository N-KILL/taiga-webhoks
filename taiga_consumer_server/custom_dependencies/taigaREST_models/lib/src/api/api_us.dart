import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:taiga_rest_models/src/models/api_models/data_create_us/data_create_us.dart';

// TODO(Nacho): Verify this doc

///
class ApiTaigaUS {
  /// The function [getUserStoryStatuses] retrieves user story statuses for a
  /// given project using an authentication token.
  ///
  /// <h4> Args: </h4>
  /// <ul>
  /// <li>
  ///   [String] authToken: The [authToken] parameter is a required string that
  ///   represents the  authentication token for accessing the Taiga API.
  ///   This `token` is used to authenticate the user and authorize the API
  ///   requests.
  /// </li>
  /// <li>
  ///   [int] projectId: The [projectId] parameter is an integer that represents
  ///   the `ID` of the project for which you want to retrieve the user story
  ///   statuses.
  /// </li>
  /// </ul>
  ///
  /// <h4> Returns: </h4>
  ///   [Future] promise that resolves into a [Map] <[String] , [int]>.
  Future<Map<String, int>> getUserStoryStatuses({
    required String authToken,
    required int projectId,
  }) async {
    try {
      final response = await http.get(
        Uri.parse(
          'https://api.taiga.io/api/v1/userstory-statuses?project=$projectId',
        ),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        final statusesMap = <String, int>{};
        for (final e in jsonResponse) {
          final name = e['name'];
          final id = e['id'];
          if (name is String && id is int) {
            statusesMap[name] = id;
          }
        }
        return statusesMap;
      } else {
        throw Exception(
          'Failed to get user story statuses for project $projectId.',
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  /// This function modifies the status of a `user story` <br>
  /// Receives as parameters the `ID` of the `user story` [userStoryId],
  /// the `ID` of the new status [newStatusId],
  /// and the `authorization token` [authToken]
  Future<void> updateUserStoryStatus({
    required String userStoryId,
    required String newStatusId,
    required String authToken,
    required int version,
  }) async {
    try {
      final response = await http.patch(
        Uri.parse('https://api.taiga.io/api/v1/userstories/$userStoryId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
        body: json.encode({
          'version': version,
          'status': newStatusId,
        }),
      );

      if (response.statusCode != 200) {
        throw Exception(response.body);
      }
    } catch (e) {
      rethrow;
    }
  }

  /// The function creates a `custom field` for a `user story` in a
  /// `Taiga project` using the provided [authToken], [name], and [projectId].
  /// <br>
  /// <h4> Args: </h4>
  ///  <ul>
  ///   <li>  [String] `authToken`: The [authToken] parameter is a required
  ///         string.
  ///   </li>
  ///   <li>  [String] `name`: The [name] parameter is the name of the custom
  ///         field for the user story.
  ///   </li>
  ///   <li>  [int] `projectId`: The [projectId] parameter is the `ID` from the
  ///         project to which the custom field will be added.
  ///   </li>
  /// </ul>
  ///
  /// <h4> Returns: </h4>
  ///   [Map] <[String] , [dynamic]> containing the error response from the
  ///   `API` if the response status code is different to `201`
  Future<Map<String, dynamic>> createUserStoryCustomField({
    required String authToken,
    required String name,
    required String description,
    required int projectId,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.taiga.io/api/v1/userstory-custom-attributes'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
        body: json.encode({
          'name': name,
          'project': projectId,
          'description': description,
        }),
      );

      if (response.statusCode != 201) {
        throw Exception(response.body);
      }
      return json.decode(response.body) as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }

  /// The function `createUserStory` creates a user story by making a `POST`
  /// request to the `Taiga API` with the provided [authToken] and
  /// [userStoryData].
  /// <br>
  /// <h4> Args: </h4>
  /// <ul>
  ///   <li>
  ///   [String] authToken: The [authToken]  parameter is a required string that
  ///   represents the authentication token used for authorization in the API
  ///   request. It is used to authenticate the user making the request and
  ///   ensure that they have the necessary permissions to create a `user story`
  ///   </li>
  ///   <li>
  ///     [DataCreateUs] userStoryData: The [userStoryData] parameter is of type
  ///     [DataCreateUs] and is required. It contains the data needed to create
  ///      a `user story`.
  ///   </li>
  /// </ul>
  ///
  /// Returns: <br>
  ///   a [Future] that resolves to a [Map] <[String] , [dynamic]>.
  Future<Map<String, dynamic>> createUserStory({
    required String authToken,
    required DataCreateUs userStoryData,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.taiga.io/api/v1/userstories'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
        body: json.encode(userStoryData),
      );

      if (response.statusCode != 201) {
        throw Exception(response.body);
      }
      return json.decode(response.body) as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }

  /// The function [deleteUserStory] deletes a user story by making a `DELETE`
  /// request to the `Taiga API` with the provided `authentication token` and
  /// `user story ID`.
  Future<int> deleteUserStory({
    required String authToken,
    required int userStoryId,
  }) async {
    try {
      final response = await http.delete(
        Uri.parse('https://api.taiga.io/api/v1/userstories/$userStoryId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
      );

      if (response.statusCode != 204) {
        throw Exception(response.body);
      }
      return response.statusCode;
    } catch (e) {
      rethrow;
    }
  }

  /// The function [updateUserStory] updates a `user story` by making a `PUT`
  /// request to the Taiga API with the provided `authentication token`,
  /// `user story ID`, user story data and version.
  Future<int> updateUserStory({
    required String authToken,
    required int userStoryId,
    required DataCreateUs userStoryData,
    required int version,
  }) async {
    try {
      final response = await http.put(
        Uri.parse('https://api.taiga.io/api/v1/userstories/$userStoryId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
        body: json.encode(userStoryData),
      );

      if (response.statusCode != 200) {
        throw Exception(response.body);
      }
      return response.statusCode;
    } catch (e) {
      rethrow;
    }
  }
}

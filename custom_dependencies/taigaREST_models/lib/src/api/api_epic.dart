import 'dart:convert';
import 'package:http/http.dart' as http;

// TODO(Nacho): Create Doc

///
class ApiEpic {
  /// The function creates a custom field for an epic in a Taiga project using 
  /// the provided authentication token, name, description, and project ID.
  /// 
  /// <h4> Args: </h4>
  /// <ul>
  /// <li>
  ///   [String] authToken: The [authToken] parameter is a required [String] 
  ///   that represents the authentication token used to authorize the `API` 
  ///   request. 
  ///   It is used to authenticate the user making the request and ensure that 
  ///   they have the necessary permissions to create an epic custom field.
  /// </li>
  /// <li>
  ///   [String] name: The [name] of the epic custom field.
  /// </li>
  /// <li>
  ///   [String] description: A [description] of the custom fiel that will be 
  ///   created for the epic.
  /// </li>
  /// <li>
  ///   [int] projectId: The [projectId] parameter is the ID of the project 
  ///   where you want to create the epic custom field.
  /// </li>
  /// </ul>
  /// <h4> Returns: </h4>
  ///   [Future] that resolves to a [Map] <[String], [dynamic]>.
  Future<Map<String, dynamic>> createEpicCustomField({
    required String authToken,
    required String name,
    required String description,
    required int projectId,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.taiga.io/api/v1/epic-custom-attributes'),
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
        throw Exception('Failed to create user story custom field.');
      }
      return json.decode(response.body) as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }
}

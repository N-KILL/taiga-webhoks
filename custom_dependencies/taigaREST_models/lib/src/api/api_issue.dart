import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:taiga_rest_models/src/api/api_auth.dart';
import 'package:taiga_rest_models/src/models/api_models/issue_model/issue.dart';

/// This class [ApiTaigaIssue] will manage all the methods to interact with an
/// `issue` using the `Taiga API`
class ApiTaigaIssue {
  /// This function [createIssue] will send a `POST` request into the `API` to
  /// create an `issue`. <br>
  /// This can manage all type of values from the `issue`, if you want to know
  /// more check the [TaigaIssueAPI] model. <br>
  /// <h4> Parameters: </h4>
  /// <ul><li><p>
  ///   [String] authToken: [authToken] Its the <strong>token</strong> given by 
  ///   the function [ApiAuth], make sure to use that function to generate it 
  ///   before use it.
  /// </p></li>
  /// <br>
  /// <li><p>
  ///  [String] apiUrl: [apiUrl] Its the url of the api, if you're using the
  ///   web version of <strong>Taiga</strong>, this should work: <br>
  ///   https://api.taiga.io/api/v1, <br>
  ///   otherwise if you use the App on local, will be a different one, you can 
  ///   try this: <br>
  ///   http://localhost:8000/api/v1 <br>
  ///   <br>
  ///   <h5> 
  ///   note: Do not put the last "/", because the function already have this 
  ///   </h5>
  /// </p></li>
  /// <br>
  /// <li>
  ///   [TaigaIssueAPI] issue: [issue] This value contains all the things you
  ///   will need to customize your issue, it only needs 3 values.
  /// <ul>
  /// <br>
  /// <li><p>
  ///   [TaigaIssueAPI.projectId] <strong>ID</strong> of the <strong>project</strong>
  /// </p></li>
  /// <br>
  /// <li><p>
  ///   [TaigaIssueAPI.title] <strong>Name</strong> of the future 
  ///   <strong>issue</strong>
  /// </p></li>
  /// <br>
  /// <li><p>
  ///   [TaigaIssueAPI.watchersId] Can't be null, because it brakes. So if you
  ///   don't want to use this value, just let an empty [List], like this: 
  ///   <strong> [ ] </strong>
  ///   </p></li>
  /// </ul>
  /// </li>
  /// <br><li><p>
  ///   [bool] debug: [debug] value, is used to print or not the response body,
  ///   if you're getting <strong> False </strong> and don't know why, put the 
  ///   debug option on: </strong> True </strong>
  /// </p></li>
  /// </ul>
  /// <h4> Returns: </h4>
  /// <p>
  /// This function will return a [bool], so <strong>True</strong> or 
  /// <strong>False</strong>, depending if its works, or not.
  /// </p>
  Future<bool> createIssue({
    required String authToken,
    required String apiUrl,
    required TaigaIssueAPI issue,
    bool debug = false,
  }) async {
    /// This is the body of the `POST` request
    final data = {
      'assigned_to': issue.assignedToId,
      'blocked_note': issue.blockedNote,
      'description': issue.description,
      'is_blocked': issue.isBlocked,
      'is_closed': issue.isClosed,
      'milestone': issue.sprintId,
      'priority': issue.priorityId,
      'project': issue.projectId,
      'severity': issue.severityId,
      'status': issue.statusId,
      'subject': issue.title,
      'tags': issue.tags,
      'type': issue.type,
      'watchers': issue.watchersId,
    };

    // Create the 'POST' request
    final response = await http.post(
      Uri.parse('$apiUrl/issues'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
      },
      body: jsonEncode(data),
    );

    // If the post request its 'OK' will return a status of '201'
    if (response.statusCode == 201) {
      // If its 'OK' return 'True'
      return true;
    } else {
      // If the debug option is set on 'True', will return the response body
      if (debug) {
          throw Exception(response.body);
      }
      // Otherwise return 'False'
      return false;
    }
  }
}

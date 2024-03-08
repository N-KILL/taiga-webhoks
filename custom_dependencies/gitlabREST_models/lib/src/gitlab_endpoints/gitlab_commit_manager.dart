import 'dart:convert';

import 'package:gitlab_rest_models/src/models/API/commit/commit_file.dart';
import 'package:http/http.dart' as http;

/// This [GitLabCommitManager] manage all the methods of the `GitLab API` to
/// interact with a commit
class GitLabCommitManager {
  /// This function [getGitLabCommitFiles] is for read a gitlab commit
  /// information , and return the list of files related to that commit. To use
  /// this, you will need, the url of the `API`, the `ID` of your project, an
  /// `accessToken`, and  the `commit SHA`. <br>
  /// If you want to automate this, its better create a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/commits.html#get-the-diff-of-a-commit <br><br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<List<CommitFileAPI>?> getGitLabCommitFiles({
    // This are for the API permission, and connection
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    // This are for the commit data
    required String commitSha,
  }) async {
    // This is the project url where we are going to send the request.
    final projectURL = Uri.parse(
      '$gitlabApiUrl/projects/$projectId/repository/commits/$commitSha/diff',
    );

    // Send the request, and store the response inside of a variable
    final response = await http.get(
      projectURL,
      headers: {'Private-Token': accessToken},
    );

    // If the response is good (Has status 200)
    if (response.statusCode == 200) {
      // Decode the response body
      final commitInfo = jsonDecode(response.body);

      // If the response is a type List<Map<String, dynamic>>
      if (commitInfo is List) {
        // Create a variable to storage the file information
        final fileData = <CommitFileAPI>[];

        // For each item on the commitInfo List
        for (final item in commitInfo) {
          // Convert the data into a 'CommitFileAPI'
          final commitFileData = CommitFileAPI.fromJson(jsonEncode(item));

          // Add to the fileData list,
          fileData.add(commitFileData);
        }

        // Return the list with the files related to the commit as [String]
        return fileData;
      }

      // If not, by default will return null
      return null;
    }

    // If not, by default will return null.
    return null;
  }
}

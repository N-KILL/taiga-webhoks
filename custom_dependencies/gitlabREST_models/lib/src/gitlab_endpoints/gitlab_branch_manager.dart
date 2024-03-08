import 'dart:convert';

import 'package:gitlab_rest_models/src/helpers/generate_branch_url.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

/// This class [GitLabBranchManager] include all the methods to manage a
/// `GitLab` branch.
class GitLabBranchManager {
  /// This function [createGitLabBranch] send a `POST` request into a `gitlab
  /// project` based on his `API URL`, the `Project ID` and the `access token`
  /// of the user who want to Create the `Branch`. <br>
  /// Also, you need a `branchName` to put into this new branch, and a
  /// `fromRefBranch`, which is the the `Branch name` or `commit SHA` to create
  /// branch from.<br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/branches.html#create-repository-branch<br><br>
  /// If you want to automate this, its better crete a `Project Token` with the
  /// correct permissions. <br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<bool> createGitLabBranch({
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    required String branchName,
    required String fromRefBranch,
  }) async {
    /// Logger service from (https://pub.dev/packages/logger)
    final logger = Logger();

    // This is the project url where we are going to send the request.
    final projectURL =
        Uri.parse('$gitlabApiUrl/projects/$projectId/repository/branches');

    final sendBody = {
      'branch': branchName,
      'ref': fromRefBranch,
    };

    // We send the 'POST' request to create a the branch in the project.
    final response = await http.post(
      projectURL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: json.encode(sendBody),
    );

    // If the branch is created will return a '201' status.
    // If the issue has an error while trying to create, it will be returned on
    // console.
    if (response.statusCode == 201) {
      logger.i('Branch created correctly, branch name: $branchName');
      return true;
    } else {
      logger.e(
        'Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}',
      );
      return false;
    }
  }

  /// This function [deleteGitLabBranches] send a `DELETE` request into a
  /// `gitlab project` based on his `API URL`, the `Project ID` and the `access
  /// token` of the user who want to Create the `Branch`. <br>
  /// You need a [branchName] to select what branch you want to delete if you
  /// want to delete all the merged branches, set the  [removeMergedBranches] on
  /// `True` (If you set it on `True`, the [branchName] value will be ignored)
  /// <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/branches.html#delete-repository-branch<br><br>
  /// If you want to automate this, its better crete a `Project Token` with the
  /// correct permissions. <br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<bool> deleteGitLabBranches({
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    bool removeMergedBranches = false,
    String? branchName,
  }) async {
    /// Logger service from (https://pub.dev/packages/logger)
    final logger = Logger();

    // This is the project url where we are going to send the request.
    final projectURL = Uri.parse(
      generateBranchUrl(
        gitlabApiUrl: gitlabApiUrl,
        projectId: projectId,
        removeMergedBranches: removeMergedBranches,
        branchName: branchName,
      ),
    );

    // We send the 'DELETE' request to create a the branch in the project.
    final response = await http.delete(
      projectURL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
    );

    // If the branch is deleted will return a '204' status.
    // If the issue has an error while trying to create, it will be returned on
    // console.
    if (response.statusCode == 204) {
      if (branchName != null) {
        logger.i('Branch deleted correctly, deleted branch: $branchName');
      } else {
        logger.i('Deleted all the merged branches');
      }
      return true;
    } else {
      logger.e(
        'Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}',
      );
      return false;
    }
  }
}

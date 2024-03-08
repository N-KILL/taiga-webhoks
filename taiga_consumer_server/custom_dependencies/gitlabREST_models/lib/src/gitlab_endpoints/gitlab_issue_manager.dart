import 'dart:convert';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';
import 'package:gitlab_rest_models/src/helpers/generate_issue_body.dart';
import 'package:gitlab_rest_models/src/helpers/slug_parse.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

///
class GitLabIssueManager {
  /// This function [readGitLabIssue] send a `GET` request into a `gitlab
  /// project` to delete an `issue`, based on his `API URL`, the `Project ID`
  /// and the `access token` given. Once we receive the issue data, we map into
  /// an [IssueAPIResponseModel] object <br>
  /// If you want to automate this, its better crete a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/issues.html#single-project-issue<br><br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<IssueAPIResponseModel?> readGitLabIssue({
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    required int issueIId,
  }) async {
    /// Logger service from (https://pub.dev/packages/logger)
    final logger = Logger();

    // This is the project url where we are going to send the request.
    final projectURL =
        Uri.parse('$gitlabApiUrl/projects/$projectId/issues/$issueIId');

    // We send the 'GET' request to read an existing issue of the project based
    // on his IID.
    final response = await http.get(
      projectURL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
    );

    // If the issue can be read will return a '200' status and it will be mapped
    // into an [IssueAPIResponseModel].
    // If the issue has an error while trying to create, it will be returned on
    // console.
    if (response.statusCode == 200) {
      logger.i('Issue found, creating IssueAPIResponseModel');
      final issueAPImodel = IssueAPIResponseModel.fromJson(response.body);
      return issueAPImodel;
    } else {
      logger.e(
          'Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}',);
      return null;
    }
  }

  /// This function [modifyGitLabIssue] send a `PUT` request into a `gitlab
  /// project` to modify an `issue`, based on his `API URL`, the `Project ID`
  /// and the `access token` given. If you hav premium on `gitlab` remind to set
  /// the bool premium on `True`, if you not, the vars `epicId`, and
  /// `epicInternalId` will be ignored<br>
  /// If you want to automate this, its better create a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/issues.html#edit-issue <br>
  /// Info about how to create a personal token: <br><br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<bool> modifyGitLabIssue({
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    required int issueIId,
    required IssueAPIRequestModel body,
    bool premium = false,
  }) async {
    /// Logger service from (https://pub.dev/packages/logger)
    final logger = Logger();

    // This is the project url where we are going to send the request.
    final projectURL =
        Uri.parse('$gitlabApiUrl/projects/$projectId/issues/$issueIId');

    // This is the body of the request
    final sendBody = generateBody(body: body, premium: premium);

    // We send the 'PUT' request to modify an existing issue in the project.
    final response = await http.put(
      projectURL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: json.encode(sendBody),
    );

    // If the issue is created will return a '200' status and it will.
    // If the issue has an error while trying to create, it will be returned on
    // console.
    if (response.statusCode == 200) {
      logger.i('Issue modified correctly');
      return true;
    } else {
      logger.e(
        'Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}',
      );
      return false;
    }
  }

  /// This function [deleteGitLabIssue] send a `DELETE` request into a `gitlab
  /// project` to delete an `issue`, based on his `API URL`, the `Project ID`
  /// and the `access token` given. <br>
  /// If you want to automate this, its better crete a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/issues.html#delete-an-issue<br>
  /// Info about how to create a personal token: <br><br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<bool> deleteGitLabIssue({
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    required int issueIId,
  }) async {
    /// Logger service from (https://pub.dev/packages/logger)
    final logger = Logger();

    // This is the project url where we are going to send the request.
    final projectURL =
        Uri.parse('$gitlabApiUrl/projects/$projectId/issues/$issueIId');

    // We send the 'DELETE' request to delete an existing issue into the project
    // based on his IID.
    final response = await http.delete(
      projectURL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
    );

    /// If the issue is deleted successfully will return a '204' status.
    /// If the issue has an error while trying to create, it will be returned on
    /// console.
    if (response.statusCode == 204) {
      logger.i('Issue deleted correctly');
      return true;
    } else {
      logger.e(
        'Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}',
      );
      return false;
    }
  }

  /// This function [createGitLabIssue] send a `POST` request into a `gitlab
  /// project` to create an `issue`, based on his `API URL`, the `Project ID`
  /// and the `access token` given. And will return the `IID` (Internal ID) of
  /// the issue, which can be used to read the issue data<br>
  /// At least you need to put an `issueTitle` on the [IssueAPIRequestModel].
  /// Otherwise, this won't work
  /// If you want to automate this, its better create a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/issues.html#new-issue <br><br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<IssueAPIResponseModel?> createGitLabIssue({
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    required IssueAPIRequestModel body,
  }) async {
    /// Logger service from (https://pub.dev/packages/logger)
    final logger = Logger();

    // This is the project url where we are going to send the request.
    final projectURL = Uri.parse('$gitlabApiUrl/projects/$projectId/issues');

    // This is the body of the request
    final sendBody = {
      'title': body.issueTitle,
      'description': body.description,
      'assignee_id': body.assignedToId,
      'assignee_ids': body.assignedToIds,
      'confidential': body.isConfidential,
      'created_at': body.createdAt,
      'discussion_to_resolve': body.discussionToResolve,
      'due_date': body.dueDate,
      'epic_id ': body.epicId,
      'epic_iid': body.epicInternalId,
      'id': body.issueId,
      'iid': body.issueInternalId,
      'issue_type': body.issueType?.name,
      'labels': body.issueLabels,
      'merge_request_to_resolve_discussions_of': body.mergeRequestInternalId,
      'milestone_id': body.milestoneId,
      'weight': body.weight,
    };

    // We send the 'POST' request to create a new issue in the project.
    final response = await http.post(
      projectURL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: json.encode(sendBody),
    );

    // Create a map from the response
    final responseMap = jsonDecode(response.body) as Map<String, dynamic>;

    // If the issue is created will return a '201' status.
    // If the issue has an error while trying to create, it will be returned on
    // console.
    if (response.statusCode == 201) {
      // read the iid of the new issue in this var
      final responseIdd = responseMap['iid'] as int;

      logger.i('Issue created correctly, issue iid: $responseIdd');
      return IssueAPIResponseModel.fromJson(response.body);
    } else {
      logger.e(
          'Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}',);
      return null;
    }
  }

  /// This function [createGitLabBranchFromIssue] send a `POST` request into a
  /// `gitlab project` from the function 
  /// [GitLabBranchManager.createGitLabBranch] this need the `apiUrl` the 
  /// `Project ID` and an `access token` for the user who want to Create the 
  /// `Branch`. <br>
  /// Also, you need a `fromRefBranch`, which is the the `Branch name` or
  /// `commit SHA` to create branch from. The name will be created based on the
  /// issue information <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/branches.html#create-repository-branch
  /// If you want to automate this, its better crete a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<bool> createGitLabBranchFromIssue({
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    required IssueAPIResponseModel issue,
    required String fromRefBranch,
  }) async {
    // Create an `slug` from the name of the issue with the `slugParse` function
    final slugParseName = slugParse(issue.name);

    // Create the `Branch name` with the format `gitLab` usually do.
    // Example: 'IID' + '-' + 'Name of the Issue on slug format'
    final branchName = '${issue.internalId}-$slugParseName';

    // We call the function 'createGitLabBranch' to create the branch, and 
    // return his value
    return GitLabBranchManager().createGitLabBranch(
      gitlabApiUrl: gitlabApiUrl,
      projectId: projectId,
      accessToken: accessToken,
      branchName: branchName,
      fromRefBranch: fromRefBranch,
    );
  }

  /// Logger service from (https://pub.dev/packages/logger)
  final logger = Logger();

  /// This function [createGitLabBranchAndMRFromIssue] send a request into a
  /// `gitlab project` API from the function
  /// [GitLabBranchManager.createGitLabBranch] (Use the
  /// `createBranchFromRefBranch` value to decide from which branch you want
  /// to create the new one, and the `issue` is used only for grab the name)
  /// and then create a `merge request` for the `issue` from the function.
  /// (Use the `mergeReqTargetBranch` to select to which branch you want
  /// to create te `Merge Request`)
  /// [GitLabMergeRequestManager().createGitLabMergeRequest] <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/branches.html#create-repository-branch<br>
  /// https://docs.gitlab.com/ee/api/merge_requests.html#create-mr<br><br>
  /// If you want to automate this, its better crete a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html
  Future<bool> createGitLabBranchAndMRFromIssue({
    // This are for the API permission, and connection
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    // This are for the creation of the branch
    required IssueAPIResponseModel issue,
    required String createBranchFromRefBranch,
    // This is for the creation of the merge request
    required String mergeReqTargetBranch,
    bool allowCollaboration = false,
    bool allowMaintainerToPush = false,
    int? assigneeId,
    int? approvalsBeforeMerge,
    List<int>? assigneeIds,
    String? description,
    int? milestoneId,
    bool removeSourceBranch = false,
    List<int>? reviewerIds,
    bool squash = false,
    int? targetProjectId,
    String? title,
  }) async {
    // Create an `slug` from the name of the issue with the `slugParse` function
    final slugParseName = slugParse(issue.name);

    // Create the `Branch name` with the format `gitLab` usually do.
    // Example: 'IID' + '-' + 'Name of the Issue on slug format'
    final branchName = '${issue.internalId}-$slugParseName';

    // We call the function 'createGitLabBranch' to create the branch, and 
    // storage his value in the 'isBranchCreated' var.
    final isBranchCreated = await GitLabBranchManager().createGitLabBranch(
      gitlabApiUrl: gitlabApiUrl,
      projectId: projectId,
      accessToken: accessToken,
      branchName: branchName,
      fromRefBranch: createBranchFromRefBranch,
    );

    // We create a 'MergeReqRequestAPIModel' instance for the
    // 'createGitLabMergeRequest' function, with the source, and the target 
    // branch
    final mrData = MergeReqRequestAPIModel(
      sourceBranch: branchName,
      targetBranch: mergeReqTargetBranch,
      labels: issue.labels,
      allowCollaboration: allowCollaboration,
      allowMaintainerToPush: allowMaintainerToPush,
      approvalsBeforeMerge: approvalsBeforeMerge,
      assigneeId: assigneeId,
      assigneeIds: assigneeIds,
      description: description,
      milestoneId: milestoneId,
      removeSourceBranch: removeSourceBranch,
      reviewerIds: reviewerIds,
      squash: squash,
      targetProjectId: targetProjectId,
      title: title,
    );

    // if 'isBranchCreated' is true, we try to create the Merge Request, with 
    // the function 'createGitLabMergeRequest', and return his value which is a 
    // bool
    if (isBranchCreated) {
      logger.i('Attempting to create the merge request');
      return GitLabMergeRequestManager().createGitLabMergeRequest(
        gitlabApiUrl: gitlabApiUrl,
        projectId: projectId,
        accessToken: accessToken,
        mrData: mrData,
      );
    } else {
      return false;
    }
  }
}

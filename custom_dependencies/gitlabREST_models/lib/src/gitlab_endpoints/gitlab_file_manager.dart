import 'dart:convert';

import 'package:http/http.dart' as http;

// TODO(Nacho): Create doc

/// This [GitlabFileManager]
class GitlabFileManager {
  /// This function [modifyFile] is used to modify a `GitLab` file. This is 
  /// recommended to use it with the [readFile] function.
  /// <h4> Exclusive args: </h4> 
  /// <ul>
  /// <li>
  ///   [String] filePath: The [filePath] is a required parameter that 
  ///   represents the path where the file is located on the project.
  /// </li>
  /// <li>
  ///   [String] branch: The [branch] parameter is a required string that
  ///   represents the name of the branch of GitLab where is this file.
  /// </li>  
  /// <li>
  ///   [String] branch: The [file] parameter is a required string that
  ///   represents the file information
  /// </li>
  /// <li>
  ///   [String] branch: The [commitMessage] parameter is a required string that
  ///   represents the message that will be show on the `commit` where this 
  ///   modification have been done
  /// </li>
  /// </ul>
  /// <h4> Returns: </h4> 
  ///   This returns a [Future]<[String]>.
  /// <hr><br>
  /// <h4> Common args: </h4> 
  /// To use this, you will need, the url of the `API` on the [gitlabApiUrl] 
  /// parameter, the `ID`  of your project on [projectId] and the [accessToken].
  /// <br>
  /// If you want to automate this, its better create a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/commits.html#get-the-diff-of-a-commit <br><br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<bool> modifyFile({
    // This are for the API permission, and connection
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    // Required to modify the file
    required String filePath,
    required String branch,
    required String file,
    required String commitMessage,
  }) async {
    //? This is necessary because the paths has a different format
    // Replace all the '/' with the gitlab url equivalent: '%2F'
    final filePathFixed = filePath.replaceAll('/', '%2F');

    // Create the url where we re going to send the 'PUT' request
    final url = Uri.parse(
      '$gitlabApiUrl/projects/$projectId/repository/files/$filePathFixed',
    );

    // This is the body of the request, have info about the branch where the
    // file is located, the file content, and the commit message
    final requestBody = {
      'branch': branch,
      'commit_message': commitMessage,
      'content': file,
    };

    // Create the 'PUT' request with the previous URL and the Body
    final response = await http.put(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Private-Token': accessToken,
      },
      body: json.encode(requestBody),
    );

    // If the return is 'OK' (have status code 200), means the file was modified
    // correctly
    if (response.statusCode == 200) {
      // So we return 'true'
      return true;
    } else {
      // Otherwise we return 'false'
      return false;
    }
  }

  /// This function [readFile] is for read a gitlab file, can read all the
  /// info of the file as an object if the [raw] mode is off, or only read the 
  /// file as a [String] if the [raw] mode is on <br>
  /// <h4> Exclusive args: </h4> 
  /// <ul>
  /// <li>
  ///   [String] filePath: The [filePath] is a required parameter that 
  ///   represents the path where the file is located on the project.
  /// </li>
  /// <li>
  ///   [String] branch: The [branch] parameter is a required string that
  ///   represents the name of the branch of GitLab where is this file.
  /// </li>
  /// </ul>
  /// <h4> Returns: </h4> 
  ///   This returns a [Future]<[String]>.
  /// <hr><br>
  /// <h4> Common args: </h4> 
  /// To use this, you will need, the url of the `API` on the [gitlabApiUrl] 
  /// parameter, the `ID`  of your project on [projectId] and the [accessToken].
  /// <br>
  /// If you want to automate this, its better create a `Project Token` with the
  /// correct permissions. <br> <br>
  /// Info about how this works: <br>
  /// https://docs.gitlab.com/ee/api/commits.html#get-the-diff-of-a-commit<br><br>
  /// Info about how to create a personal token: <br>
  /// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br><br>
  /// Info about how to create a project token: <br>
  /// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
  Future<String?> readFile({
    // This are for the API permission, and connection
    required String gitlabApiUrl,
    required String projectId,
    required String accessToken,
    // This for the file info
    required String filePath,
    required String branch,
    // This if to get the file as string
    bool raw = false,
  }) async {
    //? This is necessary because the paths has a different format
    // Replace all the '/' with the gitlab url equivalent: '%2F'
    final filePathFixed = filePath.replaceAll('/', '%2F');

    // Create a variable with the file url, this will be used on the 'GET'
    // request
    var fileUrl = Uri.parse(
      '$gitlabApiUrl/projects/$projectId/repository/files/$filePathFixed?ref=$branch',
    );

    // Add the raw parameter if the bool is 'True'
    if (raw) {
      fileUrl = Uri.parse(
        '$gitlabApiUrl/projects/$projectId/repository/files/$filePathFixed/raw?ref=$branch',
      );
    }

    // Do a 'GET' request into the file url,
    final fileResponse = await http.get(
      fileUrl,
      headers: {
        'Private-Token': accessToken,
      },
    );

    // If the return is 'OK' (have status code 200), means the file was located
    // and will have the file data on the response body
    if (fileResponse.statusCode == 200) {
      // So we re going to return the body
      return fileResponse.body;
    } else {
      // Otherwise we return 'null'
      return null;
    }
  }
}

// void main() async {
//   const gitlabApiUrl = 'https://gitlab.com/api/v4';
//   const projectId = '51929660';
//   const accessToken = 'glpat-s2axRR49k4dm5j6GTRJZ';
//   const filePath = 'my_cli/bin/my_cli.dart';

//   final fileData = await GitlabFileManager().readFile(
//     accessToken: accessToken,
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     filePath: filePath,
//     branch: 'main',
//     raw: true,
//   );

//   print(fileData);

//   final updateFile = await GitlabFileManager().modifyFile(
//     accessToken: accessToken,
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     filePath: filePath,
//     branch: 'main',
//     file: fileData!,
//     commitMessage: 'auto update',
//   );

//   print(updateFile);
// }

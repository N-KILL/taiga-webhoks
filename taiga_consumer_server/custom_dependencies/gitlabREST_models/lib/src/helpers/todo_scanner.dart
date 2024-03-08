import 'package:gitlab_rest_models/src/gitlab_endpoints/gitlab_commit_manager.dart';
import 'package:gitlab_rest_models/src/gitlab_endpoints/gitlab_file_manager.dart';
import 'package:gitlab_rest_models/src/helpers/custom_error.dart';
import 'package:gitlab_rest_models/src/helpers/todo_formatter.dart';
import 'package:gitlab_rest_models/src/models/to_do/to_do.dart';

/// This function [todoScanner] scan a `GitLab commit` files, and read the
/// 'TODOs' of the file and return a [List] of [ToDo] objects. Also if you have
/// turned on the [deleteMode], this will create a new commit modifying the
/// files deleting those'TODOs' <br>
/// <h5>
/// Note: This create a commit per 'TODO' found on the commit files
/// </h5>
/// <h4> Exclusive args: </h4>
/// <ul>
/// <li>
///   [String] commitSha: The [commitSha] is a required parameter that
///   represents the commit identifier.
/// </li>
/// <li>
///   [bool] deleteMode: The [deleteMode] is a non required parameter that
///   is used to enable the delete mode, which delete the lines of 'TODO'
///   comment on a file.
///   <ul>
///     <li>
///       [String] branch: The [branch] is a required parameter when
///       [deleteMode] is True
///     </li>
///     <li>
///       [String] commitMessage: The [commitMessage] is a required parameter
///       when [deleteMode] is True
///     </li>
///   </ul>
/// </li>
/// </ul>
/// <h4> Returns: </h4>
///   This returns a [Future]<[List]<[ToDo]>?>
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
Future<List<ToDo>?> todoScanner({
  // This are for the API permission, and connection
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  // This are used to read the info on the commit
  required String commitSha,
  // This are used to delete the commit commentary
  bool deleteMode = false,
  String? branch,
  String? commitMessage,
}) async {
  // Validation to use the delete mode. If deletion mode if 'True' and branch or
  // commitMessage is null throw an error message
  if (deleteMode == true && (branch == null || commitMessage == null)) {
    throw CustomError(
      'Branch & commitMessage are required when delete mode is activated',
    );
  }

  // Call the function [getGitLabCommitFiles], which return a list of files
  // related to the commit
  final data = await GitLabCommitManager().getGitLabCommitFiles(
    accessToken: accessToken,
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    commitSha: commitSha,
  );

  // This is the list of 'ToDo' we return at the end of the function
  final todoList = <ToDo>[];

  // This var is used when you modify a file, this value will be added
  // to the commit message, so you cant see a difference in the message
  // if there is a lot of 'TODOs'. So just its an enchanter
  var todoIndexForCommitMsg = 0;

  // With the files we're going to re read the files, looking for a 'TODO'
  if (data != null) {
    // For each file inside of data
    for (final file in data) {
      // If the file contains a 'TODO' commentary on it
      if (file.diff.contains('/ TODO')) {
        // Split the [String] in each line break, and filter the lines, this
        // will have, only existing lines on the file, ignoring deletions, and
        // the alert of 'No newline at end of file'
        final lines = file.diff
            .split('\n')
            .where(
              (line) =>
                  !line.startsWith('-') &&
                  //! This is not an error, the line has to be read this way
                  // ignore: unnecessary_string_escapes
                  !line.contains('\ No newline at end of file'),
            )
            .toList();

        // Aux to store all the index, of the 'TODO' lines
        final todoIndexes = <int>[];

        // Aux to store all the index, of the non 'TODO' commentary lines
        final commentaryIndexes = <int>[];

        // Find all the lines with commentary on it
        final commentaryLine =
            lines.where((lines) => lines.contains('//')).toList();

        // For each line with a 'comment' on it
        for (final line in commentaryLine) {
          // We are going to find his index, based on the content of the line
          // And if the line contains a 'TODO'
          final todoLineIndex = lines.indexWhere(
            (element) => element.contains(line) && element.contains('/ TODO'),
          );

          // We are going to find his index, based on the content of the line
          // And if the line not contains a 'TODO'
          final commentLineIndex = lines.indexWhere(
            (element) => element.contains(line) && !element.contains('/ TODO'),
          );

          //? indexWhere can't return false or null, in case, nothing satisfy
          //? the conditions, will return -1, so we verify if the value is
          //? different to -1

          // In case the value is valid, we re going to add the value into the
          // aux list
          if (todoLineIndex != -1) {
            todoIndexes.add(todoLineIndex);
          }

          // In case the value is valid, we re going to add the value into the
          // aux list
          if (commentLineIndex != -1) {
            commentaryIndexes.add(commentLineIndex);
          }
        }

        // For each 'TODO' we found, we re going to read his description.
        // Considering that the description will be the comment lines followed
        // by the 'TODO' comment
        for (final todoLine in todoIndexes) {
          //? This helper is used to remind the difference between 'TODO'
          //? index and comment index, because comment can be multiple lines and
          //?'TODO' comment is only one. So, on each line we are going to add +1
          //? in the index, but it will be considered part of the description
          // This is an aux used to compare the lines.
          var aux = 1;

          // Aux to store the description
          var description = '';

          // Aux to store the description
          final descriptionLines = <String>[];

          // For each comment which is not a 'TODO comment'
          for (final comment in commentaryIndexes) {
            // If the 'commentaryIndex' is following to the 'TODO' comment index
            // , thats mean is the description of it.
            if (comment == (todoLine + aux)) {
              // Add one into the AUX to keep reading inside the for
              aux = aux + 1;

              // This is creating the description adding each line in one var
              description = description + lines[comment];

              //? This is similar, to the description which is just over here,
              //? but this his handled at list, and used at the delete function
              // This is creating a list with all the description lines
              descriptionLines.add(lines[comment]);
            }
          }

          // This part of the code is one who delete the 'TODO' comment from the
          // file.
          if (deleteMode == true && branch != null && commitMessage != null) {
            // Add one into the todoIndexForCommitMsg var, per execution
            todoIndexForCommitMsg = todoIndexForCommitMsg + 1;

            // Get the file where the 'TODO' is located on the gitlab repository
            final todoFile = await GitlabFileManager().readFile(
              accessToken: accessToken,
              branch: branch,
              filePath: file.newPath,
              gitlabApiUrl: gitlabApiUrl,
              projectId: projectId,
              raw: true,
            );

            // If can get the file
            if (todoFile != null) {
              // Create a list with all the lines of the code
              final todoFileList = todoFile.split('\n').toList();

              // For each line in the descriptionLines
              for (final line in descriptionLines) {
                // Replace the '+' symbol and remove the line which have the
                // description from the file
                todoFileList.remove(line.replaceAll('+', ''));
              }

              // This remove the item which have the 'TODO' comment
              todoFileList.remove(
                lines[todoLine].replaceAll('+', ''),
              );

              // Create a var with the data, we join al the items of the list,
              // in a single string, using the line break as aux
              final todoFileString = todoFileList.join('\n');

              // This will remove the 'TODO' comment, and his description
              // from the file
              final modifyTheFile = await GitlabFileManager().modifyFile(
                accessToken: accessToken,
                branch: branch,
                filePath: file.newPath,
                gitlabApiUrl: gitlabApiUrl,
                projectId: projectId,
                commitMessage: '$commitMessage $todoIndexForCommitMsg',
                file: todoFileString,
              );

              // If cant modify the file
              if (modifyTheFile == false) {
                throw CustomError(
                  'An error happened when trying to modify the file',
                );
              }
            } else {
              throw CustomError(
                'An error happened when trying to read the file',
              );
            }
          }

          // Create a [ToDo] instance with all the info this function obtain
          // from the commit
          final myToDo = ToDo(
            name: todoFormatter(name: lines[todoLine]),
            description: todoFormatter(description: description),
            assignedUserName: todoFormatter(username: lines[todoLine]),
            priority: int.parse(todoFormatter(priority: lines[todoLine])),
          );

          // Add the [ToDo] object, into the list that the function returns
          todoList.add(myToDo);
        }
      }
    }

    // Return the list of the [ToDo] object
    return todoList;
  }

  // If data is null, return null
  return null;
}

import 'package:gitlab_rest_models/gitlab_rest_models.dart';

/// This function [todoFormatter] has been created to format a gitlab file line,
/// into a single long [String]. Working in collaboration with the 
/// [todoScanner] function. If you meet with this for an error, this is not 
/// related with the 'toDo' model or any other stuff<br>
/// In case of formatting description, this function will be removing the next
/// stuff: <br>
/// - The commentary '//'<br>
/// - The double spaces '  '
/// - The plus symbol '+'
/// <br>
/// In case of formatting name, this function will be removing the next stuff:
/// All the stuff before the ':' of the 'TODO' comment.
String todoFormatter({
  String? description,
  String? name,
  String? username,
  String? priority,
}) {
  // In case you are trying to format the description
  if (description != null) {
    // This is a regexp which remove:
    // - The commentary '//'
    // - The double spaces '  '
    // - The plus symbol '+'
    final cleanedText = description
        .replaceAll(RegExp(r'\+|\/\/'), '')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();

    // Return that cleanedText
    return cleanedText;
  }

  // In case you are trying to format the name
  if (name != null) {
    //? PRIORITY INDICATORS ARE "!" SYMBOLS ON THE NAME BEFORE THE DATA
    // If the name have priority indicators, this will remove it
    name = name.replaceAll('!', '');

    // This find the ':'
    final index = name.indexOf(':');

    // If can find the ':'
    if (index != -1) {
      // Remove all the stuff before the ':'
      final cleanedText = name.substring(index + 1).trimLeft();

      // Return that cleanedText
      return cleanedText;
    }
  }

  // In case you are trying to format the username
  if (username != null) {
    // This find the two indexes of the "()"
    final indexLeft = username.indexOf('(');
    final indexRight = username.indexOf(')');

    // If can find the "()"
    if (indexLeft != -1 && indexRight != -1) {
      // Get the elements inside of them
      final cleanedText = username.substring(indexLeft + 1, indexRight);

      // Return that cleanedText
      return cleanedText;
    }
  }

  // In case you are trying to format the priority
  if (priority != null) {
    // This find the index of the "!"
    final index = priority.indexOf('!');

    // If can find the '!'
    if (index != -1) {
      //? This value is used to get the priority, 1 = low, 2 = medium, 3 = high
      // This get the amount of "!" symbols on the text.
      final priorityNum = priority.split('!').length - 1;

      if (priorityNum != -1) {
        return priorityNum.toString();
      }
    }

    // If cant find any "!", will be low priority
    return '1';
  }

  // If you call the function without giving a description or name, will return
  // a void string: ''
  return '';
}

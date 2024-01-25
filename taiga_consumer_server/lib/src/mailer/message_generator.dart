import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart';

/// This class [MessageGenerator] Is used to generate the message of the emails
/// having functions which generate messages based on different parameters.
class MessageGenerator {
  /// [taigaCreateUpdateMessageNotification] Create an html format message to
  /// send inside of an email with the details of the updates received on the
  /// Taiga webhook
  String? taigaCreateUpdateMessageNotification({
    required List<TaigaJobUpdates> jobUpdateList,
  }) {
    // Create a var to store the message, will be empty at first
    String message = '';

    // For each JobUpdate inside of the list
    for (final jobUpdate in jobUpdateList) {
      //? The details was stored, as a list of item, separated by a line break
      // We re going to set a list with the details
      final detailList = jobUpdate.details.split('\n');

      jobUpdate.job?.title;
    }

    // If the message is empty, return null. Otherwise return the message
    if (message == '') {
      return null;
    } else {
      return message;
    }
  }
}

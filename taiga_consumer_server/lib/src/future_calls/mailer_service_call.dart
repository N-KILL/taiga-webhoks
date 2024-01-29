import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/endpoints/project_endpoint.dart';
import 'package:taiga_consumer_server/src/mailer/sender_cron.dart';

// TODO(Nacho): Remover valores hardcodeados
// De momento el mail, y el id del proyecto estan hardcodeados, a futuro esto
// deberia reemplazarse

/// This future call is for sending notification about updates of a project
class SendUpdatesFutureCall extends FutureCall {
  @override
  Future<void> invoke(Session session, SerializableEntity? object) async {
    // Aux to store the date at the start of this future call
    final date = DateTime.now();

    // Log indicating the task is running
    session.log('Running Mailer task at: ${date.hour} ${date.minute}');

    // Get the project details
    final projectDetails =
        await TaigaProjectEndpoint().projectReadById(session, id: 1);

    // If can get the project start the execution of the cron
    if (projectDetails != null) {
      // This will send an email everyday at the 8AM
      mailUpdateNotificationCron(
        session: session,
        project: projectDetails,
        hours: [8],
        email: 'club_dog2@hotmail.com',
      );
    }
  }
}

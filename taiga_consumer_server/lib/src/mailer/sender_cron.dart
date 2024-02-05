import 'package:cron/cron.dart';
import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_endpoints.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';
import 'package:taiga_consumer_server/src/mailer/mailer.dart';
import 'package:taiga_consumer_server/src/mailer/message_generator.dart';

/// This [mailUpdateNotificationCron] function is a cron task who sends an email
/// at the time passed on the parameters.
///
/// The `email` will have all the details of the job updates on the last 24hrs
/// in case of be Monday will be 72hrs
Future<void> mailUpdateNotificationCron({
  required Session session,
  required TaigaProject project,
  required String email,
  List<int>? seconds,
  List<int>? minutes,
  List<int>? hours,
  List<int>? days,
  List<int>? months,
  List<int>? weekdays,
}) async {
  session.log(
    'Cron task called',
  );

  final cron = Cron();

  // Throw an error if the time parameters are null
  if (seconds == null &&
      minutes == null &&
      hours == null &&
      days == null &&
      months == null &&
      weekdays == null) {
    throw 'At least need one value of time to execute the cron task';
  }

  // Create a cron task based on the time passed on the parameters
  cron.schedule(
    Schedule.parse(
      Schedule(
        seconds: seconds,
        minutes: minutes,
        hours: hours,
        days: days,
        months: months,
        weekdays: weekdays,
      ).toCronString(
        hasSecond: seconds != null ? true : false,
      ),
    ),
    () async {
      session.log(
        'Cron task running',
      );

      // Send the last day information into
      // This var store the amount of seconds have in one day
      int secondsInDay = 84600;

      // This var store the date of today, we use a unique call per function
      final todayDate = DateTime.now();

      // If the day is 5, thats mean monday. We need to read de values between
      // monday and friday. So we multiply x 3
      if (todayDate.weekday == 1) {
        secondsInDay *= 3;
      }

      //? Usually epoch is used on milliseconds, so we divide into 1000 to get
      //? the seconds format, i'm doing this, because serverpod database only
      //? accept int values PGSQL integer, with a max of 4 bytes or 2,147,483,647
      //?. Epoch on  milliseconds is bigger than that, but in seconds is not,
      //?so doing this, can be stored and used on serverpod)

      // Get the today day on seconds and epoch format
      final timeEpochOnSeconds = todayDate.millisecondsSinceEpoch ~/ 1000;

      // This var store all the update information filtered
      final lastDayUpdates =
          await TaigaJobEndpoint().taigaJobUpdatesReadFilteringByEpoch(
        session,
        min: (timeEpochOnSeconds - secondsInDay),
        max: timeEpochOnSeconds,
      );

      // If lastDayUpdates have content
      if (lastDayUpdates != null) {
        // Generate the message to send inside of the Email
        final message = MessageGenerator().taigaCreateUpdateMessageNotification(
          jobUpdateList: lastDayUpdates,
          project: project,
        );

        // If the message have content
        if (message != null) {
          // Send an email to the email selected on the parameters
          final mailStatus = await sendMail(
            email: email,
            message: message,
          );

          // Create a session.log with the return of the sendMail function
          session.log(
            'Mail status: $mailStatus (True is sended, False is error)',
          );
        }
      }
    },
  );
}

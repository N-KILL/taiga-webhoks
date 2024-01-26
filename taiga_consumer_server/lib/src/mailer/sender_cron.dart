import 'package:cron/cron.dart';
import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_updates_endpoint.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';
import 'package:taiga_consumer_server/src/mailer/message_generator.dart';

Future<void> senderCron({
  required Session session,
  List<int>? seconds,
  List<int>? minutes,
  List<int>? hours,
  List<int>? days,
  List<int>? months,
  List<int>? weekdays,
}) async {
  final cron = Cron();

  cron.schedule(
      Schedule.parse(Schedule(
        seconds: seconds,
        minutes: minutes,
        hours: hours,
        days: days,
        months: months,
        weekdays: weekdays,
      ).toCronString(
        hasSecond: seconds != null ? true : false,
      )), () async {
    // CRON TASK

    // This var store the amount of seconds have in one day
    int valueDayOnSeconds = 84600;

    // This var store the date of today, we use a unique call per function
    final todayDate = DateTime.now();

    // If the day is 5, thats mean monday. We need to read de values between
    // monday and friday. So we multiply x 3
    if (todayDate.weekday == 1) {
      valueDayOnSeconds = valueDayOnSeconds * 3;
    }

    //? Usually epoch is used on milliseconds, so we divide into 1000 to get
    //? the seconds format, i'm doing this, because serverpod database only
    //? accept int values PGSQL integrer, with a max of 4 bytes or 2,147,483,647
    //?. Epoch on  miliseconds is bigger than that, but in seconds is not,
    //?so doing this, can be stored and used on serverpod)

    // Get the today day on seconds and epoch format
    final timeEpochOnSeconds = todayDate.millisecondsSinceEpoch ~/ 1000;

    // This var store all the update information filtered
    final lastDayUpdates = await TaigaJobUpdateEndpoint().readFilteringByEpoch(
        session,
        min: (timeEpochOnSeconds - 84600),
        max: timeEpochOnSeconds);

    // If lastDayUpdates have content
    if (lastDayUpdates != null) {
      // Generate the message to send inside of the Email
      final message = MessageGenerator().taigaCreateUpdateMessageNotification(
          jobUpdateList: lastDayUpdates,
          project: TaigaProject(title: 'asd', taigaId: 123));
      if (message != null) {}
    }
  });
}

import 'package:cron/cron.dart';

Future<void> senderCron({
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
      )), () {
    // CRON TASK
    final timeEpoch = DateTime.now().millisecondsSinceEpoch;
  });
}

void main() {
  senderCron(minutes: [1, 5]);
}

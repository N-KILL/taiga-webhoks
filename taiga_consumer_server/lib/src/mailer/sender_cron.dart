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

  final tuki = Schedule(
    seconds: seconds,
    minutes: minutes,
    hours: hours,
    days: days,
    months: months,
    weekdays: weekdays,
  ).toCronString(
    hasSecond: seconds != null ? true : false,
  );

  print(tuki);

  cron.schedule(Schedule.parse(tuki), () {
    // Coloca aquí el código que deseas ejecutar en cada intervalo del cron.
    print("Ejecutando tarea...");
  });
}

void main() {
  senderCron(minutes: [1, 5]);
}

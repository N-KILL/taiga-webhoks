/// This function [dateFormatter] is used to remove the format the dateTime into
/// Year, Month, Day only
///
/// Leaving for example a DateTime.now(), at this format 2024-01-31
String dateFormatter({required DateTime date}) {
  final dateFormatted = DateTime(date.year, date.month, date.day)
      .toString()
      .replaceAll("00:00:00.000", "");
  return dateFormatted;
}

void main() {
  final date = dateFormatter(date: DateTime.now());
  print(date);
}

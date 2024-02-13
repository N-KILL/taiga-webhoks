/// This [dateDifferenceCounter] return a [int] value showing the difference
/// on days between one date and the moment that you call this function
String dateDifferenceCounter({
  required DateTime baseDate,
}) {
  // Turn the baseDate into UTC to prevent errors
  final startDate = baseDate.toUtc();

  // The end date will be generated at the moment you call this function
  final endDate = DateTime.now().toUtc();

  // Calculate the difference on days
  final differenceBetweenDates = endDate.difference(startDate).inDays;

  // Return that value
  return differenceBetweenDates.abs().toString();
}

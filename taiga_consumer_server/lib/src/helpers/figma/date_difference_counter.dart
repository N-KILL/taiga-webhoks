/// This [dateDifferenceCounter] return a [int] value showing the difference
/// on days between one date and the moment that you call this function
String dateDifferenceCounter({
  required DateTime baseDate,
}) {
  // Turn the baseDate into UTC to prevent errors
  final startDate = baseDate.toUtc();

  // The end date will be generated at the moment you call this function
  final endDate = DateTime.now().toUtc();

  // Calculate the difference on hours / 24. 
  // This wil give us a float number, if we put inDays, if is less than 1 day
  // will return a 0, an we don't want that 
  final differenceBetweenDates = endDate.difference(startDate).inHours / 24;

  // Return that value
  return differenceBetweenDates.ceil().toString();
}
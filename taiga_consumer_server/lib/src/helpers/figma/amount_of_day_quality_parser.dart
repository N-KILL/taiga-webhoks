/// This [AmountOfDayQualityParser] function is used to modify the quality
/// of an status card details> amount of days
String AmountOfDayQualityParser({
  // This are the values of the quality
  required String amountOfDayQuality,

  // This will be the new left side
  int? newLeftValue = null,

  // This will be the new right side
  int? newRightValue = null,
}) {
  // Divide the value into a list of them.
  // Always will be 3 values ['num','+','num']
  List<String> characters = amountOfDayQuality.split('');

  if (newLeftValue != null) {
    // Replace the first character
    characters[0] = '$newLeftValue';
  }
  if (newRightValue != null) {
    // Replace the first character
    characters[2] = '$newRightValue';
  }

  // Create the chain again
  String newAmountDayQuality = characters.join('');

  // Return this value
  return (newAmountDayQuality);
}

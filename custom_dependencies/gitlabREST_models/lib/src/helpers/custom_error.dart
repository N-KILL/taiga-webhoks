/// This [CustomError] is for trowing custom error messages on the code. Extends
/// from the dart [Error] class.
class CustomError extends Error {
  /// This is the constructor of the class, who initialize the parameter of the
  /// message
  CustomError(this.message);

  /// This is a value who storage the error message
  final String message;

  /// Override the toString method to customize the way it prints
  @override
  String toString() {
    return 'Error: $message';
  }
}

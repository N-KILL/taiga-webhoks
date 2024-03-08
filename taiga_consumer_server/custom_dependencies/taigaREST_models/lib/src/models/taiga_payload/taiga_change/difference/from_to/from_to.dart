import 'package:dart_mappable/dart_mappable.dart';

part 'from_to.mapper.dart';

/// Anytime you made a change mostly came as `From>To` format, this class is 
/// used to storage this changes into 2 variables, the old value, and the new 
/// one
@MappableClass(caseStyle: CaseStyle.snakeCase)
class FromTo with FromToMappable {
  /// Constructor of the FromTo class
  FromTo({
    required this.oldValue,
    required this.newValue,
  });

  /// `oldValue:` Saves the previous value before a change was committed. Its
  /// [dynamic] so it can storage any type of value 
  @MappableField(key: 'from')
  dynamic oldValue;

  /// `newValue:` Saves the new value after a change was committed. Its 
  /// [dynamic] so it can storage any type of value 
  @MappableField(key: 'to')
  dynamic newValue;

  /// FromJson method, convert a json type object into this FromTo object
  static const fromJson = FromToMapper.fromJson;
}

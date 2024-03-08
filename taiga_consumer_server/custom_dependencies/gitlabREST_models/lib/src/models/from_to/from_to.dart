import 'package:dart_mappable/dart_mappable.dart';

part 'from_to.mapper.dart';
/// Anytime you made a change mostly came as previous>current format, this class
/// is used to storage this changes into 2 variables, the old value, and the new
/// one
@MappableClass(caseStyle: CaseStyle.snakeCase)
class FromTo with FromToMappable {
  
  /// Constructor of the FromTo class
  FromTo({
    required this.oldValue,
    required this.newValue,
  });

  /// Old Value save the value before change was committed 
  @MappableField(key: 'previous')
  dynamic oldValue;

  /// New Values save the value after change was committed 
  @MappableField(key: 'current')
  dynamic newValue;

  /// FromJson method, convert a json type object into this FromTo object
  static const fromJson = FromToMapper.fromJson;
}

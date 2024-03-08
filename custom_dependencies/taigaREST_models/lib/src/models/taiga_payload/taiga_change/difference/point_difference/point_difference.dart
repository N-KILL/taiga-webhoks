import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/from_to/from_to.dart';

part 'point_difference.mapper.dart';

/// This class store all the changes made into the points of a 'userStory' 
/// jobType 
@MappableClass(caseStyle: CaseStyle.snakeCase)
class PointDifference with PointDifferenceMappable {
  /// Constructor of the PointDiff class
  PointDifference({
    required this.backPoints,
    required this.frontPoints,
    required this.designPoints,
    required this.pmPoints,
  });

  /// `designPoints:` Storage the changes made into `Design` points, this will 
  /// storage the old value, and the new one.
  @MappableField(key: 'Design')
  FromTo? designPoints;

  /// `frontPoints:` Storage the changes made into `Front` points, this will 
  /// storage the old value, and the new one.
  @MappableField(key: 'Front')
  FromTo? frontPoints;

  /// `backPoints:` Storage the changes made into `Back` points, this will 
  /// storage the old value, and the new one.
  @MappableField(key: 'Back')
  FromTo? backPoints;

  /// `pmPoints:` Storage the changes made into `Project Manager` points, this 
  /// will storage the old value, and the new one.
  @MappableField(key: 'Project Manager')
  FromTo? pmPoints;

  /// FromJson method, convert a json type object into this PointDifference
  /// object
  static const fromJson = PointDifferenceMapper.fromJson;
}

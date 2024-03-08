import 'package:dart_mappable/dart_mappable.dart';

part 'data_point.mapper.dart';

/// This class is to storage the points of a userStory, this are customizable 
/// values on Taiga Project. 
/// https://community.taiga.io/t/customisation-for-your-projects/127
@MappableClass(caseStyle: CaseStyle.snakeCase)
class DataStoryPoint with DataStoryPointMappable {
  /// Constructor of the Point Class
  DataStoryPoint({
    required this.pointName,
    required this.pointAssignedRole,
    required this.pointAmount,
  });

  /// `pointName:`Its the name assigned to this Story Point
  @MappableField(key: 'name')
  String pointName;

  /// `pointAssignedRole:`Its the role assigned to this Story Point
  @MappableField(key: 'role')
  String pointAssignedRole;

  /// `pointAmount:`Its the amount of points assigned to this Story Point
  @MappableField(key: 'value')
  double? pointAmount;

  /// FromJson method, convert a json type object into this DataPoint Object
  static const fromJson = DataStoryPointMapper.fromJson;
}

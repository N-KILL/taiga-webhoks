import 'package:dart_mappable/dart_mappable.dart';

part 'time_stats.mapper.dart';

/// This [TimeStats] class is used to save the information related to the time
/// of an `issue`, 
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TimeStats with TimeStatsMappable {
  ///
  TimeStats({
    required this.timeEstimate,
    required this.totalTimeSpent,
    required this.humanTimeEstimate,
    required this.humanTotalTimeSpent,
  });

  ///
  int? timeEstimate;

  ///
  int? totalTimeSpent;

  ///
  num? humanTimeEstimate;

  ///
  num? humanTotalTimeSpent;

  /// FromJson method, convert a json type object into this [TimeStats] Object
  static const fromJson = TimeStatsMapper.fromJson;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'time_stats.dart';

class TimeStatsMapper extends ClassMapperBase<TimeStats> {
  TimeStatsMapper._();

  static TimeStatsMapper? _instance;
  static TimeStatsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TimeStatsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TimeStats';

  static int? _$timeEstimate(TimeStats v) => v.timeEstimate;
  static const Field<TimeStats, int> _f$timeEstimate =
      Field('timeEstimate', _$timeEstimate, key: 'time_estimate');
  static int? _$totalTimeSpent(TimeStats v) => v.totalTimeSpent;
  static const Field<TimeStats, int> _f$totalTimeSpent =
      Field('totalTimeSpent', _$totalTimeSpent, key: 'total_time_spent');
  static num? _$humanTimeEstimate(TimeStats v) => v.humanTimeEstimate;
  static const Field<TimeStats, num> _f$humanTimeEstimate = Field(
      'humanTimeEstimate', _$humanTimeEstimate,
      key: 'human_time_estimate');
  static num? _$humanTotalTimeSpent(TimeStats v) => v.humanTotalTimeSpent;
  static const Field<TimeStats, num> _f$humanTotalTimeSpent = Field(
      'humanTotalTimeSpent', _$humanTotalTimeSpent,
      key: 'human_total_time_spent');

  @override
  final Map<Symbol, Field<TimeStats, dynamic>> fields = const {
    #timeEstimate: _f$timeEstimate,
    #totalTimeSpent: _f$totalTimeSpent,
    #humanTimeEstimate: _f$humanTimeEstimate,
    #humanTotalTimeSpent: _f$humanTotalTimeSpent,
  };

  static TimeStats _instantiate(DecodingData data) {
    return TimeStats(
        timeEstimate: data.dec(_f$timeEstimate),
        totalTimeSpent: data.dec(_f$totalTimeSpent),
        humanTimeEstimate: data.dec(_f$humanTimeEstimate),
        humanTotalTimeSpent: data.dec(_f$humanTotalTimeSpent));
  }

  @override
  final Function instantiate = _instantiate;

  static TimeStats fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TimeStats>(map);
  }

  static TimeStats fromJson(String json) {
    return ensureInitialized().decodeJson<TimeStats>(json);
  }
}

mixin TimeStatsMappable {
  String toJson() {
    return TimeStatsMapper.ensureInitialized()
        .encodeJson<TimeStats>(this as TimeStats);
  }

  Map<String, dynamic> toMap() {
    return TimeStatsMapper.ensureInitialized()
        .encodeMap<TimeStats>(this as TimeStats);
  }

  TimeStatsCopyWith<TimeStats, TimeStats, TimeStats> get copyWith =>
      _TimeStatsCopyWithImpl(this as TimeStats, $identity, $identity);
  @override
  String toString() {
    return TimeStatsMapper.ensureInitialized()
        .stringifyValue(this as TimeStats);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TimeStatsMapper.ensureInitialized()
                .isValueEqual(this as TimeStats, other));
  }

  @override
  int get hashCode {
    return TimeStatsMapper.ensureInitialized().hashValue(this as TimeStats);
  }
}

extension TimeStatsValueCopy<$R, $Out> on ObjectCopyWith<$R, TimeStats, $Out> {
  TimeStatsCopyWith<$R, TimeStats, $Out> get $asTimeStats =>
      $base.as((v, t, t2) => _TimeStatsCopyWithImpl(v, t, t2));
}

abstract class TimeStatsCopyWith<$R, $In extends TimeStats, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? timeEstimate,
      int? totalTimeSpent,
      num? humanTimeEstimate,
      num? humanTotalTimeSpent});
  TimeStatsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TimeStatsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TimeStats, $Out>
    implements TimeStatsCopyWith<$R, TimeStats, $Out> {
  _TimeStatsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TimeStats> $mapper =
      TimeStatsMapper.ensureInitialized();
  @override
  $R call(
          {Object? timeEstimate = $none,
          Object? totalTimeSpent = $none,
          Object? humanTimeEstimate = $none,
          Object? humanTotalTimeSpent = $none}) =>
      $apply(FieldCopyWithData({
        if (timeEstimate != $none) #timeEstimate: timeEstimate,
        if (totalTimeSpent != $none) #totalTimeSpent: totalTimeSpent,
        if (humanTimeEstimate != $none) #humanTimeEstimate: humanTimeEstimate,
        if (humanTotalTimeSpent != $none)
          #humanTotalTimeSpent: humanTotalTimeSpent
      }));
  @override
  TimeStats $make(CopyWithData data) => TimeStats(
      timeEstimate: data.get(#timeEstimate, or: $value.timeEstimate),
      totalTimeSpent: data.get(#totalTimeSpent, or: $value.totalTimeSpent),
      humanTimeEstimate:
          data.get(#humanTimeEstimate, or: $value.humanTimeEstimate),
      humanTotalTimeSpent:
          data.get(#humanTotalTimeSpent, or: $value.humanTotalTimeSpent));

  @override
  TimeStatsCopyWith<$R2, TimeStats, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TimeStatsCopyWithImpl($value, $cast, t);
}

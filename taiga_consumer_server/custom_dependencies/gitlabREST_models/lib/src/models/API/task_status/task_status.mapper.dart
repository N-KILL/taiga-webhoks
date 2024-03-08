// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'task_status.dart';

class TaskCompletionStatusMapper extends ClassMapperBase<TaskCompletionStatus> {
  TaskCompletionStatusMapper._();

  static TaskCompletionStatusMapper? _instance;
  static TaskCompletionStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaskCompletionStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TaskCompletionStatus';

  static int _$count(TaskCompletionStatus v) => v.count;
  static const Field<TaskCompletionStatus, int> _f$count =
      Field('count', _$count);
  static int _$completedCount(TaskCompletionStatus v) => v.completedCount;
  static const Field<TaskCompletionStatus, int> _f$completedCount =
      Field('completedCount', _$completedCount, key: 'completed_count');

  @override
  final Map<Symbol, Field<TaskCompletionStatus, dynamic>> fields = const {
    #count: _f$count,
    #completedCount: _f$completedCount,
  };

  static TaskCompletionStatus _instantiate(DecodingData data) {
    return TaskCompletionStatus(
        count: data.dec(_f$count), completedCount: data.dec(_f$completedCount));
  }

  @override
  final Function instantiate = _instantiate;

  static TaskCompletionStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaskCompletionStatus>(map);
  }

  static TaskCompletionStatus fromJson(String json) {
    return ensureInitialized().decodeJson<TaskCompletionStatus>(json);
  }
}

mixin TaskCompletionStatusMappable {
  String toJson() {
    return TaskCompletionStatusMapper.ensureInitialized()
        .encodeJson<TaskCompletionStatus>(this as TaskCompletionStatus);
  }

  Map<String, dynamic> toMap() {
    return TaskCompletionStatusMapper.ensureInitialized()
        .encodeMap<TaskCompletionStatus>(this as TaskCompletionStatus);
  }

  TaskCompletionStatusCopyWith<TaskCompletionStatus, TaskCompletionStatus,
          TaskCompletionStatus>
      get copyWith => _TaskCompletionStatusCopyWithImpl(
          this as TaskCompletionStatus, $identity, $identity);
  @override
  String toString() {
    return TaskCompletionStatusMapper.ensureInitialized()
        .stringifyValue(this as TaskCompletionStatus);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaskCompletionStatusMapper.ensureInitialized()
                .isValueEqual(this as TaskCompletionStatus, other));
  }

  @override
  int get hashCode {
    return TaskCompletionStatusMapper.ensureInitialized()
        .hashValue(this as TaskCompletionStatus);
  }
}

extension TaskCompletionStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaskCompletionStatus, $Out> {
  TaskCompletionStatusCopyWith<$R, TaskCompletionStatus, $Out>
      get $asTaskCompletionStatus =>
          $base.as((v, t, t2) => _TaskCompletionStatusCopyWithImpl(v, t, t2));
}

abstract class TaskCompletionStatusCopyWith<
    $R,
    $In extends TaskCompletionStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? count, int? completedCount});
  TaskCompletionStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TaskCompletionStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaskCompletionStatus, $Out>
    implements TaskCompletionStatusCopyWith<$R, TaskCompletionStatus, $Out> {
  _TaskCompletionStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaskCompletionStatus> $mapper =
      TaskCompletionStatusMapper.ensureInitialized();
  @override
  $R call({int? count, int? completedCount}) => $apply(FieldCopyWithData({
        if (count != null) #count: count,
        if (completedCount != null) #completedCount: completedCount
      }));
  @override
  TaskCompletionStatus $make(CopyWithData data) => TaskCompletionStatus(
      count: data.get(#count, or: $value.count),
      completedCount: data.get(#completedCount, or: $value.completedCount));

  @override
  TaskCompletionStatusCopyWith<$R2, TaskCompletionStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TaskCompletionStatusCopyWithImpl($value, $cast, t);
}

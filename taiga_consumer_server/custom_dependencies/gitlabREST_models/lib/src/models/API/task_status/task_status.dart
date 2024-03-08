import 'package:dart_mappable/dart_mappable.dart';

part 'task_status.mapper.dart';

/// This class [TaskCompletionStatus] is a object model based on the 
/// `GitLab API` information related to an `issue`, more specific to his 
/// `tasks`. <br> 
/// This is used to read the amount of `task` the `issue` have, and the
/// amount of completed ones.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaskCompletionStatus with TaskCompletionStatusMappable {
  
  /// Constructor of [TaskCompletionStatus]
  TaskCompletionStatus({
    required this.count,
    required this.completedCount,
  });

  /// This value shows the amount of `task` of one `issue` on `gitlab`
  int count;

  /// This value shows the amount of `completed task` of one `issue` on `gitlab`
  int completedCount;

  /// FromJson method, convert a json type object into this
  /// [TaskCompletionStatus] Object
  static const fromJson = TaskCompletionStatusMapper.fromJson;
}

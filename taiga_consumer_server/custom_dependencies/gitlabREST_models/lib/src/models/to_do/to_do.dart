import 'package:dart_mappable/dart_mappable.dart';

part 'to_do.mapper.dart';

/// This class [ToDo] is for read, the data of a `ToDo` on `GitLab`. Usually,
/// the `ToDo` is on this format: <br>
/// "TODO(<User>): Title of the TO DO" <br>
/// "Description of the TO DO"
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToDo with ToDoMappable {
  /// constructor of the 'ToDo' class
  ToDo({
    required this.name,
    this.description,
    this.priority,
    this.assignedUserName,
  });

  /// `name` of the `ToDo`.
  String name;

  /// `description` of the `ToDo`. Usually will contain information related to
  /// the `ToDo`
  String? description;

  /// `assignedUserName` is the name of the user assigned to this `ToDo` task.
  String? assignedUserName;

  /// `priority` is the priority given to the `ToDo` task.
  int? priority;

  /// FromJson method, convert a json type object into this `ToDo`
  /// Object
  static const fromJson = ToDoMapper.fromJson;
}

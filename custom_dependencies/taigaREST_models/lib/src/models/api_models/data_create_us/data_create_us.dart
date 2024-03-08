import 'package:dart_mappable/dart_mappable.dart';

part 'data_create_us.mapper.dart';

// TODO(NACHO): Finish this doc...

///
@MappableClass(caseStyle: CaseStyle.snakeCase)
class DataCreateUs with DataCreateUsMappable {
  /// Constructor of the [DataCreateUs] class
  DataCreateUs({
    required this.assignedTo,
    required this.backlogOrder,
    required this.blockedNote,
    required this.clientRequirement,
    required this.description,
    required this.isBlocked,
    required this.isClosed,
    required this.kanbanOrder,
    required this.milestone,
    required this.points,
    required this.project,
    required this.sprintOrder,
    required this.status,
    required this.subject,
    required this.tags,
    required this.teamRequirement,
    required this.watchers,
  });

  /// user id
  @MappableField(key: 'assigned_to')
  int assignedTo;
  
  /// order in the backlog
  @MappableField(key: 'backlog_order')
  int backlogOrder;
  
  /// reason why the user story is blocked
  @MappableField(key: 'blocked_note')
  String blockedNote;
  
  /// boolean
  @MappableField(key: 'client_requirement')
  bool clientRequirement;
  
  /// String
  @MappableField(key: 'description')
  String description;
  
  /// boolean
  @MappableField(key: 'is_blocked')
  bool isBlocked;
  
  /// boolean
  @MappableField(key: 'is_closed')
  bool isClosed;
  
  /// order in the kanban
  @MappableField(key: 'kanban_order')
  int kanbanOrder;
  
  /// milestone id
  @MappableField(key: 'milestone')
  int milestone;
  
  ///  dictionary of points
  @MappableField(key: 'points')
  double points;
  
  /// project id (required)
  @MappableField(key: 'project')
  int project;
  
  /// order in the milestone
  @MappableField(key: 'sprint_order')
  int sprintOrder;
  
  /// status id
  @MappableField(key: 'status')
  int status;
  
  /// String (required)
  @MappableField(key: 'subject')
  String subject;
  
  ///  array of strings
  @MappableField(key: 'tags')
  List<String> tags;
  
  /// boolean
  @MappableField(key: 'team_requirement')
  bool teamRequirement;
  
  /// array of watcher ids
  @MappableField(key: 'watchers')
  List<int> watchers;

  ///
  static const fromJson = DataCreateUsMapper.fromJson;
}

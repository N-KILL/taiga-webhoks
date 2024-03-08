import 'package:dart_mappable/dart_mappable.dart';

part 'milestone.mapper.dart';

/// Its used to map the possible values of the `milestone` status on the `GitLab
/// API`. <br>
/// Based on the information given on the api doc: <br>
/// https://docs.gitlab.com/ee/api/milestones.html
@MappableEnum(mode: ValuesMode.named, caseStyle: CaseStyle.snakeCase)
enum MilestoneStates {
  /// This is for the type `active` on `Gitlab milestone` information.
  active,

  /// This is for the type `closed` on `Gitlab milestone` information.
  closed,
}

/// The [MilestoneAPI] class is used to map a `Milestone` instance from the
/// `GitLab API` payload. <br>
/// Based on the API response sample: <br>
/// https://docs.gitlab.com/ee/api/milestones.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class MilestoneAPI with MilestoneAPIMappable {
  ///
  MilestoneAPI({
    required this.id,
    required this.internalId,
    required this.projectId,
    required this.name,
    required this.description,
    required this.state,
    required this.createdAt,
    required this.updatedAt,
    required this.dueDate,
    required this.startDate,
    required this.isExpired,
    required this.milestoneLink,
  });

  /// `projectId` Its the `id` of the project related to the `milestone` on
  /// `GitLab`
  int projectId;

  /// `description` Its the description given on the `milestone`
  String description;

  /// `state` Is
  MilestoneStates state;

  /// `dueDate` Its the date when the `milestone` will be marked as `expired`
  DateTime dueDate;

  /// `internalId` Its the reference id you can see in any object inside of the
  /// project. Most known as internal id
  @MappableField(key: 'iid')
  int internalId;

  /// `createdAt` its the date when the `milestone` was created
  DateTime createdAt;

  /// `name` Its the name of the `milestone`
  @MappableField(key: 'title')
  String name;

  /// `id` Its the id of the `milestone` on `GitLab`, this is global, its 
  /// recommended to use the [internalId]
  int id;

  /// `updatedAt` its the date of the last time this milestone receive an update
  DateTime updatedAt;

  /// `startDate` its the date when the `milestone` will start
  DateTime startDate;

  /// `isExpired` Show the state of the `milestone` if is marked as expired or 
  /// not, based on the `dueDate`.
  @MappableField(key: 'expired')
  bool isExpired;

  /// `milestoneLink` its the url to the `milestone`.
  @MappableField(key: 'web_url')
  String milestoneLink;

  /// FromJson method, convert a json type object into this [MilestoneAPI]
  /// Object
  static const fromJson = MilestoneAPIMapper.fromJson;
}

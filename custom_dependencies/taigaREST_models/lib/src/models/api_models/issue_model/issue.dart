import 'package:dart_mappable/dart_mappable.dart';

part 'issue.mapper.dart';

/// This model [TaigaIssueAPI] is used to communicate with the `Taiga API`.
/// <h4> The values required are: </h4>
/// <ul>
///   <li><p>
///     [projectId] : Its the <Strong> ID </Strong> of the related project 
///   </li></p>
///   <li><p>
///     [title] : Its the title <Strong> Issue </Strong>
///   </li></p>
///   <li><p>
///     [watchersId] : Its the <Strong> ID </Strong> of the users related with 
///     this <Strong> project </Strong> as watchers. <br>
///     This can't be null, when you create an <Strong> Issue </Strong>, have to
///     be an empty [List] if you doesn't want to use this value. <br>
///     Example: <Strong> [ ] </Strong> 
///   </li></p>
/// </ul>
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaIssueAPI with TaigaIssueAPIMappable {
  /// This is the of the [TaigaIssueAPI] model 
  TaigaIssueAPI({
    required this.projectId,
    required this.title,
    required this.watchersId,
    this.assignedToId,
    this.blockedNote,
    this.description,
    this.isBlocked,
    this.isClosed,
    this.sprintId,
    this.priorityId,
    this.severityId,
    this.statusId,
    this.tags,
    this.type,
  });

  /// [assignedToId] Its the `id` of the user who is assigned to an `issue` 
  @MappableField(key: 'assigned_to')
  int? assignedToId;

  /// [blockedNote] Its the note someone leave when decide to block the `issue`.
  /// Can be null 
  @MappableField(key: 'blocked_note')
  String? blockedNote;

  /// [description] Its the description of the `issue`
  String? description;

  /// [isBlocked] This is an status, if the issue is blocked or not.
  @MappableField(key: 'is_blocked')
  bool? isBlocked;

  /// [isClosed] This is an status, if the issue is closed or not.
  @MappableField(key: 'is_closed')
  bool? isClosed;

  /// [sprintId] Its the id of the related `sprint`, this value came from the 
  /// `API` as 'milestone'
  @MappableField(key: 'milestone')
  int? sprintId;

  /// [priorityId] Its the id of the priority of the `issue`, `Taiga` have 
  /// customizable values, so you cant have a simple [int] value, this will be
  /// an unique one
  @MappableField(key: 'priority')
  int? priorityId;

  /// [projectId] Its the `ID` of the project on `Taiga`
  @MappableField(key: 'project')
  int projectId;

  /// [severityId] Its the id of the severity of the `issue`, `Taiga` have 
  /// customizable values, so you cant have a simple [int] value, this will be
  /// an unique one
  @MappableField(key: 'severity')
  int? severityId;

  /// [statusId] Its the id of the status of the `issue`, `Taiga` have 
  /// customizable values, so you cant have a simple [int] value, this will be
  /// an unique one
  @MappableField(key: 'status')
  int? statusId;

  /// [title] Its the title of the `Issue`, can came from the `API` as subject
  @MappableField(key: 'subject')
  String title;

  /// [tags] Its the list of the tags related to the `issue`
  List<String>? tags;

  /// [type] Just give the type of `Taiga` element, in this case, will be always
  /// 'issue'  
  int? type;

  /// [watchersId] Its a [List] with the `ids` of the users who are related to 
  /// this issue as watchers. If you're sending a `POST` request, and you don't 
  /// want to use this value, just let an empty [List], like this: `[ ]`
  @MappableField(key: 'watchers')
  List<int?> watchersId;

  /// This [fromJson] method, is to convert the response from the `API` when you
  /// do a `GET` request. Will crate an [TaigaIssueAPI] from a json
  static const fromJson = TaigaIssueAPIMapper.fromJson;
}

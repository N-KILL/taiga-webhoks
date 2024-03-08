import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_project/taiga_project.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_user/taiga_user.dart';

part 'data_sprint.mapper.dart';

/// This class will storage all the data related to an sprint coming from the
/// payload of Taiga
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaSprintData with TaigaSprintDataMappable {
  /// Constructor of the DataSprint class
  TaigaSprintData({
    required this.sprintId,
    required this.sprintName,
    required this.sprintSlug,
    required this.estimatedStartDate,
    required this.estimatedFinishDate,
    required this.creationDate,
    required this.modifiedDate,
    required this.sprintClosedStatus,
    required this.disponibility,
    required this.sprintPermalink,
    required this.project,
    required this.createdBy,
  });

  /// Id of the sprint
  @MappableField(key: 'id')
  int sprintId;

  /// Name of the sprint
  @MappableField(key: 'name')
  String sprintName;

  /// `sprintSlug:` `slug` it's a human-readable part of a URL that identifies 
  /// a particular resource, are usually created by converting text into a 
  /// URL-friendly format, often by replacing spaces and special characters 
  /// with dashes or underscores, removing accents, and converting the text to 
  /// lowercase. <br> <br>
  /// In this case its means the las part of the url of Taiga. Example: <br>
  /// `https://tree.taiga.io/project/<project-name>/taskboard/<slug>`
  @MappableField(key: 'slug')
  String sprintSlug;

  /// `estimatedStartDate:` Its the estimated start date of the sprint. 
  /// This is defined at the creation of the `sprint` and can be edited.
  @MappableField(key: 'estimated_start')
  DateTime estimatedStartDate;

  /// `estimatedFinishDate:` Its the Estimated finish date of the sprint. 
  /// This is defined at the creation of the `sprint` and can be edited.
  @MappableField(key: 'estimated_finish')
  DateTime estimatedFinishDate;

  /// `creationDate:` Its the creation date of the `sprint`.
  @MappableField(key: 'created_date')
  DateTime creationDate;

  /// `modifiedDate:` Its the last time that the sprint receive a modification.
  DateTime modifiedDate;

  /// `sprintClosedStatus:` Its a Bool to storage the status of the sprint. 
  /// If is closed or not. Can came as `True` or `False`
  @MappableField(key: 'closed')
  bool sprintClosedStatus;

  /// Disponibility of the sprint
  int disponibility;

  /// Permalink of the sprint will give you the complete url to the sprint
  /// example: "tree.taiga.io/project/project-name/taskboard/sprint-name"
  @MappableField(key: 'permalink')
  String sprintPermalink;

  /// Data of the Project where the sprint is
  TaigaProject project;

  /// This is the person who create the sprint
  @MappableField(key: 'owner')
  TaigaUser createdBy;

  /// FromJson method, convert a json type object into this
  /// TaigaUserStoryData Object
  static const fromJson = TaigaSprintDataMapper.fromJson;
}

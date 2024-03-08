import 'package:dart_mappable/dart_mappable.dart';

part 'taiga_project.mapper.dart';

/// This class is madded for save the details from a project of Taiga
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaProject with TaigaProjectMappable {
  /// Constructor of the class Project
  TaigaProject({
    required this.projectId,
    required this.projectPermalink,
    required this.projectName,
    required this.projectLogoBigUrl,
  });

  /// `projectId:` Its the `Id` of the `project` on `Taiga`.
  @MappableField(key: 'id')
  int projectId;

  /// `projectPermalink:` Its the permanent link to the `Project` <br>
  /// example: "tree.taiga.io/project/project-name"
  @MappableField(key: 'permalink')
  String projectPermalink;

  /// `projectName:` Its the assigned name to the `Project` on `Taiga` 
  @MappableField(key: 'name')
  String projectName;

  /// `projectLogoBigUrl:` Url of the logo of the `Project` 
  /// (Can came as a `null` value)
  @MappableField(key: 'logo_big_url')
  String? projectLogoBigUrl;

  /// FromJson method, convert a json type object into this TaigaProject Object
  static const fromJson = TaigaProjectMapper.fromJson;
}

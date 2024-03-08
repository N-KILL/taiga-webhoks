import 'package:dart_mappable/dart_mappable.dart';

part 'links.mapper.dart';

/// This [LinksAPI] class is used to map the links related to a `GitLab Object` 
/// from the API payload. Contains all the links which reference that object
@MappableClass(caseStyle: CaseStyle.snakeCase)
class LinksAPI with LinksAPIMappable {
  ///
  LinksAPI({
    required this.self,
    required this.notes,
    required this.awardEmoji,
    required this.projectUrl,
    required this.closedAsDuplicateOf,
  });

  /// `self` its the link into the self item related to this object, can be an
  /// `issue`, `epic`, etc. <br>
  /// example: <br>
  /// `https://gitlab.com/api/v4/projects/<project-id>/issues/<issue-id>`
  String self;

  /// `notes` its the link into the self notes of the item related to this
  /// object.
  /// example: <br>
  /// `https://gitlab.com/api/v4/projects/<project-id>/issues/<issue-id>/notes`
  String notes;

  /// `awardEmoji` its the link
  /// example: <br>
  /// `https://gitlab.com/api/v4/projects/<project-id>/issues/<issue-id>/award_emoji`
  String awardEmoji;

  /// `projectUrl` Its the url to the project related to this object.
  /// example: <br>
  /// `https://gitlab.com/api/v4/projects/<project-id>/issues/<issue-id>`
  @MappableField(key: 'project')
  String projectUrl;

  /// `closedAsDuplicateOf` Its the url to the `closed` or the `duplicated`,
  /// item because was similar to this object. 
  /// example: <br>
  /// `https://gitlab.com/api/v4/projects/<project-id>/issues/<issue-id>`
  String? closedAsDuplicateOf;

  /// FromJson method, convert a json type object into this [LinksAPI] Object
  static const fromJson = LinksAPIMapper.fromJson;
}

import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/models/from_to/from_to.dart';

part 'change.mapper.dart';

///
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Changes with ChangesMappable {
  ///
  Changes({
    required this.authorId,
    required this.createdAt,
    required this.description,
    required this.id,
    required this.internalId,
    required this.projectId,
    required this.timeEstimate,
    required this.title,
    required this.updatedAt,
  });

  ///
  FromTo? authorId;

  ///
  FromTo? createdAt;

  ///
  FromTo? description;

  ///
  FromTo? id;

  /// Internal ID is the iid value on GitLab, this is used to identify issues,
  /// pipelines, etc. This is an unique value, who works inside of a project.
  /// For more info:
  /// https://gitlab.com/gitlab-org/gitlab/-/blob/1cb9fe25/doc/api/README.md#id-vs-iid
  @MappableField(key: 'iid')
  FromTo? internalId;

  ///
  FromTo? projectId;

  ///
  FromTo? timeEstimate;

  ///
  FromTo? title;

  ///
  FromTo? updatedAt;

  /// FromJson method, convert a json type object into this Changes Object
  static const fromJson = ChangesMapper.fromJson;
}

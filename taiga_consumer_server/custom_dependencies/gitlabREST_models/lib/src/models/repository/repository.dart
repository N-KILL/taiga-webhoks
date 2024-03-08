import 'package:dart_mappable/dart_mappable.dart';

part 'repository.mapper.dart';

/// This mappable model GitLabRepository is used to map a gitlab webhook
/// repository information
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabRepository with GitLabRepositoryMappable {
  /// GitLabRepository class constructor
  GitLabRepository({
    required this.name,
    required this.url,
    required this.description,
    required this.homepageUrl,
    this.gitHttpUrl,
    this.gitSshUrl,
    this.visibilityLevel,
  });

  /// Its the name of the repository
  String name;

  /// Url to the gitlab repository
  String url;

  ///
  String? description;

  /// Homepage of the repository project
  @MappableField(key: 'homepage')
  String homepageUrl;

  /// http url to the gitlab repository endpoint
  String? gitHttpUrl;

  /// ssh url to the gitlab repository endpoint
  String? gitSshUrl;

  /// This value indicate the visibility privacy of the repository, according
  /// to this values:
  /// public(20) an entity is visible to everyone
  /// internal(10) an entity is visible to authenticated users
  /// private(0) an entity is visible only to the approved members of the entity
  /// https://docs.gitlab.com/ee/development/permissions/predefined_roles.html#:~:text=Groups%20and%20Projects-,General%20permissions,approved%20members%20of%20the%20entity
  int? visibilityLevel;

  /// FromJson method, convert a json type object into this GitLabRepository
  /// Object
  static const fromJson = GitLabRepositoryMapper.fromJson;
}

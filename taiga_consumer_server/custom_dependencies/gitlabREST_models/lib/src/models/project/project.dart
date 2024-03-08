import 'package:dart_mappable/dart_mappable.dart';

part 'project.mapper.dart';

/// This mappable model GitLabProject is used to map a gitlab webhook
/// project information
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabProject with GitLabProjectMappable {
  /// GitLabProject class constructor
  GitLabProject({
    required this.id,
    required this.name,
    required this.description,
    required this.webUrl,
    required this.projectAvatarUrl,
    required this.gitSshUrl,
    required this.gitHttpUrl,
    required this.namespace,
    required this.visibilityLevel,
    required this.projectPathWithNamespace,
    required this.projectDefaultBranch,
    required this.projectCIConfigPath,
    required this.homepageUrl,
    required this.projectUrl,
    required this.sshUrl,
    required this.httpUrl,
  });

  /// Id of the project, used to identify the project
  int id;

  /// Name of the project
  String name;

  /// This is the description of the project (Can came as a null value if
  /// the project have no description in it)
  String? description;

  /// Url to the webpage of the project
  String webUrl;

  /// Url to the project avatar (Can came as null value if the project have no
  /// avatar image)
  @MappableField(key: 'avatar_url')
  String? projectAvatarUrl;

  /// SSH Url of the project provide access to a Git repository via SSH, a
  /// secure protocol.
  String gitSshUrl;

  /// HTTP Url of the project. The "https://" clone URLs are available on all
  /// repositories, regardless of visibility.
  String gitHttpUrl;

  /// Namespace of the project. For more information about visit the next page:
  /// https://docs.gitlab.com/ee/user/namespace/
  String namespace;

  /// This value indicate the visibility privacy of the repository, according
  /// to this values:
  /// public(20) an entity is visible to everyone
  /// internal(10) an entity is visible to authenticated users
  /// private(0) an entity is visible only to the approved members of the entity
  /// https://docs.gitlab.com/ee/development/permissions/predefined_roles.html#:~:text=Groups%20and%20Projects-,General%20permissions,approved%20members%20of%20the%20entity
  int visibilityLevel;

  /// Path of the project is the path used on gitlab.
  /// Example:
  /// https://gitlab.com/"PATH" - URL HTTP
  /// git@gitlab.com:"PATH".git - URL SSH
  @MappableField(key: 'path_with_namespace')
  String projectPathWithNamespace;

  /// Is the default branch set on the project configuration
  @MappableField(key: 'default_branch')
  String projectDefaultBranch;

  /// Is the default CI path set on the project configuration (Can came as an
  /// empty string "" if is not set on the project)
  @MappableField(key: 'ci_config_path')
  String projectCIConfigPath;

  /// Url to the project homepage
  @MappableField(key: 'homepage')
  String homepageUrl;

  /// Url to use the endpoint of the project (Can be modified on the project)
  @MappableField(key: 'url')
  String projectUrl;

  /// Url SSH format to use the endpoint of the project 
  /// (Can be modified on the project)
  String sshUrl;

  /// Url HTTP format to use the endpoint of the project 
  /// (Can be modified on the project)
  String httpUrl;

  /// FromJson method, convert a json type object into this GitLabProject Object
  static const fromJson = GitLabProjectMapper.fromJson;
}

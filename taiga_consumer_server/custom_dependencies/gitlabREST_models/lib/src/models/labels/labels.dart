import 'package:dart_mappable/dart_mappable.dart';

part 'labels.mapper.dart';

/// Label class is used to map the labels when it came from a GitLab webhook.
/// If you want to know more about how GitLabs Labels works, there is the doc:
/// https://docs.gitlab.com/ee/user/project/labels.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Label with LabelMappable {
  /// Label class constructor
  Label({
    required this.id,
    required this.name,
    required this.color,
    required this.projectId,
    required this.createdAt,
    required this.lastTimeUpdated,
    required this.template,
    required this.description,
    required this.type,
    required this.groupId,
    required this.lockOnMergeStatus,
  });

  /// Label id, value from GitLab
  int id;

  /// Name of the label, which appears when you use it on GitLab, for more info:
  /// https://docs.gitlab.com/ee/user/project/labels.html
  @MappableField(key: 'title')
  String name;

  /// Color assigned to the label, customizable from GitLab, for more info:
  /// https://docs.gitlab.com/ee/user/project/labels.html
  String color;

  /// Id of the project related to this custom label
  int projectId;

  /// Date of creation of this Label
  String createdAt;

  /// Last date of modification of this Label. It is a string because it came
  /// as an unsupported format: '2023-11-29 11:37:09 UTC', cant be parsed as a
  /// date
  @MappableField(key: 'updated_at')
  String lastTimeUpdated;

  // TODO(Nacho): Discover how this value works on gitlab

  ///
  bool template;

  /// Description of the label, can came as null if it doesn't have one, for
  /// more info:
  /// https://docs.gitlab.com/ee/user/project/labels.html
  String? description;

  /// This indicate the type of label, usually it will be two types:
  /// Project Label and Group Labels, for more info:
  /// https://docs.gitlab.com/ee/user/project/labels.html
  String type;

  /// This will have the group id if it is a Group Label, if is not, it will
  /// came as a null value.
  int? groupId;

  /// Status indicating if it will turn locked  when a merge event occurs or not
  /// , for more info:
  /// https://docs.gitlab.com/ee/user/project/labels.html
  @MappableField(key: 'lock_on_merge')
  bool lockOnMergeStatus;

  /// FromJson method, convert a json type object into this Labels Object
  static const fromJson = LabelMapper.fromJson;
}

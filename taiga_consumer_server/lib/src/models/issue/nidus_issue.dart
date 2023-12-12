import 'package:dart_mappable/dart_mappable.dart';

part 'nidus_issue.mapper.dart';

/// This [NidusIssue] class is used to create an `issue` object for the `Nidus`
/// app this will be using the related `Taiga` issue, and the related `GitLab`
/// issue. To mix those two platforms in the new `Nidus` platform `Gestion`
@MappableClass()
class NidusIssue with NidusIssueMappable {
  /// Constructor of the [NidusIssue] class
  NidusIssue({
    required this.id,
    required this.name,
    required this.description,
    required this.assignedNidusUsers,
    required this.gitlabId,
    required this.taigaId,
  });

  /// `id` its the identifier for the [NidusIssue] object.
  int id;

  /// `name` its the name of the `issue`.
  String name;

  /// `description` its the description of the `issue`, this will contain the
  /// details of the `issue`.`
  String description;

  /// `assignedNidusUsers` its a list which contains the `ids` of the nidus user 
  List<int> assignedNidusUsers;

  /// `gitlabId` its the id of the `issue` on `GitLab`.
  int gitlabId;

  /// `taigaId` its the id of the `issue` on `Taiga`.
  int taigaId;

  /// FromJson method, convert a json type object into this
  /// [NidusIssue] Object
  static const fromJson = NidusIssueMapper.fromJson;
}

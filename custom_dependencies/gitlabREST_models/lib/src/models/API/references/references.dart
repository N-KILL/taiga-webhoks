import 'package:dart_mappable/dart_mappable.dart';

part 'references.mapper.dart';

/// This [ReferencesAPI] class is used to map the references for the
/// `GitLab API`, references its the number of the iid, at the way you can
/// reference it inside of a commit message for example. This way its
/// `#iid` for the issue `!iid` for the MR and `$iid` for the snippet.
/// The short, relative, and full values ​​define how those references are 
/// displayed
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ReferencesAPI with ReferencesAPIMappable {
  /// Constructor of the [ReferencesAPI] class
  ReferencesAPI({
    required this.short,
    required this.relative,
    required this.full,
  });

  /// `short` his value displays the reference in abbreviated form. <br>
  /// For example, it could show only the issue number without much additional 
  /// information like this: <br>
  /// `#1`, `$1`, `!1`
  String short;

  /// `relative` The reference relative to the current project is displayed 
  /// here. <br>
  /// For example, if there are references to other topics within the same 
  /// project, this option could show the relationship between them. <br>
  /// example:
  /// `my-project#1`, `my-project$1`, `my-project!1`
  String relative;

  /// `full` This value shows the full reference of the mentioned element. 
  /// For example, for an issue, it would show the full URL or the full path to 
  /// reach that particular issue. example:
  /// `my-group/my-project#1`, `my-group/my-project$1`, `my-group/my-project!1`
  String full;

  /// FromJson method, convert a json type object into this [ReferencesAPI] 
  /// Object
  static const fromJson = ReferencesAPIMapper.fromJson;
}

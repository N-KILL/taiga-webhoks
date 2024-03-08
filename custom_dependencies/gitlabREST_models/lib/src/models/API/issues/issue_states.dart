import 'package:dart_mappable/dart_mappable.dart';

part 'issue_states.mapper.dart';

/// This enum is for the issue states of GitLab <br>
/// Applies for the issue_type value, doc url: <br>
/// https://docs.gitlab.com/ee/api/issues.html
@MappableEnum(mode: ValuesMode.named, caseStyle: CaseStyle.snakeCase)
enum IssueStates {
  /// This is for the type `closed` on `Gitlab`.
  closed,

  /// This is for the type `opened` on `Gitlab`.
  opened,
}

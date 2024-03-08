import 'package:dart_mappable/dart_mappable.dart';

part 'issue_types.mapper.dart';

/// This enum is for the issue types of GitLab <br>
/// Applies for the issue_type value, doc url: <br>
/// https://docs.gitlab.com/ee/api/issues.html#new-issue
@MappableEnum(mode: ValuesMode.named, caseStyle: CaseStyle.snakeCase)
enum IssueTypes {
  /// This is for the type `issue` on `Gitlab`.
  issue,

  /// This is for the type `incident` on `Gitlab`.
  incident,

  /// This is for the type `testCase` on `Gitlab`.
  testCase,
}

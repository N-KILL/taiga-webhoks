// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issue_types.dart';

class IssueTypesMapper extends EnumMapper<IssueTypes> {
  IssueTypesMapper._();

  static IssueTypesMapper? _instance;
  static IssueTypesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IssueTypesMapper._());
    }
    return _instance!;
  }

  static IssueTypes fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  IssueTypes decode(dynamic value) {
    switch (value) {
      case 'issue':
        return IssueTypes.issue;
      case 'incident':
        return IssueTypes.incident;
      case 'test_case':
        return IssueTypes.testCase;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(IssueTypes self) {
    switch (self) {
      case IssueTypes.issue:
        return 'issue';
      case IssueTypes.incident:
        return 'incident';
      case IssueTypes.testCase:
        return 'test_case';
    }
  }
}

extension IssueTypesMapperExtension on IssueTypes {
  String toValue() {
    IssueTypesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<IssueTypes>(this) as String;
  }
}

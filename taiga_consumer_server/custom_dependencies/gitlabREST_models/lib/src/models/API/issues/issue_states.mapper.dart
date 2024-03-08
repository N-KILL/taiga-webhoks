// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issue_states.dart';

class IssueStatesMapper extends EnumMapper<IssueStates> {
  IssueStatesMapper._();

  static IssueStatesMapper? _instance;
  static IssueStatesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IssueStatesMapper._());
    }
    return _instance!;
  }

  static IssueStates fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  IssueStates decode(dynamic value) {
    switch (value) {
      case 'closed':
        return IssueStates.closed;
      case 'opened':
        return IssueStates.opened;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(IssueStates self) {
    switch (self) {
      case IssueStates.closed:
        return 'closed';
      case IssueStates.opened:
        return 'opened';
    }
  }
}

extension IssueStatesMapperExtension on IssueStates {
  String toValue() {
    IssueStatesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<IssueStates>(this) as String;
  }
}

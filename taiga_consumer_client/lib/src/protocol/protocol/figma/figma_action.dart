/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../../protocol.dart' as _i2;

/// This class [FigmaAction] is used to create models, to interact
/// with the figma plugin <https://github.com/N-KILL/Nidus-Figma-Plugin>
///
/// Also this model, have the bool isActive to indicate is the action
/// has been used or not. The idea is to keep it active, until pass 24Hrs
/// since the use on figma
abstract class FigmaAction extends _i1.SerializableEntity {
  FigmaAction._({
    this.id,
    required this.action,
    required this.huDataId,
    this.huData,
    required this.isActive,
    required this.creationDate,
    this.inactiveSince,
    required this.projectId,
    this.project,
  });

  factory FigmaAction({
    int? id,
    required _i2.ActionType action,
    required int huDataId,
    _i2.HuData? huData,
    required bool isActive,
    required DateTime creationDate,
    DateTime? inactiveSince,
    required int projectId,
    _i2.TaigaProject? project,
  }) = _FigmaActionImpl;

  factory FigmaAction.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FigmaAction(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      action: serializationManager
          .deserialize<_i2.ActionType>(jsonSerialization['action']),
      huDataId:
          serializationManager.deserialize<int>(jsonSerialization['huDataId']),
      huData: serializationManager
          .deserialize<_i2.HuData?>(jsonSerialization['huData']),
      isActive:
          serializationManager.deserialize<bool>(jsonSerialization['isActive']),
      creationDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['creationDate']),
      inactiveSince: serializationManager
          .deserialize<DateTime?>(jsonSerialization['inactiveSince']),
      projectId:
          serializationManager.deserialize<int>(jsonSerialization['projectId']),
      project: serializationManager
          .deserialize<_i2.TaigaProject?>(jsonSerialization['project']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// This is a enum to filter through the actions types
  _i2.ActionType action;

  int huDataId;

  /// This is data about the UserStory
  _i2.HuData? huData;

  /// Bool used to indicate the status of the action
  /// This have to be by default on True, and after 24Hrs
  /// of been used by the plugin have to set as false
  /// The plugin will call an endpoint to get all the active
  /// actions related to one project
  bool isActive;

  /// This is the date when the action was registered on the database
  DateTime creationDate;

  /// This is the date when the action was set as inactive
  DateTime? inactiveSince;

  int projectId;

  /// This is the project related to this action
  /// this value has to been used, to filter the actions by project
  _i2.TaigaProject? project;

  FigmaAction copyWith({
    int? id,
    _i2.ActionType? action,
    int? huDataId,
    _i2.HuData? huData,
    bool? isActive,
    DateTime? creationDate,
    DateTime? inactiveSince,
    int? projectId,
    _i2.TaigaProject? project,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'action': action.toJson(),
      'huDataId': huDataId,
      if (huData != null) 'huData': huData?.toJson(),
      'isActive': isActive,
      'creationDate': creationDate.toJson(),
      if (inactiveSince != null) 'inactiveSince': inactiveSince?.toJson(),
      'projectId': projectId,
      if (project != null) 'project': project?.toJson(),
    };
  }
}

class _Undefined {}

class _FigmaActionImpl extends FigmaAction {
  _FigmaActionImpl({
    int? id,
    required _i2.ActionType action,
    required int huDataId,
    _i2.HuData? huData,
    required bool isActive,
    required DateTime creationDate,
    DateTime? inactiveSince,
    required int projectId,
    _i2.TaigaProject? project,
  }) : super._(
          id: id,
          action: action,
          huDataId: huDataId,
          huData: huData,
          isActive: isActive,
          creationDate: creationDate,
          inactiveSince: inactiveSince,
          projectId: projectId,
          project: project,
        );

  @override
  FigmaAction copyWith({
    Object? id = _Undefined,
    _i2.ActionType? action,
    int? huDataId,
    Object? huData = _Undefined,
    bool? isActive,
    DateTime? creationDate,
    Object? inactiveSince = _Undefined,
    int? projectId,
    Object? project = _Undefined,
  }) {
    return FigmaAction(
      id: id is int? ? id : this.id,
      action: action ?? this.action,
      huDataId: huDataId ?? this.huDataId,
      huData: huData is _i2.HuData? ? huData : this.huData?.copyWith(),
      isActive: isActive ?? this.isActive,
      creationDate: creationDate ?? this.creationDate,
      inactiveSince:
          inactiveSince is DateTime? ? inactiveSince : this.inactiveSince,
      projectId: projectId ?? this.projectId,
      project:
          project is _i2.TaigaProject? ? project : this.project?.copyWith(),
    );
  }
}

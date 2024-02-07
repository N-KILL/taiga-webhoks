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

abstract class HuData extends _i1.SerializableEntity {
  HuData._({
    this.id,
    required this.name,
    required this.refNum,
    required this.status,
    required this.readyForDev,
    this.sprintId,
    this.sprint,
    this.statusCardId,
    this.statusCard,
    required this.projectId,
    this.project,
  });

  factory HuData({
    int? id,
    required String name,
    required int refNum,
    required _i2.HuStatus status,
    required bool readyForDev,
    int? sprintId,
    _i2.Sprint? sprint,
    int? statusCardId,
    _i2.StatusCard? statusCard,
    required int projectId,
    _i2.TaigaProject? project,
  }) = _HuDataImpl;

  factory HuData.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return HuData(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      refNum:
          serializationManager.deserialize<int>(jsonSerialization['refNum']),
      status: serializationManager
          .deserialize<_i2.HuStatus>(jsonSerialization['status']),
      readyForDev: serializationManager
          .deserialize<bool>(jsonSerialization['readyForDev']),
      sprintId:
          serializationManager.deserialize<int?>(jsonSerialization['sprintId']),
      sprint: serializationManager
          .deserialize<_i2.Sprint?>(jsonSerialization['sprint']),
      statusCardId: serializationManager
          .deserialize<int?>(jsonSerialization['statusCardId']),
      statusCard: serializationManager
          .deserialize<_i2.StatusCard?>(jsonSerialization['statusCard']),
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

  String name;

  int refNum;

  _i2.HuStatus status;

  bool readyForDev;

  int? sprintId;

  _i2.Sprint? sprint;

  int? statusCardId;

  _i2.StatusCard? statusCard;

  int projectId;

  _i2.TaigaProject? project;

  HuData copyWith({
    int? id,
    String? name,
    int? refNum,
    _i2.HuStatus? status,
    bool? readyForDev,
    int? sprintId,
    _i2.Sprint? sprint,
    int? statusCardId,
    _i2.StatusCard? statusCard,
    int? projectId,
    _i2.TaigaProject? project,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'refNum': refNum,
      'status': status.toJson(),
      'readyForDev': readyForDev,
      if (sprintId != null) 'sprintId': sprintId,
      if (sprint != null) 'sprint': sprint?.toJson(),
      if (statusCardId != null) 'statusCardId': statusCardId,
      if (statusCard != null) 'statusCard': statusCard?.toJson(),
      'projectId': projectId,
      if (project != null) 'project': project?.toJson(),
    };
  }
}

class _Undefined {}

class _HuDataImpl extends HuData {
  _HuDataImpl({
    int? id,
    required String name,
    required int refNum,
    required _i2.HuStatus status,
    required bool readyForDev,
    int? sprintId,
    _i2.Sprint? sprint,
    int? statusCardId,
    _i2.StatusCard? statusCard,
    required int projectId,
    _i2.TaigaProject? project,
  }) : super._(
          id: id,
          name: name,
          refNum: refNum,
          status: status,
          readyForDev: readyForDev,
          sprintId: sprintId,
          sprint: sprint,
          statusCardId: statusCardId,
          statusCard: statusCard,
          projectId: projectId,
          project: project,
        );

  @override
  HuData copyWith({
    Object? id = _Undefined,
    String? name,
    int? refNum,
    _i2.HuStatus? status,
    bool? readyForDev,
    Object? sprintId = _Undefined,
    Object? sprint = _Undefined,
    Object? statusCardId = _Undefined,
    Object? statusCard = _Undefined,
    int? projectId,
    Object? project = _Undefined,
  }) {
    return HuData(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      refNum: refNum ?? this.refNum,
      status: status ?? this.status,
      readyForDev: readyForDev ?? this.readyForDev,
      sprintId: sprintId is int? ? sprintId : this.sprintId,
      sprint: sprint is _i2.Sprint? ? sprint : this.sprint?.copyWith(),
      statusCardId: statusCardId is int? ? statusCardId : this.statusCardId,
      statusCard: statusCard is _i2.StatusCard?
          ? statusCard
          : this.statusCard?.copyWith(),
      projectId: projectId ?? this.projectId,
      project:
          project is _i2.TaigaProject? ? project : this.project?.copyWith(),
    );
  }
}

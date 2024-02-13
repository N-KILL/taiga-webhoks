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
    required this.lastStatusUpdate,
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
    required DateTime lastStatusUpdate,
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
      lastStatusUpdate: serializationManager
          .deserialize<DateTime>(jsonSerialization['lastStatusUpdate']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// This is the name of the HU
  String name;

  /// This is the ref num used by Taiga to identify the HU
  int refNum;

  /// This is the status of the HU
  _i2.HuStatus status;

  /// If the status is 'Lista para desarrollo', will be marked as
  /// ready for dev based on this value
  bool readyForDev;

  int? sprintId;

  /// This is the Sprint Card related to this HU
  _i2.Sprint? sprint;

  int? statusCardId;

  /// This is the Status Card related to this HU
  _i2.StatusCard? statusCard;

  int projectId;

  /// This is the Taiga project related to the HU
  _i2.TaigaProject? project;

  /// This is the last time an status update was received
  /// This only consider few status, if you look at the endpoints who
  /// interact with this value, you will see they are filtering the
  /// status to get the values for the Status Card Details. That means
  /// this will be modified based on the next kanban movements
  ///
  /// From: 'Any' to 'Aprobandose' = Preparation value
  ///
  /// From: 'Aprobandose' to 'Lista para desarrollar' = Approbation value
  ///
  /// From: 'Desarollandose' to 'Testeandose' = Development value
  ///
  /// From: Aprobandose to Lista para desarrollar = Approbation value
  DateTime lastStatusUpdate;

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
    DateTime? lastStatusUpdate,
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
      'lastStatusUpdate': lastStatusUpdate.toJson(),
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
    required DateTime lastStatusUpdate,
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
          lastStatusUpdate: lastStatusUpdate,
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
    DateTime? lastStatusUpdate,
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
      lastStatusUpdate: lastStatusUpdate ?? this.lastStatusUpdate,
    );
  }
}

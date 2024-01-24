/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class TaigaJob extends _i1.SerializableEntity {
  TaigaJob._({
    this.id,
    required this.type,
    required this.title,
    required this.description,
    required this.status,
    required this.taigaRefNumber,
    required this.projectId,
  });

  factory TaigaJob({
    int? id,
    required String type,
    required String title,
    required String description,
    required String status,
    required int taigaRefNumber,
    required int projectId,
  }) = _TaigaJobImpl;

  factory TaigaJob.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaJob(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      taigaRefNumber: serializationManager
          .deserialize<int>(jsonSerialization['taigaRefNumber']),
      projectId:
          serializationManager.deserialize<int>(jsonSerialization['projectId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// Task, Issue, Epic, UserStory
  String type;

  /// Name of the Job
  String title;

  /// Description of the Job
  String description;

  /// Status of the job
  String status;

  /// Reference number of the job on taiga
  int taigaRefNumber;

  /// Id of the project who own the job
  int projectId;

  TaigaJob copyWith({
    int? id,
    String? type,
    String? title,
    String? description,
    String? status,
    int? taigaRefNumber,
    int? projectId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'type': type,
      'title': title,
      'description': description,
      'status': status,
      'taigaRefNumber': taigaRefNumber,
      'projectId': projectId,
    };
  }
}

class _Undefined {}

class _TaigaJobImpl extends TaigaJob {
  _TaigaJobImpl({
    int? id,
    required String type,
    required String title,
    required String description,
    required String status,
    required int taigaRefNumber,
    required int projectId,
  }) : super._(
          id: id,
          type: type,
          title: title,
          description: description,
          status: status,
          taigaRefNumber: taigaRefNumber,
          projectId: projectId,
        );

  @override
  TaigaJob copyWith({
    Object? id = _Undefined,
    String? type,
    String? title,
    String? description,
    String? status,
    int? taigaRefNumber,
    int? projectId,
  }) {
    return TaigaJob(
      id: id is int? ? id : this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
      taigaRefNumber: taigaRefNumber ?? this.taigaRefNumber,
      projectId: projectId ?? this.projectId,
    );
  }
}

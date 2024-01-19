/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../protocol.dart' as _i2;

/// This class is for storage the all the updates made into a Job
/// having direct relation to the TaigaJob table, every time a change
/// is made in one job, this table will receive information about what
/// change was, and save the details
/// (Example: Name change from: 'A' to 'B')
///
/// and what was the time of the change, on epoch format.
/// https://en.wikipedia.org/wiki/Epoch_(computing)
abstract class TaigaJobUpdates extends _i1.SerializableEntity {
  TaigaJobUpdates._({
    this.id,
    required this.jobIdId,
    this.jobId,
    required this.status,
    required this.details,
  });

  factory TaigaJobUpdates({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String status,
    required String details,
  }) = _TaigaJobUpdatesImpl;

  factory TaigaJobUpdates.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaJobUpdates(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      jobIdId:
          serializationManager.deserialize<int>(jsonSerialization['jobIdId']),
      jobId: serializationManager
          .deserialize<_i2.TaigaJob?>(jsonSerialization['jobId']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      details: serializationManager
          .deserialize<String>(jsonSerialization['details']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int jobIdId;

  _i2.TaigaJob? jobId;

  String status;

  String details;

  TaigaJobUpdates copyWith({
    int? id,
    int? jobIdId,
    _i2.TaigaJob? jobId,
    String? status,
    String? details,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      if (jobId != null) 'jobId': jobId,
      'status': status,
      'details': details,
    };
  }
}

class _Undefined {}

class _TaigaJobUpdatesImpl extends TaigaJobUpdates {
  _TaigaJobUpdatesImpl({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String status,
    required String details,
  }) : super._(
          id: id,
          jobIdId: jobIdId,
          jobId: jobId,
          status: status,
          details: details,
        );

  @override
  TaigaJobUpdates copyWith({
    Object? id = _Undefined,
    int? jobIdId,
    Object? jobId = _Undefined,
    String? status,
    String? details,
  }) {
    return TaigaJobUpdates(
      id: id is int? ? id : this.id,
      jobIdId: jobIdId ?? this.jobIdId,
      jobId: jobId is _i2.TaigaJob? ? jobId : this.jobId?.copyWith(),
      status: status ?? this.status,
      details: details ?? this.details,
    );
  }
}

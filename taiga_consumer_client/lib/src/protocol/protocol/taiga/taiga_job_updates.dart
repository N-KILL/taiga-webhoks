/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

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
    required this.jobId,
    required this.type,
    required this.status,
    required this.details,
    required this.dateTimeEpoch,
    this.commentId,
  });

  factory TaigaJobUpdates({
    int? id,
    required int jobId,
    required String type,
    required String status,
    required String details,
    required int dateTimeEpoch,
    int? commentId,
  }) = _TaigaJobUpdatesImpl;

  factory TaigaJobUpdates.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaJobUpdates(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      jobId: serializationManager.deserialize<int>(jsonSerialization['jobId']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      details: serializationManager
          .deserialize<String>(jsonSerialization['details']),
      dateTimeEpoch: serializationManager
          .deserialize<int>(jsonSerialization['dateTimeEpoch']),
      commentId: serializationManager
          .deserialize<int?>(jsonSerialization['commentId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// Task, Issue, Epic, UserStory, related from another table
  int jobId;

  /// Type is used to identify if a new job, a new comment, a change
  /// made into a job, or a deletion
  String type;

  /// Status of the job
  String status;

  /// Details about the change made on the Job
  String details;

  /// DateTime on epoch format stored as Int value
  /// Note: To storage epoch serverpod, only support int values.
  /// PGSQL format, will be integer, and do not support longer characters
  /// So you have to divide by 1000, getting epoch on seconds format, not milliseconds
  int dateTimeEpoch;

  /// Commentary related to this update, related from another table
  int? commentId;

  TaigaJobUpdates copyWith({
    int? id,
    int? jobId,
    String? type,
    String? status,
    String? details,
    int? dateTimeEpoch,
    int? commentId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'jobId': jobId,
      'type': type,
      'status': status,
      'details': details,
      'dateTimeEpoch': dateTimeEpoch,
      if (commentId != null) 'commentId': commentId,
    };
  }
}

class _Undefined {}

class _TaigaJobUpdatesImpl extends TaigaJobUpdates {
  _TaigaJobUpdatesImpl({
    int? id,
    required int jobId,
    required String type,
    required String status,
    required String details,
    required int dateTimeEpoch,
    int? commentId,
  }) : super._(
          id: id,
          jobId: jobId,
          type: type,
          status: status,
          details: details,
          dateTimeEpoch: dateTimeEpoch,
          commentId: commentId,
        );

  @override
  TaigaJobUpdates copyWith({
    Object? id = _Undefined,
    int? jobId,
    String? type,
    String? status,
    String? details,
    int? dateTimeEpoch,
    Object? commentId = _Undefined,
  }) {
    return TaigaJobUpdates(
      id: id is int? ? id : this.id,
      jobId: jobId ?? this.jobId,
      type: type ?? this.type,
      status: status ?? this.status,
      details: details ?? this.details,
      dateTimeEpoch: dateTimeEpoch ?? this.dateTimeEpoch,
      commentId: commentId is int? ? commentId : this.commentId,
    );
  }
}

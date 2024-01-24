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

/// This class is for storage the all the commentaries made into a Job on Taiga
/// Have direct relation to the TaigaJob table
abstract class TaigaJobCommentaries extends _i1.SerializableEntity {
  TaigaJobCommentaries._({
    this.id,
    required this.jobIdId,
    this.jobId,
    required this.details,
    required this.dateTime,
    this.userId,
  });

  factory TaigaJobCommentaries({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String details,
    required DateTime dateTime,
    int? userId,
  }) = _TaigaJobCommentariesImpl;

  factory TaigaJobCommentaries.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaJobCommentaries(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      jobIdId:
          serializationManager.deserialize<int>(jsonSerialization['jobIdId']),
      jobId: serializationManager
          .deserialize<_i2.TaigaJob?>(jsonSerialization['jobId']),
      details: serializationManager
          .deserialize<String>(jsonSerialization['details']),
      dateTime: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateTime']),
      userId:
          serializationManager.deserialize<int?>(jsonSerialization['userId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int jobIdId;

  /// Task, Issue, Epic, UserStory
  _i2.TaigaJob? jobId;

  /// Details about the change made on the Job
  String details;

  ///# Date of creation of the comment
  DateTime dateTime;

  /// UserId is the id of the user, in this case is pointing into the TaigaId,
  int? userId;

  TaigaJobCommentaries copyWith({
    int? id,
    int? jobIdId,
    _i2.TaigaJob? jobId,
    String? details,
    DateTime? dateTime,
    int? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      if (jobId != null) 'jobId': jobId,
      'details': details,
      'dateTime': dateTime,
      if (userId != null) 'userId': userId,
    };
  }
}

class _Undefined {}

class _TaigaJobCommentariesImpl extends TaigaJobCommentaries {
  _TaigaJobCommentariesImpl({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String details,
    required DateTime dateTime,
    int? userId,
  }) : super._(
          id: id,
          jobIdId: jobIdId,
          jobId: jobId,
          details: details,
          dateTime: dateTime,
          userId: userId,
        );

  @override
  TaigaJobCommentaries copyWith({
    Object? id = _Undefined,
    int? jobIdId,
    Object? jobId = _Undefined,
    String? details,
    DateTime? dateTime,
    Object? userId = _Undefined,
  }) {
    return TaigaJobCommentaries(
      id: id is int? ? id : this.id,
      jobIdId: jobIdId ?? this.jobIdId,
      jobId: jobId is _i2.TaigaJob? ? jobId : this.jobId?.copyWith(),
      details: details ?? this.details,
      dateTime: dateTime ?? this.dateTime,
      userId: userId is int? ? userId : this.userId,
    );
  }
}

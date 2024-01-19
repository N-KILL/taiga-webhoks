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

/// This class is for storage the all the commentaries made into a Job on Taiga
/// Have direct relation to the TaigaJob table
abstract class TaigaJobCommentaries extends _i1.SerializableEntity {
  TaigaJobCommentaries._({
    this.id,
    required this.jobIdId,
    this.jobId,
    required this.details,
    required this.userIdId,
    this.userId,
  });

  factory TaigaJobCommentaries({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String details,
    required int userIdId,
    _i2.User? userId,
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
      userIdId:
          serializationManager.deserialize<int>(jsonSerialization['userIdId']),
      userId: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['userId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int jobIdId;

  _i2.TaigaJob? jobId;

  String details;

  int userIdId;

  _i2.User? userId;

  TaigaJobCommentaries copyWith({
    int? id,
    int? jobIdId,
    _i2.TaigaJob? jobId,
    String? details,
    int? userIdId,
    _i2.User? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      if (jobId != null) 'jobId': jobId,
      'details': details,
      'userIdId': userIdId,
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
    required int userIdId,
    _i2.User? userId,
  }) : super._(
          id: id,
          jobIdId: jobIdId,
          jobId: jobId,
          details: details,
          userIdId: userIdId,
          userId: userId,
        );

  @override
  TaigaJobCommentaries copyWith({
    Object? id = _Undefined,
    int? jobIdId,
    Object? jobId = _Undefined,
    String? details,
    int? userIdId,
    Object? userId = _Undefined,
  }) {
    return TaigaJobCommentaries(
      id: id is int? ? id : this.id,
      jobIdId: jobIdId ?? this.jobIdId,
      jobId: jobId is _i2.TaigaJob? ? jobId : this.jobId?.copyWith(),
      details: details ?? this.details,
      userIdId: userIdId ?? this.userIdId,
      userId: userId is _i2.User? ? userId : this.userId?.copyWith(),
    );
  }
}

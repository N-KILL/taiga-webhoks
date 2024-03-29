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

abstract class StatusCardDetails extends _i1.SerializableEntity {
  StatusCardDetails._({
    this.id,
    this.byUserId,
    this.byUser,
    required this.date,
  });

  factory StatusCardDetails({
    int? id,
    int? byUserId,
    _i2.User? byUser,
    required String date,
  }) = _StatusCardDetailsImpl;

  factory StatusCardDetails.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return StatusCardDetails(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      byUserId:
          serializationManager.deserialize<int?>(jsonSerialization['byUserId']),
      byUser: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['byUser']),
      date: serializationManager.deserialize<String>(jsonSerialization['date']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? byUserId;

  _i2.User? byUser;

  String date;

  StatusCardDetails copyWith({
    int? id,
    int? byUserId,
    _i2.User? byUser,
    String? date,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (byUserId != null) 'byUserId': byUserId,
      if (byUser != null) 'byUser': byUser?.toJson(),
      'date': date,
    };
  }
}

class _Undefined {}

class _StatusCardDetailsImpl extends StatusCardDetails {
  _StatusCardDetailsImpl({
    int? id,
    int? byUserId,
    _i2.User? byUser,
    required String date,
  }) : super._(
          id: id,
          byUserId: byUserId,
          byUser: byUser,
          date: date,
        );

  @override
  StatusCardDetails copyWith({
    Object? id = _Undefined,
    Object? byUserId = _Undefined,
    Object? byUser = _Undefined,
    String? date,
  }) {
    return StatusCardDetails(
      id: id is int? ? id : this.id,
      byUserId: byUserId is int? ? byUserId : this.byUserId,
      byUser: byUser is _i2.User? ? byUser : this.byUser?.copyWith(),
      date: date ?? this.date,
    );
  }
}

/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class User extends _i1.SerializableEntity {
  User._({
    this.id,
    required this.username,
    required this.taigaId,
    required this.gitHubId,
    required this.gitLabId,
  });

  factory User({
    int? id,
    required String username,
    required int taigaId,
    required int gitHubId,
    required int gitLabId,
  }) = _UserImpl;

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      username: serializationManager
          .deserialize<String>(jsonSerialization['username']),
      taigaId:
          serializationManager.deserialize<int>(jsonSerialization['taigaId']),
      gitHubId:
          serializationManager.deserialize<int>(jsonSerialization['gitHubId']),
      gitLabId:
          serializationManager.deserialize<int>(jsonSerialization['gitLabId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String username;

  int taigaId;

  int gitHubId;

  int gitLabId;

  User copyWith({
    int? id,
    String? username,
    int? taigaId,
    int? gitHubId,
    int? gitLabId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'username': username,
      'taigaId': taigaId,
      'gitHubId': gitHubId,
      'gitLabId': gitLabId,
    };
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String username,
    required int taigaId,
    required int gitHubId,
    required int gitLabId,
  }) : super._(
          id: id,
          username: username,
          taigaId: taigaId,
          gitHubId: gitHubId,
          gitLabId: gitLabId,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    String? username,
    int? taigaId,
    int? gitHubId,
    int? gitLabId,
  }) {
    return User(
      id: id is int? ? id : this.id,
      username: username ?? this.username,
      taigaId: taigaId ?? this.taigaId,
      gitHubId: gitHubId ?? this.gitHubId,
      gitLabId: gitLabId ?? this.gitLabId,
    );
  }
}

/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Sprint extends _i1.SerializableEntity {
  Sprint._({
    this.id,
    required this.name,
    required this.taigaId,
  });

  factory Sprint({
    int? id,
    required String name,
    required int taigaId,
  }) = _SprintImpl;

  factory Sprint.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Sprint(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      taigaId:
          serializationManager.deserialize<int>(jsonSerialization['taigaId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int taigaId;

  Sprint copyWith({
    int? id,
    String? name,
    int? taigaId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'taigaId': taigaId,
    };
  }
}

class _Undefined {}

class _SprintImpl extends Sprint {
  _SprintImpl({
    int? id,
    required String name,
    required int taigaId,
  }) : super._(
          id: id,
          name: name,
          taigaId: taigaId,
        );

  @override
  Sprint copyWith({
    Object? id = _Undefined,
    String? name,
    int? taigaId,
  }) {
    return Sprint(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      taigaId: taigaId ?? this.taigaId,
    );
  }
}

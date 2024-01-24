/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class TaigaProject extends _i1.SerializableEntity {
  TaigaProject._({
    this.id,
    required this.title,
    required this.taigaId,
  });

  factory TaigaProject({
    int? id,
    required String title,
    required int taigaId,
  }) = _TaigaProjectImpl;

  factory TaigaProject.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaProject(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      taigaId:
          serializationManager.deserialize<int>(jsonSerialization['taigaId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  int taigaId;

  TaigaProject copyWith({
    int? id,
    String? title,
    int? taigaId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'taigaId': taigaId,
    };
  }
}

class _Undefined {}

class _TaigaProjectImpl extends TaigaProject {
  _TaigaProjectImpl({
    int? id,
    required String title,
    required int taigaId,
  }) : super._(
          id: id,
          title: title,
          taigaId: taigaId,
        );

  @override
  TaigaProject copyWith({
    Object? id = _Undefined,
    String? title,
    int? taigaId,
  }) {
    return TaigaProject(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      taigaId: taigaId ?? this.taigaId,
    );
  }
}

/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class AmountOfDays extends _i1.SerializableEntity {
  AmountOfDays._({
    this.id,
    required this.preparation,
    required this.development,
    required this.approbation,
    required this.finalApprobation,
    required this.quality,
  });

  factory AmountOfDays({
    int? id,
    required String preparation,
    required String development,
    required String approbation,
    required String finalApprobation,
    required String quality,
  }) = _AmountOfDaysImpl;

  factory AmountOfDays.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return AmountOfDays(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      preparation: serializationManager
          .deserialize<String>(jsonSerialization['preparation']),
      development: serializationManager
          .deserialize<String>(jsonSerialization['development']),
      approbation: serializationManager
          .deserialize<String>(jsonSerialization['approbation']),
      finalApprobation: serializationManager
          .deserialize<String>(jsonSerialization['finalApprobation']),
      quality: serializationManager
          .deserialize<String>(jsonSerialization['quality']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String preparation;

  String development;

  String approbation;

  String finalApprobation;

  String quality;

  AmountOfDays copyWith({
    int? id,
    String? preparation,
    String? development,
    String? approbation,
    String? finalApprobation,
    String? quality,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'preparation': preparation,
      'development': development,
      'approbation': approbation,
      'finalApprobation': finalApprobation,
      'quality': quality,
    };
  }
}

class _Undefined {}

class _AmountOfDaysImpl extends AmountOfDays {
  _AmountOfDaysImpl({
    int? id,
    required String preparation,
    required String development,
    required String approbation,
    required String finalApprobation,
    required String quality,
  }) : super._(
          id: id,
          preparation: preparation,
          development: development,
          approbation: approbation,
          finalApprobation: finalApprobation,
          quality: quality,
        );

  @override
  AmountOfDays copyWith({
    Object? id = _Undefined,
    String? preparation,
    String? development,
    String? approbation,
    String? finalApprobation,
    String? quality,
  }) {
    return AmountOfDays(
      id: id is int? ? id : this.id,
      preparation: preparation ?? this.preparation,
      development: development ?? this.development,
      approbation: approbation ?? this.approbation,
      finalApprobation: finalApprobation ?? this.finalApprobation,
      quality: quality ?? this.quality,
    );
  }
}

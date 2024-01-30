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

abstract class StatusCard extends _i1.SerializableEntity {
  StatusCard._({
    this.id,
    required this.approvedId,
    this.approved,
    required this.developmentId,
    this.development,
    required this.internalTestId,
    this.internalTest,
    required this.externalTestId,
    this.externalTest,
    required this.amountOfDaysId,
    this.amountOfDays,
  });

  factory StatusCard({
    int? id,
    required int approvedId,
    _i2.User? approved,
    required int developmentId,
    _i2.User? development,
    required int internalTestId,
    _i2.User? internalTest,
    required int externalTestId,
    _i2.User? externalTest,
    required int amountOfDaysId,
    _i2.AmountOfDays? amountOfDays,
  }) = _StatusCardImpl;

  factory StatusCard.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return StatusCard(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      approvedId: serializationManager
          .deserialize<int>(jsonSerialization['approvedId']),
      approved: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['approved']),
      developmentId: serializationManager
          .deserialize<int>(jsonSerialization['developmentId']),
      development: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['development']),
      internalTestId: serializationManager
          .deserialize<int>(jsonSerialization['internalTestId']),
      internalTest: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['internalTest']),
      externalTestId: serializationManager
          .deserialize<int>(jsonSerialization['externalTestId']),
      externalTest: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['externalTest']),
      amountOfDaysId: serializationManager
          .deserialize<int>(jsonSerialization['amountOfDaysId']),
      amountOfDays: serializationManager
          .deserialize<_i2.AmountOfDays?>(jsonSerialization['amountOfDays']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int approvedId;

  _i2.User? approved;

  int developmentId;

  _i2.User? development;

  int internalTestId;

  _i2.User? internalTest;

  int externalTestId;

  _i2.User? externalTest;

  int amountOfDaysId;

  _i2.AmountOfDays? amountOfDays;

  StatusCard copyWith({
    int? id,
    int? approvedId,
    _i2.User? approved,
    int? developmentId,
    _i2.User? development,
    int? internalTestId,
    _i2.User? internalTest,
    int? externalTestId,
    _i2.User? externalTest,
    int? amountOfDaysId,
    _i2.AmountOfDays? amountOfDays,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'approvedId': approvedId,
      if (approved != null) 'approved': approved,
      'developmentId': developmentId,
      if (development != null) 'development': development,
      'internalTestId': internalTestId,
      if (internalTest != null) 'internalTest': internalTest,
      'externalTestId': externalTestId,
      if (externalTest != null) 'externalTest': externalTest,
      'amountOfDaysId': amountOfDaysId,
      if (amountOfDays != null) 'amountOfDays': amountOfDays,
    };
  }
}

class _Undefined {}

class _StatusCardImpl extends StatusCard {
  _StatusCardImpl({
    int? id,
    required int approvedId,
    _i2.User? approved,
    required int developmentId,
    _i2.User? development,
    required int internalTestId,
    _i2.User? internalTest,
    required int externalTestId,
    _i2.User? externalTest,
    required int amountOfDaysId,
    _i2.AmountOfDays? amountOfDays,
  }) : super._(
          id: id,
          approvedId: approvedId,
          approved: approved,
          developmentId: developmentId,
          development: development,
          internalTestId: internalTestId,
          internalTest: internalTest,
          externalTestId: externalTestId,
          externalTest: externalTest,
          amountOfDaysId: amountOfDaysId,
          amountOfDays: amountOfDays,
        );

  @override
  StatusCard copyWith({
    Object? id = _Undefined,
    int? approvedId,
    Object? approved = _Undefined,
    int? developmentId,
    Object? development = _Undefined,
    int? internalTestId,
    Object? internalTest = _Undefined,
    int? externalTestId,
    Object? externalTest = _Undefined,
    int? amountOfDaysId,
    Object? amountOfDays = _Undefined,
  }) {
    return StatusCard(
      id: id is int? ? id : this.id,
      approvedId: approvedId ?? this.approvedId,
      approved: approved is _i2.User? ? approved : this.approved?.copyWith(),
      developmentId: developmentId ?? this.developmentId,
      development:
          development is _i2.User? ? development : this.development?.copyWith(),
      internalTestId: internalTestId ?? this.internalTestId,
      internalTest: internalTest is _i2.User?
          ? internalTest
          : this.internalTest?.copyWith(),
      externalTestId: externalTestId ?? this.externalTestId,
      externalTest: externalTest is _i2.User?
          ? externalTest
          : this.externalTest?.copyWith(),
      amountOfDaysId: amountOfDaysId ?? this.amountOfDaysId,
      amountOfDays: amountOfDays is _i2.AmountOfDays?
          ? amountOfDays
          : this.amountOfDays?.copyWith(),
    );
  }
}

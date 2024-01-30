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

abstract class FigmaAction extends _i1.SerializableEntity {
  FigmaAction._({
    this.id,
    required this.action,
    required this.huDataId,
    this.huData,
  });

  factory FigmaAction({
    int? id,
    required String action,
    required int huDataId,
    _i2.HuData? huData,
  }) = _FigmaActionImpl;

  factory FigmaAction.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FigmaAction(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      action:
          serializationManager.deserialize<String>(jsonSerialization['action']),
      huDataId:
          serializationManager.deserialize<int>(jsonSerialization['huDataId']),
      huData: serializationManager
          .deserialize<_i2.HuData?>(jsonSerialization['huData']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String action;

  int huDataId;

  _i2.HuData? huData;

  FigmaAction copyWith({
    int? id,
    String? action,
    int? huDataId,
    _i2.HuData? huData,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'action': action,
      'huDataId': huDataId,
      if (huData != null) 'huData': huData,
    };
  }
}

class _Undefined {}

class _FigmaActionImpl extends FigmaAction {
  _FigmaActionImpl({
    int? id,
    required String action,
    required int huDataId,
    _i2.HuData? huData,
  }) : super._(
          id: id,
          action: action,
          huDataId: huDataId,
          huData: huData,
        );

  @override
  FigmaAction copyWith({
    Object? id = _Undefined,
    String? action,
    int? huDataId,
    Object? huData = _Undefined,
  }) {
    return FigmaAction(
      id: id is int? ? id : this.id,
      action: action ?? this.action,
      huDataId: huDataId ?? this.huDataId,
      huData: huData is _i2.HuData? ? huData : this.huData?.copyWith(),
    );
  }
}

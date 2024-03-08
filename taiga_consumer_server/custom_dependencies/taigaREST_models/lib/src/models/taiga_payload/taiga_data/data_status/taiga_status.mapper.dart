// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'taiga_status.dart';

class TaigaStatusMapper extends ClassMapperBase<TaigaStatus> {
  TaigaStatusMapper._();

  static TaigaStatusMapper? _instance;
  static TaigaStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaStatus';

  static int _$statusId(TaigaStatus v) => v.statusId;
  static const Field<TaigaStatus, int> _f$statusId =
      Field('statusId', _$statusId, key: 'id');
  static String _$statusName(TaigaStatus v) => v.statusName;
  static const Field<TaigaStatus, String> _f$statusName =
      Field('statusName', _$statusName, key: 'name');
  static String _$statusSlug(TaigaStatus v) => v.statusSlug;
  static const Field<TaigaStatus, String> _f$statusSlug =
      Field('statusSlug', _$statusSlug, key: 'slug');
  static String _$statusColor(TaigaStatus v) => v.statusColor;
  static const Field<TaigaStatus, String> _f$statusColor =
      Field('statusColor', _$statusColor, key: 'color');
  static bool _$isClosedStatus(TaigaStatus v) => v.isClosedStatus;
  static const Field<TaigaStatus, bool> _f$isClosedStatus =
      Field('isClosedStatus', _$isClosedStatus, key: 'is_closed');

  @override
  final Map<Symbol, Field<TaigaStatus, dynamic>> fields = const {
    #statusId: _f$statusId,
    #statusName: _f$statusName,
    #statusSlug: _f$statusSlug,
    #statusColor: _f$statusColor,
    #isClosedStatus: _f$isClosedStatus,
  };

  static TaigaStatus _instantiate(DecodingData data) {
    return TaigaStatus(
        statusId: data.dec(_f$statusId),
        statusName: data.dec(_f$statusName),
        statusSlug: data.dec(_f$statusSlug),
        statusColor: data.dec(_f$statusColor),
        isClosedStatus: data.dec(_f$isClosedStatus));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaStatus>(map);
  }

  static TaigaStatus fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaStatus>(json);
  }
}

mixin TaigaStatusMappable {
  String toJson() {
    return TaigaStatusMapper.ensureInitialized()
        .encodeJson<TaigaStatus>(this as TaigaStatus);
  }

  Map<String, dynamic> toMap() {
    return TaigaStatusMapper.ensureInitialized()
        .encodeMap<TaigaStatus>(this as TaigaStatus);
  }

  TaigaStatusCopyWith<TaigaStatus, TaigaStatus, TaigaStatus> get copyWith =>
      _TaigaStatusCopyWithImpl(this as TaigaStatus, $identity, $identity);
  @override
  String toString() {
    return TaigaStatusMapper.ensureInitialized()
        .stringifyValue(this as TaigaStatus);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaStatusMapper.ensureInitialized()
                .isValueEqual(this as TaigaStatus, other));
  }

  @override
  int get hashCode {
    return TaigaStatusMapper.ensureInitialized().hashValue(this as TaigaStatus);
  }
}

extension TaigaStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaStatus, $Out> {
  TaigaStatusCopyWith<$R, TaigaStatus, $Out> get $asTaigaStatus =>
      $base.as((v, t, t2) => _TaigaStatusCopyWithImpl(v, t, t2));
}

abstract class TaigaStatusCopyWith<$R, $In extends TaigaStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? statusId,
      String? statusName,
      String? statusSlug,
      String? statusColor,
      bool? isClosedStatus});
  TaigaStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaStatus, $Out>
    implements TaigaStatusCopyWith<$R, TaigaStatus, $Out> {
  _TaigaStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaStatus> $mapper =
      TaigaStatusMapper.ensureInitialized();
  @override
  $R call(
          {int? statusId,
          String? statusName,
          String? statusSlug,
          String? statusColor,
          bool? isClosedStatus}) =>
      $apply(FieldCopyWithData({
        if (statusId != null) #statusId: statusId,
        if (statusName != null) #statusName: statusName,
        if (statusSlug != null) #statusSlug: statusSlug,
        if (statusColor != null) #statusColor: statusColor,
        if (isClosedStatus != null) #isClosedStatus: isClosedStatus
      }));
  @override
  TaigaStatus $make(CopyWithData data) => TaigaStatus(
      statusId: data.get(#statusId, or: $value.statusId),
      statusName: data.get(#statusName, or: $value.statusName),
      statusSlug: data.get(#statusSlug, or: $value.statusSlug),
      statusColor: data.get(#statusColor, or: $value.statusColor),
      isClosedStatus: data.get(#isClosedStatus, or: $value.isClosedStatus));

  @override
  TaigaStatusCopyWith<$R2, TaigaStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaStatusCopyWithImpl($value, $cast, t);
}

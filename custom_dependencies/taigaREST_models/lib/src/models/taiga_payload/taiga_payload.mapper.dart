// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'taiga_payload.dart';

class TaigaPayloadMapper extends ClassMapperBase<TaigaPayload> {
  TaigaPayloadMapper._();

  static TaigaPayloadMapper? _instance;
  static TaigaPayloadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaPayloadMapper._());
      TaigaUserMapper.ensureInitialized();
      TaigaChangeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaPayload';

  static String _$actionType(TaigaPayload v) => v.actionType;
  static const Field<TaigaPayload, String> _f$actionType =
      Field('actionType', _$actionType, key: 'action');
  static String _$jobType(TaigaPayload v) => v.jobType;
  static const Field<TaigaPayload, String> _f$jobType =
      Field('jobType', _$jobType, key: 'type');
  static TaigaUser _$performer(TaigaPayload v) => v.performer;
  static const Field<TaigaPayload, TaigaUser> _f$performer =
      Field('performer', _$performer, key: 'by');
  static DateTime _$date(TaigaPayload v) => v.date;
  static const Field<TaigaPayload, DateTime> _f$date = Field('date', _$date);
  static dynamic _$data(TaigaPayload v) => v.data;
  static const Field<TaigaPayload, dynamic> _f$data = Field('data', _$data);
  static TaigaChange? _$change(TaigaPayload v) => v.change;
  static const Field<TaigaPayload, TaigaChange> _f$change =
      Field('change', _$change);

  @override
  final Map<Symbol, Field<TaigaPayload, dynamic>> fields = const {
    #actionType: _f$actionType,
    #jobType: _f$jobType,
    #performer: _f$performer,
    #date: _f$date,
    #data: _f$data,
    #change: _f$change,
  };

  static TaigaPayload _instantiate(DecodingData data) {
    return TaigaPayload(
        actionType: data.dec(_f$actionType),
        jobType: data.dec(_f$jobType),
        performer: data.dec(_f$performer),
        date: data.dec(_f$date),
        data: data.dec(_f$data),
        change: data.dec(_f$change));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaPayload fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaPayload>(map);
  }

  static TaigaPayload fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaPayload>(json);
  }
}

mixin TaigaPayloadMappable {
  String toJson() {
    return TaigaPayloadMapper.ensureInitialized()
        .encodeJson<TaigaPayload>(this as TaigaPayload);
  }

  Map<String, dynamic> toMap() {
    return TaigaPayloadMapper.ensureInitialized()
        .encodeMap<TaigaPayload>(this as TaigaPayload);
  }

  TaigaPayloadCopyWith<TaigaPayload, TaigaPayload, TaigaPayload> get copyWith =>
      _TaigaPayloadCopyWithImpl(this as TaigaPayload, $identity, $identity);
  @override
  String toString() {
    return TaigaPayloadMapper.ensureInitialized()
        .stringifyValue(this as TaigaPayload);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaPayloadMapper.ensureInitialized()
                .isValueEqual(this as TaigaPayload, other));
  }

  @override
  int get hashCode {
    return TaigaPayloadMapper.ensureInitialized()
        .hashValue(this as TaigaPayload);
  }
}

extension TaigaPayloadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaPayload, $Out> {
  TaigaPayloadCopyWith<$R, TaigaPayload, $Out> get $asTaigaPayload =>
      $base.as((v, t, t2) => _TaigaPayloadCopyWithImpl(v, t, t2));
}

abstract class TaigaPayloadCopyWith<$R, $In extends TaigaPayload, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get performer;
  TaigaChangeCopyWith<$R, TaigaChange, TaigaChange>? get change;
  $R call(
      {String? actionType,
      String? jobType,
      TaigaUser? performer,
      DateTime? date,
      dynamic data,
      TaigaChange? change});
  TaigaPayloadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaPayloadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaPayload, $Out>
    implements TaigaPayloadCopyWith<$R, TaigaPayload, $Out> {
  _TaigaPayloadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaPayload> $mapper =
      TaigaPayloadMapper.ensureInitialized();
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get performer =>
      $value.performer.copyWith.$chain((v) => call(performer: v));
  @override
  TaigaChangeCopyWith<$R, TaigaChange, TaigaChange>? get change =>
      $value.change?.copyWith.$chain((v) => call(change: v));
  @override
  $R call(
          {String? actionType,
          String? jobType,
          TaigaUser? performer,
          DateTime? date,
          Object? data = $none,
          Object? change = $none}) =>
      $apply(FieldCopyWithData({
        if (actionType != null) #actionType: actionType,
        if (jobType != null) #jobType: jobType,
        if (performer != null) #performer: performer,
        if (date != null) #date: date,
        if (data != $none) #data: data,
        if (change != $none) #change: change
      }));
  @override
  TaigaPayload $make(CopyWithData data) => TaigaPayload(
      actionType: data.get(#actionType, or: $value.actionType),
      jobType: data.get(#jobType, or: $value.jobType),
      performer: data.get(#performer, or: $value.performer),
      date: data.get(#date, or: $value.date),
      data: data.get(#data, or: $value.data),
      change: data.get(#change, or: $value.change));

  @override
  TaigaPayloadCopyWith<$R2, TaigaPayload, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaPayloadCopyWithImpl($value, $cast, t);
}

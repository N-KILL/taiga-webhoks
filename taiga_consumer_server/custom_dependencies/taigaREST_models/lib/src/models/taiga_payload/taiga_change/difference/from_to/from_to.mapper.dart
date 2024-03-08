// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'from_to.dart';

class FromToMapper extends ClassMapperBase<FromTo> {
  FromToMapper._();

  static FromToMapper? _instance;
  static FromToMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FromToMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FromTo';

  static dynamic _$oldValue(FromTo v) => v.oldValue;
  static const Field<FromTo, dynamic> _f$oldValue =
      Field('oldValue', _$oldValue, key: 'from');
  static dynamic _$newValue(FromTo v) => v.newValue;
  static const Field<FromTo, dynamic> _f$newValue =
      Field('newValue', _$newValue, key: 'to');

  @override
  final Map<Symbol, Field<FromTo, dynamic>> fields = const {
    #oldValue: _f$oldValue,
    #newValue: _f$newValue,
  };

  static FromTo _instantiate(DecodingData data) {
    return FromTo(
        oldValue: data.dec(_f$oldValue), newValue: data.dec(_f$newValue));
  }

  @override
  final Function instantiate = _instantiate;

  static FromTo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FromTo>(map);
  }

  static FromTo fromJson(String json) {
    return ensureInitialized().decodeJson<FromTo>(json);
  }
}

mixin FromToMappable {
  String toJson() {
    return FromToMapper.ensureInitialized().encodeJson<FromTo>(this as FromTo);
  }

  Map<String, dynamic> toMap() {
    return FromToMapper.ensureInitialized().encodeMap<FromTo>(this as FromTo);
  }

  FromToCopyWith<FromTo, FromTo, FromTo> get copyWith =>
      _FromToCopyWithImpl(this as FromTo, $identity, $identity);
  @override
  String toString() {
    return FromToMapper.ensureInitialized().stringifyValue(this as FromTo);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            FromToMapper.ensureInitialized()
                .isValueEqual(this as FromTo, other));
  }

  @override
  int get hashCode {
    return FromToMapper.ensureInitialized().hashValue(this as FromTo);
  }
}

extension FromToValueCopy<$R, $Out> on ObjectCopyWith<$R, FromTo, $Out> {
  FromToCopyWith<$R, FromTo, $Out> get $asFromTo =>
      $base.as((v, t, t2) => _FromToCopyWithImpl(v, t, t2));
}

abstract class FromToCopyWith<$R, $In extends FromTo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({dynamic oldValue, dynamic newValue});
  FromToCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FromToCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, FromTo, $Out>
    implements FromToCopyWith<$R, FromTo, $Out> {
  _FromToCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FromTo> $mapper = FromToMapper.ensureInitialized();
  @override
  $R call({Object? oldValue = $none, Object? newValue = $none}) =>
      $apply(FieldCopyWithData({
        if (oldValue != $none) #oldValue: oldValue,
        if (newValue != $none) #newValue: newValue
      }));
  @override
  FromTo $make(CopyWithData data) => FromTo(
      oldValue: data.get(#oldValue, or: $value.oldValue),
      newValue: data.get(#newValue, or: $value.newValue));

  @override
  FromToCopyWith<$R2, FromTo, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FromToCopyWithImpl($value, $cast, t);
}

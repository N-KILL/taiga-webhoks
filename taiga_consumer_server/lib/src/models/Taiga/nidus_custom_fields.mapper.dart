// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nidus_custom_fields.dart';

class NidusCustomFieldsMapper extends ClassMapperBase<NidusCustomFields> {
  NidusCustomFieldsMapper._();

  static NidusCustomFieldsMapper? _instance;
  static NidusCustomFieldsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NidusCustomFieldsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NidusCustomFields';

  static String? _$figmaUrl(NidusCustomFields v) => v.figmaUrl;
  static const Field<NidusCustomFields, String> _f$figmaUrl =
      Field('figmaUrl', _$figmaUrl, key: 'Pestaña del Figma', opt: true);
  static String? _$bounty(NidusCustomFields v) => v.bounty;
  static const Field<NidusCustomFields, String> _f$bounty =
      Field('bounty', _$bounty, key: 'Bounty', opt: true);
  static String? _$figmaToDeveloped(NidusCustomFields v) => v.figmaToDeveloped;
  static const Field<NidusCustomFields, String> _f$figmaToDeveloped = Field(
      'figmaToDeveloped', _$figmaToDeveloped,
      key: 'Componente en el Figma', opt: true);

  @override
  final Map<Symbol, Field<NidusCustomFields, dynamic>> fields = const {
    #figmaUrl: _f$figmaUrl,
    #bounty: _f$bounty,
    #figmaToDeveloped: _f$figmaToDeveloped,
  };

  static NidusCustomFields _instantiate(DecodingData data) {
    return NidusCustomFields(
        figmaUrl: data.dec(_f$figmaUrl),
        bounty: data.dec(_f$bounty),
        figmaToDeveloped: data.dec(_f$figmaToDeveloped));
  }

  @override
  final Function instantiate = _instantiate;

  static NidusCustomFields fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NidusCustomFields>(map);
  }

  static NidusCustomFields fromJson(String json) {
    return ensureInitialized().decodeJson<NidusCustomFields>(json);
  }
}

mixin NidusCustomFieldsMappable {
  String toJson() {
    return NidusCustomFieldsMapper.ensureInitialized()
        .encodeJson<NidusCustomFields>(this as NidusCustomFields);
  }

  Map<String, dynamic> toMap() {
    return NidusCustomFieldsMapper.ensureInitialized()
        .encodeMap<NidusCustomFields>(this as NidusCustomFields);
  }

  NidusCustomFieldsCopyWith<NidusCustomFields, NidusCustomFields,
          NidusCustomFields>
      get copyWith => _NidusCustomFieldsCopyWithImpl(
          this as NidusCustomFields, $identity, $identity);
  @override
  String toString() {
    return NidusCustomFieldsMapper.ensureInitialized()
        .stringifyValue(this as NidusCustomFields);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NidusCustomFieldsMapper.ensureInitialized()
                .isValueEqual(this as NidusCustomFields, other));
  }

  @override
  int get hashCode {
    return NidusCustomFieldsMapper.ensureInitialized()
        .hashValue(this as NidusCustomFields);
  }
}

extension NidusCustomFieldsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NidusCustomFields, $Out> {
  NidusCustomFieldsCopyWith<$R, NidusCustomFields, $Out>
      get $asNidusCustomFields =>
          $base.as((v, t, t2) => _NidusCustomFieldsCopyWithImpl(v, t, t2));
}

abstract class NidusCustomFieldsCopyWith<$R, $In extends NidusCustomFields,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? figmaUrl, String? bounty, String? figmaToDeveloped});
  NidusCustomFieldsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NidusCustomFieldsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NidusCustomFields, $Out>
    implements NidusCustomFieldsCopyWith<$R, NidusCustomFields, $Out> {
  _NidusCustomFieldsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NidusCustomFields> $mapper =
      NidusCustomFieldsMapper.ensureInitialized();
  @override
  $R call(
          {Object? figmaUrl = $none,
          Object? bounty = $none,
          Object? figmaToDeveloped = $none}) =>
      $apply(FieldCopyWithData({
        if (figmaUrl != $none) #figmaUrl: figmaUrl,
        if (bounty != $none) #bounty: bounty,
        if (figmaToDeveloped != $none) #figmaToDeveloped: figmaToDeveloped
      }));
  @override
  NidusCustomFields $make(CopyWithData data) => NidusCustomFields(
      figmaUrl: data.get(#figmaUrl, or: $value.figmaUrl),
      bounty: data.get(#bounty, or: $value.bounty),
      figmaToDeveloped:
          data.get(#figmaToDeveloped, or: $value.figmaToDeveloped));

  @override
  NidusCustomFieldsCopyWith<$R2, NidusCustomFields, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NidusCustomFieldsCopyWithImpl($value, $cast, t);
}

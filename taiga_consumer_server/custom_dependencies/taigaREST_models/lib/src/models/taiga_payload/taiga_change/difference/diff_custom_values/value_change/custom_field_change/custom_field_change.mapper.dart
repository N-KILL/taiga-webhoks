// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'custom_field_change.dart';

class CustomFieldsChangeMapper extends ClassMapperBase<CustomFieldsChange> {
  CustomFieldsChangeMapper._();

  static CustomFieldsChangeMapper? _instance;
  static CustomFieldsChangeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CustomFieldsChangeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CustomFieldsChange';

  static List<String> _$valueChange(CustomFieldsChange v) => v.valueChange;
  static const Field<CustomFieldsChange, List<String>> _f$valueChange =
      Field('valueChange', _$valueChange, key: 'value');

  @override
  final Map<Symbol, Field<CustomFieldsChange, dynamic>> fields = const {
    #valueChange: _f$valueChange,
  };

  static CustomFieldsChange _instantiate(DecodingData data) {
    return CustomFieldsChange(valueChange: data.dec(_f$valueChange));
  }

  @override
  final Function instantiate = _instantiate;

  static CustomFieldsChange fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CustomFieldsChange>(map);
  }

  static CustomFieldsChange fromJson(String json) {
    return ensureInitialized().decodeJson<CustomFieldsChange>(json);
  }
}

mixin CustomFieldsChangeMappable {
  String toJson() {
    return CustomFieldsChangeMapper.ensureInitialized()
        .encodeJson<CustomFieldsChange>(this as CustomFieldsChange);
  }

  Map<String, dynamic> toMap() {
    return CustomFieldsChangeMapper.ensureInitialized()
        .encodeMap<CustomFieldsChange>(this as CustomFieldsChange);
  }

  CustomFieldsChangeCopyWith<CustomFieldsChange, CustomFieldsChange,
          CustomFieldsChange>
      get copyWith => _CustomFieldsChangeCopyWithImpl(
          this as CustomFieldsChange, $identity, $identity);
  @override
  String toString() {
    return CustomFieldsChangeMapper.ensureInitialized()
        .stringifyValue(this as CustomFieldsChange);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CustomFieldsChangeMapper.ensureInitialized()
                .isValueEqual(this as CustomFieldsChange, other));
  }

  @override
  int get hashCode {
    return CustomFieldsChangeMapper.ensureInitialized()
        .hashValue(this as CustomFieldsChange);
  }
}

extension CustomFieldsChangeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CustomFieldsChange, $Out> {
  CustomFieldsChangeCopyWith<$R, CustomFieldsChange, $Out>
      get $asCustomFieldsChange =>
          $base.as((v, t, t2) => _CustomFieldsChangeCopyWithImpl(v, t, t2));
}

abstract class CustomFieldsChangeCopyWith<$R, $In extends CustomFieldsChange,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get valueChange;
  $R call({List<String>? valueChange});
  CustomFieldsChangeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CustomFieldsChangeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CustomFieldsChange, $Out>
    implements CustomFieldsChangeCopyWith<$R, CustomFieldsChange, $Out> {
  _CustomFieldsChangeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CustomFieldsChange> $mapper =
      CustomFieldsChangeMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get valueChange => ListCopyWith(
          $value.valueChange,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(valueChange: v));
  @override
  $R call({List<String>? valueChange}) => $apply(
      FieldCopyWithData({if (valueChange != null) #valueChange: valueChange}));
  @override
  CustomFieldsChange $make(CopyWithData data) => CustomFieldsChange(
      valueChange: data.get(#valueChange, or: $value.valueChange));

  @override
  CustomFieldsChangeCopyWith<$R2, CustomFieldsChange, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CustomFieldsChangeCopyWithImpl($value, $cast, t);
}

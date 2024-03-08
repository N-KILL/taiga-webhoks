// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'taiga_custom_field.dart';

class CustomFieldMapper extends ClassMapperBase<CustomField> {
  CustomFieldMapper._();

  static CustomFieldMapper? _instance;
  static CustomFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CustomFieldMapper._());
      CustomFieldsChangeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CustomField';

  static int? _$customFieldId(CustomField v) => v.customFieldId;
  static const Field<CustomField, int> _f$customFieldId =
      Field('customFieldId', _$customFieldId, key: 'id');
  static String? _$customFieldName(CustomField v) => v.customFieldName;
  static const Field<CustomField, String> _f$customFieldName =
      Field('customFieldName', _$customFieldName, key: 'name');
  static String? _$customFieldType(CustomField v) => v.customFieldType;
  static const Field<CustomField, String> _f$customFieldType =
      Field('customFieldType', _$customFieldType, key: 'type');
  static String? _$customFieldValue(CustomField v) => v.customFieldValue;
  static const Field<CustomField, String> _f$customFieldValue =
      Field('customFieldValue', _$customFieldValue, key: 'value');
  static String? _$customFieldValueHtml(CustomField v) =>
      v.customFieldValueHtml;
  static const Field<CustomField, String> _f$customFieldValueHtml =
      Field('customFieldValueHtml', _$customFieldValueHtml, key: 'value_diff');
  static CustomFieldsChange? _$valueChanges(CustomField v) => v.valueChanges;
  static const Field<CustomField, CustomFieldsChange> _f$valueChanges =
      Field('valueChanges', _$valueChanges, key: 'changes');

  @override
  final Map<Symbol, Field<CustomField, dynamic>> fields = const {
    #customFieldId: _f$customFieldId,
    #customFieldName: _f$customFieldName,
    #customFieldType: _f$customFieldType,
    #customFieldValue: _f$customFieldValue,
    #customFieldValueHtml: _f$customFieldValueHtml,
    #valueChanges: _f$valueChanges,
  };

  static CustomField _instantiate(DecodingData data) {
    return CustomField(
        customFieldId: data.dec(_f$customFieldId),
        customFieldName: data.dec(_f$customFieldName),
        customFieldType: data.dec(_f$customFieldType),
        customFieldValue: data.dec(_f$customFieldValue),
        customFieldValueHtml: data.dec(_f$customFieldValueHtml),
        valueChanges: data.dec(_f$valueChanges));
  }

  @override
  final Function instantiate = _instantiate;

  static CustomField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CustomField>(map);
  }

  static CustomField fromJson(String json) {
    return ensureInitialized().decodeJson<CustomField>(json);
  }
}

mixin CustomFieldMappable {
  String toJson() {
    return CustomFieldMapper.ensureInitialized()
        .encodeJson<CustomField>(this as CustomField);
  }

  Map<String, dynamic> toMap() {
    return CustomFieldMapper.ensureInitialized()
        .encodeMap<CustomField>(this as CustomField);
  }

  CustomFieldCopyWith<CustomField, CustomField, CustomField> get copyWith =>
      _CustomFieldCopyWithImpl(this as CustomField, $identity, $identity);
  @override
  String toString() {
    return CustomFieldMapper.ensureInitialized()
        .stringifyValue(this as CustomField);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CustomFieldMapper.ensureInitialized()
                .isValueEqual(this as CustomField, other));
  }

  @override
  int get hashCode {
    return CustomFieldMapper.ensureInitialized().hashValue(this as CustomField);
  }
}

extension CustomFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CustomField, $Out> {
  CustomFieldCopyWith<$R, CustomField, $Out> get $asCustomField =>
      $base.as((v, t, t2) => _CustomFieldCopyWithImpl(v, t, t2));
}

abstract class CustomFieldCopyWith<$R, $In extends CustomField, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CustomFieldsChangeCopyWith<$R, CustomFieldsChange, CustomFieldsChange>?
      get valueChanges;
  $R call(
      {int? customFieldId,
      String? customFieldName,
      String? customFieldType,
      String? customFieldValue,
      String? customFieldValueHtml,
      CustomFieldsChange? valueChanges});
  CustomFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CustomFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CustomField, $Out>
    implements CustomFieldCopyWith<$R, CustomField, $Out> {
  _CustomFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CustomField> $mapper =
      CustomFieldMapper.ensureInitialized();
  @override
  CustomFieldsChangeCopyWith<$R, CustomFieldsChange, CustomFieldsChange>?
      get valueChanges =>
          $value.valueChanges?.copyWith.$chain((v) => call(valueChanges: v));
  @override
  $R call(
          {Object? customFieldId = $none,
          Object? customFieldName = $none,
          Object? customFieldType = $none,
          Object? customFieldValue = $none,
          Object? customFieldValueHtml = $none,
          Object? valueChanges = $none}) =>
      $apply(FieldCopyWithData({
        if (customFieldId != $none) #customFieldId: customFieldId,
        if (customFieldName != $none) #customFieldName: customFieldName,
        if (customFieldType != $none) #customFieldType: customFieldType,
        if (customFieldValue != $none) #customFieldValue: customFieldValue,
        if (customFieldValueHtml != $none)
          #customFieldValueHtml: customFieldValueHtml,
        if (valueChanges != $none) #valueChanges: valueChanges
      }));
  @override
  CustomField $make(CopyWithData data) => CustomField(
      customFieldId: data.get(#customFieldId, or: $value.customFieldId),
      customFieldName: data.get(#customFieldName, or: $value.customFieldName),
      customFieldType: data.get(#customFieldType, or: $value.customFieldType),
      customFieldValue:
          data.get(#customFieldValue, or: $value.customFieldValue),
      customFieldValueHtml:
          data.get(#customFieldValueHtml, or: $value.customFieldValueHtml),
      valueChanges: data.get(#valueChanges, or: $value.valueChanges));

  @override
  CustomFieldCopyWith<$R2, CustomField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CustomFieldCopyWithImpl($value, $cast, t);
}

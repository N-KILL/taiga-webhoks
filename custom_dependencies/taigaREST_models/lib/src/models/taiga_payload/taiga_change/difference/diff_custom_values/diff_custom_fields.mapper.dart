// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'diff_custom_fields.dart';

class CustomValuesDataChangeMapper
    extends ClassMapperBase<CustomValuesDataChange> {
  CustomValuesDataChangeMapper._();

  static CustomValuesDataChangeMapper? _instance;
  static CustomValuesDataChangeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CustomValuesDataChangeMapper._());
      CustomFieldMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CustomValuesDataChange';

  static List<CustomField> _$customValuesNew(CustomValuesDataChange v) =>
      v.customValuesNew;
  static const Field<CustomValuesDataChange, List<CustomField>>
      _f$customValuesNew =
      Field('customValuesNew', _$customValuesNew, key: 'new');
  static List<CustomField> _$customValuesChanged(CustomValuesDataChange v) =>
      v.customValuesChanged;
  static const Field<CustomValuesDataChange, List<CustomField>>
      _f$customValuesChanged =
      Field('customValuesChanged', _$customValuesChanged, key: 'changed');
  static List<CustomField> _$customValuesDeleted(CustomValuesDataChange v) =>
      v.customValuesDeleted;
  static const Field<CustomValuesDataChange, List<CustomField>>
      _f$customValuesDeleted =
      Field('customValuesDeleted', _$customValuesDeleted, key: 'deleted');

  @override
  final Map<Symbol, Field<CustomValuesDataChange, dynamic>> fields = const {
    #customValuesNew: _f$customValuesNew,
    #customValuesChanged: _f$customValuesChanged,
    #customValuesDeleted: _f$customValuesDeleted,
  };

  static CustomValuesDataChange _instantiate(DecodingData data) {
    return CustomValuesDataChange(
        customValuesNew: data.dec(_f$customValuesNew),
        customValuesChanged: data.dec(_f$customValuesChanged),
        customValuesDeleted: data.dec(_f$customValuesDeleted));
  }

  @override
  final Function instantiate = _instantiate;

  static CustomValuesDataChange fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CustomValuesDataChange>(map);
  }

  static CustomValuesDataChange fromJson(String json) {
    return ensureInitialized().decodeJson<CustomValuesDataChange>(json);
  }
}

mixin CustomValuesDataChangeMappable {
  String toJson() {
    return CustomValuesDataChangeMapper.ensureInitialized()
        .encodeJson<CustomValuesDataChange>(this as CustomValuesDataChange);
  }

  Map<String, dynamic> toMap() {
    return CustomValuesDataChangeMapper.ensureInitialized()
        .encodeMap<CustomValuesDataChange>(this as CustomValuesDataChange);
  }

  CustomValuesDataChangeCopyWith<CustomValuesDataChange, CustomValuesDataChange,
          CustomValuesDataChange>
      get copyWith => _CustomValuesDataChangeCopyWithImpl(
          this as CustomValuesDataChange, $identity, $identity);
  @override
  String toString() {
    return CustomValuesDataChangeMapper.ensureInitialized()
        .stringifyValue(this as CustomValuesDataChange);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CustomValuesDataChangeMapper.ensureInitialized()
                .isValueEqual(this as CustomValuesDataChange, other));
  }

  @override
  int get hashCode {
    return CustomValuesDataChangeMapper.ensureInitialized()
        .hashValue(this as CustomValuesDataChange);
  }
}

extension CustomValuesDataChangeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CustomValuesDataChange, $Out> {
  CustomValuesDataChangeCopyWith<$R, CustomValuesDataChange, $Out>
      get $asCustomValuesDataChange =>
          $base.as((v, t, t2) => _CustomValuesDataChangeCopyWithImpl(v, t, t2));
}

abstract class CustomValuesDataChangeCopyWith<
    $R,
    $In extends CustomValuesDataChange,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CustomField,
      CustomFieldCopyWith<$R, CustomField, CustomField>> get customValuesNew;
  ListCopyWith<$R, CustomField,
          CustomFieldCopyWith<$R, CustomField, CustomField>>
      get customValuesChanged;
  ListCopyWith<$R, CustomField,
          CustomFieldCopyWith<$R, CustomField, CustomField>>
      get customValuesDeleted;
  $R call(
      {List<CustomField>? customValuesNew,
      List<CustomField>? customValuesChanged,
      List<CustomField>? customValuesDeleted});
  CustomValuesDataChangeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CustomValuesDataChangeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CustomValuesDataChange, $Out>
    implements
        CustomValuesDataChangeCopyWith<$R, CustomValuesDataChange, $Out> {
  _CustomValuesDataChangeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CustomValuesDataChange> $mapper =
      CustomValuesDataChangeMapper.ensureInitialized();
  @override
  ListCopyWith<$R, CustomField,
          CustomFieldCopyWith<$R, CustomField, CustomField>>
      get customValuesNew => ListCopyWith($value.customValuesNew,
          (v, t) => v.copyWith.$chain(t), (v) => call(customValuesNew: v));
  @override
  ListCopyWith<$R, CustomField,
          CustomFieldCopyWith<$R, CustomField, CustomField>>
      get customValuesChanged => ListCopyWith($value.customValuesChanged,
          (v, t) => v.copyWith.$chain(t), (v) => call(customValuesChanged: v));
  @override
  ListCopyWith<$R, CustomField,
          CustomFieldCopyWith<$R, CustomField, CustomField>>
      get customValuesDeleted => ListCopyWith($value.customValuesDeleted,
          (v, t) => v.copyWith.$chain(t), (v) => call(customValuesDeleted: v));
  @override
  $R call(
          {List<CustomField>? customValuesNew,
          List<CustomField>? customValuesChanged,
          List<CustomField>? customValuesDeleted}) =>
      $apply(FieldCopyWithData({
        if (customValuesNew != null) #customValuesNew: customValuesNew,
        if (customValuesChanged != null)
          #customValuesChanged: customValuesChanged,
        if (customValuesDeleted != null)
          #customValuesDeleted: customValuesDeleted
      }));
  @override
  CustomValuesDataChange $make(CopyWithData data) => CustomValuesDataChange(
      customValuesNew: data.get(#customValuesNew, or: $value.customValuesNew),
      customValuesChanged:
          data.get(#customValuesChanged, or: $value.customValuesChanged),
      customValuesDeleted:
          data.get(#customValuesDeleted, or: $value.customValuesDeleted));

  @override
  CustomValuesDataChangeCopyWith<$R2, CustomValuesDataChange, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CustomValuesDataChangeCopyWithImpl($value, $cast, t);
}

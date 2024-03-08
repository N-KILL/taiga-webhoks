// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'point_difference.dart';

class PointDifferenceMapper extends ClassMapperBase<PointDifference> {
  PointDifferenceMapper._();

  static PointDifferenceMapper? _instance;
  static PointDifferenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PointDifferenceMapper._());
      FromToMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PointDifference';

  static FromTo? _$backPoints(PointDifference v) => v.backPoints;
  static const Field<PointDifference, FromTo> _f$backPoints =
      Field('backPoints', _$backPoints, key: 'Back');
  static FromTo? _$frontPoints(PointDifference v) => v.frontPoints;
  static const Field<PointDifference, FromTo> _f$frontPoints =
      Field('frontPoints', _$frontPoints, key: 'Front');
  static FromTo? _$designPoints(PointDifference v) => v.designPoints;
  static const Field<PointDifference, FromTo> _f$designPoints =
      Field('designPoints', _$designPoints, key: 'Design');
  static FromTo? _$pmPoints(PointDifference v) => v.pmPoints;
  static const Field<PointDifference, FromTo> _f$pmPoints =
      Field('pmPoints', _$pmPoints, key: 'Project Manager');

  @override
  final Map<Symbol, Field<PointDifference, dynamic>> fields = const {
    #backPoints: _f$backPoints,
    #frontPoints: _f$frontPoints,
    #designPoints: _f$designPoints,
    #pmPoints: _f$pmPoints,
  };

  static PointDifference _instantiate(DecodingData data) {
    return PointDifference(
        backPoints: data.dec(_f$backPoints),
        frontPoints: data.dec(_f$frontPoints),
        designPoints: data.dec(_f$designPoints),
        pmPoints: data.dec(_f$pmPoints));
  }

  @override
  final Function instantiate = _instantiate;

  static PointDifference fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PointDifference>(map);
  }

  static PointDifference fromJson(String json) {
    return ensureInitialized().decodeJson<PointDifference>(json);
  }
}

mixin PointDifferenceMappable {
  String toJson() {
    return PointDifferenceMapper.ensureInitialized()
        .encodeJson<PointDifference>(this as PointDifference);
  }

  Map<String, dynamic> toMap() {
    return PointDifferenceMapper.ensureInitialized()
        .encodeMap<PointDifference>(this as PointDifference);
  }

  PointDifferenceCopyWith<PointDifference, PointDifference, PointDifference>
      get copyWith => _PointDifferenceCopyWithImpl(
          this as PointDifference, $identity, $identity);
  @override
  String toString() {
    return PointDifferenceMapper.ensureInitialized()
        .stringifyValue(this as PointDifference);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PointDifferenceMapper.ensureInitialized()
                .isValueEqual(this as PointDifference, other));
  }

  @override
  int get hashCode {
    return PointDifferenceMapper.ensureInitialized()
        .hashValue(this as PointDifference);
  }
}

extension PointDifferenceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PointDifference, $Out> {
  PointDifferenceCopyWith<$R, PointDifference, $Out> get $asPointDifference =>
      $base.as((v, t, t2) => _PointDifferenceCopyWithImpl(v, t, t2));
}

abstract class PointDifferenceCopyWith<$R, $In extends PointDifference, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FromToCopyWith<$R, FromTo, FromTo>? get backPoints;
  FromToCopyWith<$R, FromTo, FromTo>? get frontPoints;
  FromToCopyWith<$R, FromTo, FromTo>? get designPoints;
  FromToCopyWith<$R, FromTo, FromTo>? get pmPoints;
  $R call(
      {FromTo? backPoints,
      FromTo? frontPoints,
      FromTo? designPoints,
      FromTo? pmPoints});
  PointDifferenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PointDifferenceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PointDifference, $Out>
    implements PointDifferenceCopyWith<$R, PointDifference, $Out> {
  _PointDifferenceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PointDifference> $mapper =
      PointDifferenceMapper.ensureInitialized();
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get backPoints =>
      $value.backPoints?.copyWith.$chain((v) => call(backPoints: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get frontPoints =>
      $value.frontPoints?.copyWith.$chain((v) => call(frontPoints: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get designPoints =>
      $value.designPoints?.copyWith.$chain((v) => call(designPoints: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get pmPoints =>
      $value.pmPoints?.copyWith.$chain((v) => call(pmPoints: v));
  @override
  $R call(
          {Object? backPoints = $none,
          Object? frontPoints = $none,
          Object? designPoints = $none,
          Object? pmPoints = $none}) =>
      $apply(FieldCopyWithData({
        if (backPoints != $none) #backPoints: backPoints,
        if (frontPoints != $none) #frontPoints: frontPoints,
        if (designPoints != $none) #designPoints: designPoints,
        if (pmPoints != $none) #pmPoints: pmPoints
      }));
  @override
  PointDifference $make(CopyWithData data) => PointDifference(
      backPoints: data.get(#backPoints, or: $value.backPoints),
      frontPoints: data.get(#frontPoints, or: $value.frontPoints),
      designPoints: data.get(#designPoints, or: $value.designPoints),
      pmPoints: data.get(#pmPoints, or: $value.pmPoints));

  @override
  PointDifferenceCopyWith<$R2, PointDifference, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PointDifferenceCopyWithImpl($value, $cast, t);
}

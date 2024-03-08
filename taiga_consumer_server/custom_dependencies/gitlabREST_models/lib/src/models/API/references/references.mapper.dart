// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'references.dart';

class ReferencesAPIMapper extends ClassMapperBase<ReferencesAPI> {
  ReferencesAPIMapper._();

  static ReferencesAPIMapper? _instance;
  static ReferencesAPIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReferencesAPIMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ReferencesAPI';

  static String _$short(ReferencesAPI v) => v.short;
  static const Field<ReferencesAPI, String> _f$short = Field('short', _$short);
  static String _$relative(ReferencesAPI v) => v.relative;
  static const Field<ReferencesAPI, String> _f$relative =
      Field('relative', _$relative);
  static String _$full(ReferencesAPI v) => v.full;
  static const Field<ReferencesAPI, String> _f$full = Field('full', _$full);

  @override
  final Map<Symbol, Field<ReferencesAPI, dynamic>> fields = const {
    #short: _f$short,
    #relative: _f$relative,
    #full: _f$full,
  };

  static ReferencesAPI _instantiate(DecodingData data) {
    return ReferencesAPI(
        short: data.dec(_f$short),
        relative: data.dec(_f$relative),
        full: data.dec(_f$full));
  }

  @override
  final Function instantiate = _instantiate;

  static ReferencesAPI fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReferencesAPI>(map);
  }

  static ReferencesAPI fromJson(String json) {
    return ensureInitialized().decodeJson<ReferencesAPI>(json);
  }
}

mixin ReferencesAPIMappable {
  String toJson() {
    return ReferencesAPIMapper.ensureInitialized()
        .encodeJson<ReferencesAPI>(this as ReferencesAPI);
  }

  Map<String, dynamic> toMap() {
    return ReferencesAPIMapper.ensureInitialized()
        .encodeMap<ReferencesAPI>(this as ReferencesAPI);
  }

  ReferencesAPICopyWith<ReferencesAPI, ReferencesAPI, ReferencesAPI>
      get copyWith => _ReferencesAPICopyWithImpl(
          this as ReferencesAPI, $identity, $identity);
  @override
  String toString() {
    return ReferencesAPIMapper.ensureInitialized()
        .stringifyValue(this as ReferencesAPI);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ReferencesAPIMapper.ensureInitialized()
                .isValueEqual(this as ReferencesAPI, other));
  }

  @override
  int get hashCode {
    return ReferencesAPIMapper.ensureInitialized()
        .hashValue(this as ReferencesAPI);
  }
}

extension ReferencesAPIValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReferencesAPI, $Out> {
  ReferencesAPICopyWith<$R, ReferencesAPI, $Out> get $asReferencesAPI =>
      $base.as((v, t, t2) => _ReferencesAPICopyWithImpl(v, t, t2));
}

abstract class ReferencesAPICopyWith<$R, $In extends ReferencesAPI, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? short, String? relative, String? full});
  ReferencesAPICopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReferencesAPICopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReferencesAPI, $Out>
    implements ReferencesAPICopyWith<$R, ReferencesAPI, $Out> {
  _ReferencesAPICopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReferencesAPI> $mapper =
      ReferencesAPIMapper.ensureInitialized();
  @override
  $R call({String? short, String? relative, String? full}) =>
      $apply(FieldCopyWithData({
        if (short != null) #short: short,
        if (relative != null) #relative: relative,
        if (full != null) #full: full
      }));
  @override
  ReferencesAPI $make(CopyWithData data) => ReferencesAPI(
      short: data.get(#short, or: $value.short),
      relative: data.get(#relative, or: $value.relative),
      full: data.get(#full, or: $value.full));

  @override
  ReferencesAPICopyWith<$R2, ReferencesAPI, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ReferencesAPICopyWithImpl($value, $cast, t);
}

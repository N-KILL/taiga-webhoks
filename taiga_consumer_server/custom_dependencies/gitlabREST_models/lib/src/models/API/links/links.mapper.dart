// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'links.dart';

class LinksAPIMapper extends ClassMapperBase<LinksAPI> {
  LinksAPIMapper._();

  static LinksAPIMapper? _instance;
  static LinksAPIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LinksAPIMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LinksAPI';

  static String _$self(LinksAPI v) => v.self;
  static const Field<LinksAPI, String> _f$self = Field('self', _$self);
  static String _$notes(LinksAPI v) => v.notes;
  static const Field<LinksAPI, String> _f$notes = Field('notes', _$notes);
  static String _$awardEmoji(LinksAPI v) => v.awardEmoji;
  static const Field<LinksAPI, String> _f$awardEmoji =
      Field('awardEmoji', _$awardEmoji, key: 'award_emoji');
  static String _$projectUrl(LinksAPI v) => v.projectUrl;
  static const Field<LinksAPI, String> _f$projectUrl =
      Field('projectUrl', _$projectUrl, key: 'project');
  static String? _$closedAsDuplicateOf(LinksAPI v) => v.closedAsDuplicateOf;
  static const Field<LinksAPI, String> _f$closedAsDuplicateOf = Field(
      'closedAsDuplicateOf', _$closedAsDuplicateOf,
      key: 'closed_as_duplicate_of');

  @override
  final Map<Symbol, Field<LinksAPI, dynamic>> fields = const {
    #self: _f$self,
    #notes: _f$notes,
    #awardEmoji: _f$awardEmoji,
    #projectUrl: _f$projectUrl,
    #closedAsDuplicateOf: _f$closedAsDuplicateOf,
  };

  static LinksAPI _instantiate(DecodingData data) {
    return LinksAPI(
        self: data.dec(_f$self),
        notes: data.dec(_f$notes),
        awardEmoji: data.dec(_f$awardEmoji),
        projectUrl: data.dec(_f$projectUrl),
        closedAsDuplicateOf: data.dec(_f$closedAsDuplicateOf));
  }

  @override
  final Function instantiate = _instantiate;

  static LinksAPI fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LinksAPI>(map);
  }

  static LinksAPI fromJson(String json) {
    return ensureInitialized().decodeJson<LinksAPI>(json);
  }
}

mixin LinksAPIMappable {
  String toJson() {
    return LinksAPIMapper.ensureInitialized()
        .encodeJson<LinksAPI>(this as LinksAPI);
  }

  Map<String, dynamic> toMap() {
    return LinksAPIMapper.ensureInitialized()
        .encodeMap<LinksAPI>(this as LinksAPI);
  }

  LinksAPICopyWith<LinksAPI, LinksAPI, LinksAPI> get copyWith =>
      _LinksAPICopyWithImpl(this as LinksAPI, $identity, $identity);
  @override
  String toString() {
    return LinksAPIMapper.ensureInitialized().stringifyValue(this as LinksAPI);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LinksAPIMapper.ensureInitialized()
                .isValueEqual(this as LinksAPI, other));
  }

  @override
  int get hashCode {
    return LinksAPIMapper.ensureInitialized().hashValue(this as LinksAPI);
  }
}

extension LinksAPIValueCopy<$R, $Out> on ObjectCopyWith<$R, LinksAPI, $Out> {
  LinksAPICopyWith<$R, LinksAPI, $Out> get $asLinksAPI =>
      $base.as((v, t, t2) => _LinksAPICopyWithImpl(v, t, t2));
}

abstract class LinksAPICopyWith<$R, $In extends LinksAPI, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? self,
      String? notes,
      String? awardEmoji,
      String? projectUrl,
      String? closedAsDuplicateOf});
  LinksAPICopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LinksAPICopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LinksAPI, $Out>
    implements LinksAPICopyWith<$R, LinksAPI, $Out> {
  _LinksAPICopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LinksAPI> $mapper =
      LinksAPIMapper.ensureInitialized();
  @override
  $R call(
          {String? self,
          String? notes,
          String? awardEmoji,
          String? projectUrl,
          Object? closedAsDuplicateOf = $none}) =>
      $apply(FieldCopyWithData({
        if (self != null) #self: self,
        if (notes != null) #notes: notes,
        if (awardEmoji != null) #awardEmoji: awardEmoji,
        if (projectUrl != null) #projectUrl: projectUrl,
        if (closedAsDuplicateOf != $none)
          #closedAsDuplicateOf: closedAsDuplicateOf
      }));
  @override
  LinksAPI $make(CopyWithData data) => LinksAPI(
      self: data.get(#self, or: $value.self),
      notes: data.get(#notes, or: $value.notes),
      awardEmoji: data.get(#awardEmoji, or: $value.awardEmoji),
      projectUrl: data.get(#projectUrl, or: $value.projectUrl),
      closedAsDuplicateOf:
          data.get(#closedAsDuplicateOf, or: $value.closedAsDuplicateOf));

  @override
  LinksAPICopyWith<$R2, LinksAPI, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LinksAPICopyWithImpl($value, $cast, t);
}

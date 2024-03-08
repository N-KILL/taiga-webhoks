// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'taiga_comment_version.dart';

class TaigaCommentVersionMapper extends ClassMapperBase<TaigaCommentVersion> {
  TaigaCommentVersionMapper._();

  static TaigaCommentVersionMapper? _instance;
  static TaigaCommentVersionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaCommentVersionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaCommentVersion';

  static DateTime _$modificationDate(TaigaCommentVersion v) =>
      v.modificationDate;
  static const Field<TaigaCommentVersion, DateTime> _f$modificationDate =
      Field('modificationDate', _$modificationDate, key: 'date');
  static String _$comment(TaigaCommentVersion v) => v.comment;
  static const Field<TaigaCommentVersion, String> _f$comment =
      Field('comment', _$comment, key: 'date');
  static String _$commentHtml(TaigaCommentVersion v) => v.commentHtml;
  static const Field<TaigaCommentVersion, String> _f$commentHtml =
      Field('commentHtml', _$commentHtml, key: 'comment_html');
  static int? _$userOwner(TaigaCommentVersion v) => v.userOwner;
  static const Field<TaigaCommentVersion, int> _f$userOwner =
      Field('userOwner', _$userOwner, key: 'user');

  @override
  final Map<Symbol, Field<TaigaCommentVersion, dynamic>> fields = const {
    #modificationDate: _f$modificationDate,
    #comment: _f$comment,
    #commentHtml: _f$commentHtml,
    #userOwner: _f$userOwner,
  };

  static TaigaCommentVersion _instantiate(DecodingData data) {
    return TaigaCommentVersion(
        modificationDate: data.dec(_f$modificationDate),
        comment: data.dec(_f$comment),
        commentHtml: data.dec(_f$commentHtml),
        userOwner: data.dec(_f$userOwner));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaCommentVersion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaCommentVersion>(map);
  }

  static TaigaCommentVersion fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaCommentVersion>(json);
  }
}

mixin TaigaCommentVersionMappable {
  String toJson() {
    return TaigaCommentVersionMapper.ensureInitialized()
        .encodeJson<TaigaCommentVersion>(this as TaigaCommentVersion);
  }

  Map<String, dynamic> toMap() {
    return TaigaCommentVersionMapper.ensureInitialized()
        .encodeMap<TaigaCommentVersion>(this as TaigaCommentVersion);
  }

  TaigaCommentVersionCopyWith<TaigaCommentVersion, TaigaCommentVersion,
          TaigaCommentVersion>
      get copyWith => _TaigaCommentVersionCopyWithImpl(
          this as TaigaCommentVersion, $identity, $identity);
  @override
  String toString() {
    return TaigaCommentVersionMapper.ensureInitialized()
        .stringifyValue(this as TaigaCommentVersion);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaCommentVersionMapper.ensureInitialized()
                .isValueEqual(this as TaigaCommentVersion, other));
  }

  @override
  int get hashCode {
    return TaigaCommentVersionMapper.ensureInitialized()
        .hashValue(this as TaigaCommentVersion);
  }
}

extension TaigaCommentVersionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaCommentVersion, $Out> {
  TaigaCommentVersionCopyWith<$R, TaigaCommentVersion, $Out>
      get $asTaigaCommentVersion =>
          $base.as((v, t, t2) => _TaigaCommentVersionCopyWithImpl(v, t, t2));
}

abstract class TaigaCommentVersionCopyWith<$R, $In extends TaigaCommentVersion,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {DateTime? modificationDate,
      String? comment,
      String? commentHtml,
      int? userOwner});
  TaigaCommentVersionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TaigaCommentVersionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaCommentVersion, $Out>
    implements TaigaCommentVersionCopyWith<$R, TaigaCommentVersion, $Out> {
  _TaigaCommentVersionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaCommentVersion> $mapper =
      TaigaCommentVersionMapper.ensureInitialized();
  @override
  $R call(
          {DateTime? modificationDate,
          String? comment,
          String? commentHtml,
          Object? userOwner = $none}) =>
      $apply(FieldCopyWithData({
        if (modificationDate != null) #modificationDate: modificationDate,
        if (comment != null) #comment: comment,
        if (commentHtml != null) #commentHtml: commentHtml,
        if (userOwner != $none) #userOwner: userOwner
      }));
  @override
  TaigaCommentVersion $make(CopyWithData data) => TaigaCommentVersion(
      modificationDate:
          data.get(#modificationDate, or: $value.modificationDate),
      comment: data.get(#comment, or: $value.comment),
      commentHtml: data.get(#commentHtml, or: $value.commentHtml),
      userOwner: data.get(#userOwner, or: $value.userOwner));

  @override
  TaigaCommentVersionCopyWith<$R2, TaigaCommentVersion, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TaigaCommentVersionCopyWithImpl($value, $cast, t);
}

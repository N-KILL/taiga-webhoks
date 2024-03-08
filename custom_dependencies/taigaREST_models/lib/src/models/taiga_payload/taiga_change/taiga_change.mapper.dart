// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'taiga_change.dart';

class TaigaChangeMapper extends ClassMapperBase<TaigaChange> {
  TaigaChangeMapper._();

  static TaigaChangeMapper? _instance;
  static TaigaChangeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaChangeMapper._());
      TaigaCommentVersionMapper.ensureInitialized();
      TaigaChangeDifferenceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaChange';

  static String? _$comment(TaigaChange v) => v.comment;
  static const Field<TaigaChange, String> _f$comment =
      Field('comment', _$comment);
  static String? _$commentHtml(TaigaChange v) => v.commentHtml;
  static const Field<TaigaChange, String> _f$commentHtml =
      Field('commentHtml', _$commentHtml);
  static DateTime? _$deleteCommentDate(TaigaChange v) => v.deleteCommentDate;
  static const Field<TaigaChange, DateTime> _f$deleteCommentDate =
      Field('deleteCommentDate', _$deleteCommentDate);
  static List<TaigaCommentVersion>? _$commentVersions(TaigaChange v) =>
      v.commentVersions;
  static const Field<TaigaChange, List<TaigaCommentVersion>>
      _f$commentVersions = Field('commentVersions', _$commentVersions);
  static DateTime? _$editCommentDate(TaigaChange v) => v.editCommentDate;
  static const Field<TaigaChange, DateTime> _f$editCommentDate =
      Field('editCommentDate', _$editCommentDate);
  static TaigaChangeDifference? _$difference(TaigaChange v) => v.difference;
  static const Field<TaigaChange, TaigaChangeDifference> _f$difference =
      Field('difference', _$difference, key: 'diff');

  @override
  final Map<Symbol, Field<TaigaChange, dynamic>> fields = const {
    #comment: _f$comment,
    #commentHtml: _f$commentHtml,
    #deleteCommentDate: _f$deleteCommentDate,
    #commentVersions: _f$commentVersions,
    #editCommentDate: _f$editCommentDate,
    #difference: _f$difference,
  };

  static TaigaChange _instantiate(DecodingData data) {
    return TaigaChange(
        comment: data.dec(_f$comment),
        commentHtml: data.dec(_f$commentHtml),
        deleteCommentDate: data.dec(_f$deleteCommentDate),
        commentVersions: data.dec(_f$commentVersions),
        editCommentDate: data.dec(_f$editCommentDate),
        difference: data.dec(_f$difference));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaChange fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaChange>(map);
  }

  static TaigaChange fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaChange>(json);
  }
}

mixin TaigaChangeMappable {
  String toJson() {
    return TaigaChangeMapper.ensureInitialized()
        .encodeJson<TaigaChange>(this as TaigaChange);
  }

  Map<String, dynamic> toMap() {
    return TaigaChangeMapper.ensureInitialized()
        .encodeMap<TaigaChange>(this as TaigaChange);
  }

  TaigaChangeCopyWith<TaigaChange, TaigaChange, TaigaChange> get copyWith =>
      _TaigaChangeCopyWithImpl(this as TaigaChange, $identity, $identity);
  @override
  String toString() {
    return TaigaChangeMapper.ensureInitialized()
        .stringifyValue(this as TaigaChange);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaChangeMapper.ensureInitialized()
                .isValueEqual(this as TaigaChange, other));
  }

  @override
  int get hashCode {
    return TaigaChangeMapper.ensureInitialized().hashValue(this as TaigaChange);
  }
}

extension TaigaChangeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaChange, $Out> {
  TaigaChangeCopyWith<$R, TaigaChange, $Out> get $asTaigaChange =>
      $base.as((v, t, t2) => _TaigaChangeCopyWithImpl(v, t, t2));
}

abstract class TaigaChangeCopyWith<$R, $In extends TaigaChange, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      TaigaCommentVersion,
      TaigaCommentVersionCopyWith<$R, TaigaCommentVersion,
          TaigaCommentVersion>>? get commentVersions;
  TaigaChangeDifferenceCopyWith<$R, TaigaChangeDifference,
      TaigaChangeDifference>? get difference;
  $R call(
      {String? comment,
      String? commentHtml,
      DateTime? deleteCommentDate,
      List<TaigaCommentVersion>? commentVersions,
      DateTime? editCommentDate,
      TaigaChangeDifference? difference});
  TaigaChangeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaChangeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaChange, $Out>
    implements TaigaChangeCopyWith<$R, TaigaChange, $Out> {
  _TaigaChangeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaChange> $mapper =
      TaigaChangeMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      TaigaCommentVersion,
      TaigaCommentVersionCopyWith<$R, TaigaCommentVersion,
          TaigaCommentVersion>>? get commentVersions =>
      $value.commentVersions != null
          ? ListCopyWith($value.commentVersions!,
              (v, t) => v.copyWith.$chain(t), (v) => call(commentVersions: v))
          : null;
  @override
  TaigaChangeDifferenceCopyWith<$R, TaigaChangeDifference,
          TaigaChangeDifference>?
      get difference =>
          $value.difference?.copyWith.$chain((v) => call(difference: v));
  @override
  $R call(
          {Object? comment = $none,
          Object? commentHtml = $none,
          Object? deleteCommentDate = $none,
          Object? commentVersions = $none,
          Object? editCommentDate = $none,
          Object? difference = $none}) =>
      $apply(FieldCopyWithData({
        if (comment != $none) #comment: comment,
        if (commentHtml != $none) #commentHtml: commentHtml,
        if (deleteCommentDate != $none) #deleteCommentDate: deleteCommentDate,
        if (commentVersions != $none) #commentVersions: commentVersions,
        if (editCommentDate != $none) #editCommentDate: editCommentDate,
        if (difference != $none) #difference: difference
      }));
  @override
  TaigaChange $make(CopyWithData data) => TaigaChange(
      comment: data.get(#comment, or: $value.comment),
      commentHtml: data.get(#commentHtml, or: $value.commentHtml),
      deleteCommentDate:
          data.get(#deleteCommentDate, or: $value.deleteCommentDate),
      commentVersions: data.get(#commentVersions, or: $value.commentVersions),
      editCommentDate: data.get(#editCommentDate, or: $value.editCommentDate),
      difference: data.get(#difference, or: $value.difference));

  @override
  TaigaChangeCopyWith<$R2, TaigaChange, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaChangeCopyWithImpl($value, $cast, t);
}

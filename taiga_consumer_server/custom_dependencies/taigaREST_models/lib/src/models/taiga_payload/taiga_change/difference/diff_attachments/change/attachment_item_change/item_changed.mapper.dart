// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item_changed.dart';

class AttachmentItemChangedMapper
    extends ClassMapperBase<AttachmentItemChanged> {
  AttachmentItemChangedMapper._();

  static AttachmentItemChangedMapper? _instance;
  static AttachmentItemChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AttachmentItemChangedMapper._());
      ItemChangesInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AttachmentItemChanged';

  static String _$filename(AttachmentItemChanged v) => v.filename;
  static const Field<AttachmentItemChanged, String> _f$filename =
      Field('filename', _$filename);
  static String _$url(AttachmentItemChanged v) => v.url;
  static const Field<AttachmentItemChanged, String> _f$url =
      Field('url', _$url);
  static String? _$thumbUrl(AttachmentItemChanged v) => v.thumbUrl;
  static const Field<AttachmentItemChanged, String> _f$thumbUrl =
      Field('thumbUrl', _$thumbUrl, key: 'thumb_url');
  static ItemChangesInfo _$changes(AttachmentItemChanged v) => v.changes;
  static const Field<AttachmentItemChanged, ItemChangesInfo> _f$changes =
      Field('changes', _$changes);

  @override
  final Map<Symbol, Field<AttachmentItemChanged, dynamic>> fields = const {
    #filename: _f$filename,
    #url: _f$url,
    #thumbUrl: _f$thumbUrl,
    #changes: _f$changes,
  };

  static AttachmentItemChanged _instantiate(DecodingData data) {
    return AttachmentItemChanged(
        filename: data.dec(_f$filename),
        url: data.dec(_f$url),
        thumbUrl: data.dec(_f$thumbUrl),
        changes: data.dec(_f$changes));
  }

  @override
  final Function instantiate = _instantiate;

  static AttachmentItemChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AttachmentItemChanged>(map);
  }

  static AttachmentItemChanged fromJson(String json) {
    return ensureInitialized().decodeJson<AttachmentItemChanged>(json);
  }
}

mixin AttachmentItemChangedMappable {
  String toJson() {
    return AttachmentItemChangedMapper.ensureInitialized()
        .encodeJson<AttachmentItemChanged>(this as AttachmentItemChanged);
  }

  Map<String, dynamic> toMap() {
    return AttachmentItemChangedMapper.ensureInitialized()
        .encodeMap<AttachmentItemChanged>(this as AttachmentItemChanged);
  }

  AttachmentItemChangedCopyWith<AttachmentItemChanged, AttachmentItemChanged,
          AttachmentItemChanged>
      get copyWith => _AttachmentItemChangedCopyWithImpl(
          this as AttachmentItemChanged, $identity, $identity);
  @override
  String toString() {
    return AttachmentItemChangedMapper.ensureInitialized()
        .stringifyValue(this as AttachmentItemChanged);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AttachmentItemChangedMapper.ensureInitialized()
                .isValueEqual(this as AttachmentItemChanged, other));
  }

  @override
  int get hashCode {
    return AttachmentItemChangedMapper.ensureInitialized()
        .hashValue(this as AttachmentItemChanged);
  }
}

extension AttachmentItemChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AttachmentItemChanged, $Out> {
  AttachmentItemChangedCopyWith<$R, AttachmentItemChanged, $Out>
      get $asAttachmentItemChanged =>
          $base.as((v, t, t2) => _AttachmentItemChangedCopyWithImpl(v, t, t2));
}

abstract class AttachmentItemChangedCopyWith<
    $R,
    $In extends AttachmentItemChanged,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ItemChangesInfoCopyWith<$R, ItemChangesInfo, ItemChangesInfo> get changes;
  $R call(
      {String? filename,
      String? url,
      String? thumbUrl,
      ItemChangesInfo? changes});
  AttachmentItemChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AttachmentItemChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AttachmentItemChanged, $Out>
    implements AttachmentItemChangedCopyWith<$R, AttachmentItemChanged, $Out> {
  _AttachmentItemChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AttachmentItemChanged> $mapper =
      AttachmentItemChangedMapper.ensureInitialized();
  @override
  ItemChangesInfoCopyWith<$R, ItemChangesInfo, ItemChangesInfo> get changes =>
      $value.changes.copyWith.$chain((v) => call(changes: v));
  @override
  $R call(
          {String? filename,
          String? url,
          Object? thumbUrl = $none,
          ItemChangesInfo? changes}) =>
      $apply(FieldCopyWithData({
        if (filename != null) #filename: filename,
        if (url != null) #url: url,
        if (thumbUrl != $none) #thumbUrl: thumbUrl,
        if (changes != null) #changes: changes
      }));
  @override
  AttachmentItemChanged $make(CopyWithData data) => AttachmentItemChanged(
      filename: data.get(#filename, or: $value.filename),
      url: data.get(#url, or: $value.url),
      thumbUrl: data.get(#thumbUrl, or: $value.thumbUrl),
      changes: data.get(#changes, or: $value.changes));

  @override
  AttachmentItemChangedCopyWith<$R2, AttachmentItemChanged, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AttachmentItemChangedCopyWithImpl($value, $cast, t);
}

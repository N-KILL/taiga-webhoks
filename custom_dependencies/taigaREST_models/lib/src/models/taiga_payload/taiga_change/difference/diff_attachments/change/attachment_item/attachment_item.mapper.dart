// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'attachment_item.dart';

class AttachmentItemMapper extends ClassMapperBase<AttachmentItem> {
  AttachmentItemMapper._();

  static AttachmentItemMapper? _instance;
  static AttachmentItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AttachmentItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AttachmentItem';

  static int _$itemId(AttachmentItem v) => v.itemId;
  static const Field<AttachmentItem, int> _f$itemId =
      Field('itemId', _$itemId, key: 'id');
  static String _$filename(AttachmentItem v) => v.filename;
  static const Field<AttachmentItem, String> _f$filename =
      Field('filename', _$filename);
  static String _$itemUrl(AttachmentItem v) => v.itemUrl;
  static const Field<AttachmentItem, String> _f$itemUrl =
      Field('itemUrl', _$itemUrl, key: 'url');
  static String _$attachedFile(AttachmentItem v) => v.attachedFile;
  static const Field<AttachmentItem, String> _f$attachedFile =
      Field('attachedFile', _$attachedFile, key: 'attached_file');
  static String? _$thumbnailFile(AttachmentItem v) => v.thumbnailFile;
  static const Field<AttachmentItem, String> _f$thumbnailFile =
      Field('thumbnailFile', _$thumbnailFile, key: 'thumbnail_file');
  static bool _$itemStatus(AttachmentItem v) => v.itemStatus;
  static const Field<AttachmentItem, bool> _f$itemStatus =
      Field('itemStatus', _$itemStatus, key: 'is_deprecated');
  static String _$itemDescription(AttachmentItem v) => v.itemDescription;
  static const Field<AttachmentItem, String> _f$itemDescription =
      Field('itemDescription', _$itemDescription, key: 'description');
  static int _$order(AttachmentItem v) => v.order;
  static const Field<AttachmentItem, int> _f$order = Field('order', _$order);

  @override
  final Map<Symbol, Field<AttachmentItem, dynamic>> fields = const {
    #itemId: _f$itemId,
    #filename: _f$filename,
    #itemUrl: _f$itemUrl,
    #attachedFile: _f$attachedFile,
    #thumbnailFile: _f$thumbnailFile,
    #itemStatus: _f$itemStatus,
    #itemDescription: _f$itemDescription,
    #order: _f$order,
  };

  static AttachmentItem _instantiate(DecodingData data) {
    return AttachmentItem(
        itemId: data.dec(_f$itemId),
        filename: data.dec(_f$filename),
        itemUrl: data.dec(_f$itemUrl),
        attachedFile: data.dec(_f$attachedFile),
        thumbnailFile: data.dec(_f$thumbnailFile),
        itemStatus: data.dec(_f$itemStatus),
        itemDescription: data.dec(_f$itemDescription),
        order: data.dec(_f$order));
  }

  @override
  final Function instantiate = _instantiate;

  static AttachmentItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AttachmentItem>(map);
  }

  static AttachmentItem fromJson(String json) {
    return ensureInitialized().decodeJson<AttachmentItem>(json);
  }
}

mixin AttachmentItemMappable {
  String toJson() {
    return AttachmentItemMapper.ensureInitialized()
        .encodeJson<AttachmentItem>(this as AttachmentItem);
  }

  Map<String, dynamic> toMap() {
    return AttachmentItemMapper.ensureInitialized()
        .encodeMap<AttachmentItem>(this as AttachmentItem);
  }

  AttachmentItemCopyWith<AttachmentItem, AttachmentItem, AttachmentItem>
      get copyWith => _AttachmentItemCopyWithImpl(
          this as AttachmentItem, $identity, $identity);
  @override
  String toString() {
    return AttachmentItemMapper.ensureInitialized()
        .stringifyValue(this as AttachmentItem);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AttachmentItemMapper.ensureInitialized()
                .isValueEqual(this as AttachmentItem, other));
  }

  @override
  int get hashCode {
    return AttachmentItemMapper.ensureInitialized()
        .hashValue(this as AttachmentItem);
  }
}

extension AttachmentItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AttachmentItem, $Out> {
  AttachmentItemCopyWith<$R, AttachmentItem, $Out> get $asAttachmentItem =>
      $base.as((v, t, t2) => _AttachmentItemCopyWithImpl(v, t, t2));
}

abstract class AttachmentItemCopyWith<$R, $In extends AttachmentItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? itemId,
      String? filename,
      String? itemUrl,
      String? attachedFile,
      String? thumbnailFile,
      bool? itemStatus,
      String? itemDescription,
      int? order});
  AttachmentItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AttachmentItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AttachmentItem, $Out>
    implements AttachmentItemCopyWith<$R, AttachmentItem, $Out> {
  _AttachmentItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AttachmentItem> $mapper =
      AttachmentItemMapper.ensureInitialized();
  @override
  $R call(
          {int? itemId,
          String? filename,
          String? itemUrl,
          String? attachedFile,
          Object? thumbnailFile = $none,
          bool? itemStatus,
          String? itemDescription,
          int? order}) =>
      $apply(FieldCopyWithData({
        if (itemId != null) #itemId: itemId,
        if (filename != null) #filename: filename,
        if (itemUrl != null) #itemUrl: itemUrl,
        if (attachedFile != null) #attachedFile: attachedFile,
        if (thumbnailFile != $none) #thumbnailFile: thumbnailFile,
        if (itemStatus != null) #itemStatus: itemStatus,
        if (itemDescription != null) #itemDescription: itemDescription,
        if (order != null) #order: order
      }));
  @override
  AttachmentItem $make(CopyWithData data) => AttachmentItem(
      itemId: data.get(#itemId, or: $value.itemId),
      filename: data.get(#filename, or: $value.filename),
      itemUrl: data.get(#itemUrl, or: $value.itemUrl),
      attachedFile: data.get(#attachedFile, or: $value.attachedFile),
      thumbnailFile: data.get(#thumbnailFile, or: $value.thumbnailFile),
      itemStatus: data.get(#itemStatus, or: $value.itemStatus),
      itemDescription: data.get(#itemDescription, or: $value.itemDescription),
      order: data.get(#order, or: $value.order));

  @override
  AttachmentItemCopyWith<$R2, AttachmentItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AttachmentItemCopyWithImpl($value, $cast, t);
}

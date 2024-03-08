// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'attachments_change.dart';

class AttachmentsChangeMapper extends ClassMapperBase<AttachmentsChange> {
  AttachmentsChangeMapper._();

  static AttachmentsChangeMapper? _instance;
  static AttachmentsChangeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AttachmentsChangeMapper._());
      AttachmentItemMapper.ensureInitialized();
      AttachmentItemChangedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AttachmentsChange';

  static List<AttachmentItem> _$attachmentNew(AttachmentsChange v) =>
      v.attachmentNew;
  static const Field<AttachmentsChange, List<AttachmentItem>> _f$attachmentNew =
      Field('attachmentNew', _$attachmentNew, key: 'new');
  static List<AttachmentItemChanged> _$attachmentChanged(AttachmentsChange v) =>
      v.attachmentChanged;
  static const Field<AttachmentsChange, List<AttachmentItemChanged>>
      _f$attachmentChanged =
      Field('attachmentChanged', _$attachmentChanged, key: 'changed');
  static List<AttachmentItem> _$attachmentDeleted(AttachmentsChange v) =>
      v.attachmentDeleted;
  static const Field<AttachmentsChange, List<AttachmentItem>>
      _f$attachmentDeleted =
      Field('attachmentDeleted', _$attachmentDeleted, key: 'deleted');

  @override
  final Map<Symbol, Field<AttachmentsChange, dynamic>> fields = const {
    #attachmentNew: _f$attachmentNew,
    #attachmentChanged: _f$attachmentChanged,
    #attachmentDeleted: _f$attachmentDeleted,
  };

  static AttachmentsChange _instantiate(DecodingData data) {
    return AttachmentsChange(
        attachmentNew: data.dec(_f$attachmentNew),
        attachmentChanged: data.dec(_f$attachmentChanged),
        attachmentDeleted: data.dec(_f$attachmentDeleted));
  }

  @override
  final Function instantiate = _instantiate;

  static AttachmentsChange fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AttachmentsChange>(map);
  }

  static AttachmentsChange fromJson(String json) {
    return ensureInitialized().decodeJson<AttachmentsChange>(json);
  }
}

mixin AttachmentsChangeMappable {
  String toJson() {
    return AttachmentsChangeMapper.ensureInitialized()
        .encodeJson<AttachmentsChange>(this as AttachmentsChange);
  }

  Map<String, dynamic> toMap() {
    return AttachmentsChangeMapper.ensureInitialized()
        .encodeMap<AttachmentsChange>(this as AttachmentsChange);
  }

  AttachmentsChangeCopyWith<AttachmentsChange, AttachmentsChange,
          AttachmentsChange>
      get copyWith => _AttachmentsChangeCopyWithImpl(
          this as AttachmentsChange, $identity, $identity);
  @override
  String toString() {
    return AttachmentsChangeMapper.ensureInitialized()
        .stringifyValue(this as AttachmentsChange);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AttachmentsChangeMapper.ensureInitialized()
                .isValueEqual(this as AttachmentsChange, other));
  }

  @override
  int get hashCode {
    return AttachmentsChangeMapper.ensureInitialized()
        .hashValue(this as AttachmentsChange);
  }
}

extension AttachmentsChangeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AttachmentsChange, $Out> {
  AttachmentsChangeCopyWith<$R, AttachmentsChange, $Out>
      get $asAttachmentsChange =>
          $base.as((v, t, t2) => _AttachmentsChangeCopyWithImpl(v, t, t2));
}

abstract class AttachmentsChangeCopyWith<$R, $In extends AttachmentsChange,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, AttachmentItem,
          AttachmentItemCopyWith<$R, AttachmentItem, AttachmentItem>>
      get attachmentNew;
  ListCopyWith<
      $R,
      AttachmentItemChanged,
      AttachmentItemChangedCopyWith<$R, AttachmentItemChanged,
          AttachmentItemChanged>> get attachmentChanged;
  ListCopyWith<$R, AttachmentItem,
          AttachmentItemCopyWith<$R, AttachmentItem, AttachmentItem>>
      get attachmentDeleted;
  $R call(
      {List<AttachmentItem>? attachmentNew,
      List<AttachmentItemChanged>? attachmentChanged,
      List<AttachmentItem>? attachmentDeleted});
  AttachmentsChangeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AttachmentsChangeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AttachmentsChange, $Out>
    implements AttachmentsChangeCopyWith<$R, AttachmentsChange, $Out> {
  _AttachmentsChangeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AttachmentsChange> $mapper =
      AttachmentsChangeMapper.ensureInitialized();
  @override
  ListCopyWith<$R, AttachmentItem,
          AttachmentItemCopyWith<$R, AttachmentItem, AttachmentItem>>
      get attachmentNew => ListCopyWith($value.attachmentNew,
          (v, t) => v.copyWith.$chain(t), (v) => call(attachmentNew: v));
  @override
  ListCopyWith<
      $R,
      AttachmentItemChanged,
      AttachmentItemChangedCopyWith<$R, AttachmentItemChanged,
          AttachmentItemChanged>> get attachmentChanged => ListCopyWith(
      $value.attachmentChanged,
      (v, t) => v.copyWith.$chain(t),
      (v) => call(attachmentChanged: v));
  @override
  ListCopyWith<$R, AttachmentItem,
          AttachmentItemCopyWith<$R, AttachmentItem, AttachmentItem>>
      get attachmentDeleted => ListCopyWith($value.attachmentDeleted,
          (v, t) => v.copyWith.$chain(t), (v) => call(attachmentDeleted: v));
  @override
  $R call(
          {List<AttachmentItem>? attachmentNew,
          List<AttachmentItemChanged>? attachmentChanged,
          List<AttachmentItem>? attachmentDeleted}) =>
      $apply(FieldCopyWithData({
        if (attachmentNew != null) #attachmentNew: attachmentNew,
        if (attachmentChanged != null) #attachmentChanged: attachmentChanged,
        if (attachmentDeleted != null) #attachmentDeleted: attachmentDeleted
      }));
  @override
  AttachmentsChange $make(CopyWithData data) => AttachmentsChange(
      attachmentNew: data.get(#attachmentNew, or: $value.attachmentNew),
      attachmentChanged:
          data.get(#attachmentChanged, or: $value.attachmentChanged),
      attachmentDeleted:
          data.get(#attachmentDeleted, or: $value.attachmentDeleted));

  @override
  AttachmentsChangeCopyWith<$R2, AttachmentsChange, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AttachmentsChangeCopyWithImpl($value, $cast, t);
}

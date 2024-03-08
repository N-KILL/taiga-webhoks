import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/diff_attachments/change/attachment_item/attachment_item.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/diff_attachments/change/attachment_item_change/item_changed.dart';


part 'attachments_change.mapper.dart';

/// This class will storage the changes made into an attachment on Taiga it
/// came on three list, new, changed & deleted, any list can came as empty and
/// only storage one item per payload
@MappableClass(caseStyle: CaseStyle.snakeCase)
class AttachmentsChange
    with AttachmentsChangeMappable {
  /// Constructor of the CustomAttachments class
  AttachmentsChange({
    required this.attachmentNew,
    required this.attachmentChanged,
    required this.attachmentDeleted,
  });
  /// [AttachmentItem] instance.
  /// `attachmentNew:` This is the new Attachment added into a job
  @MappableField(key: 'new')
  List<AttachmentItem> attachmentNew;

  /// [AttachmentItemChanged] instance.
  /// `attachmentChanged:` This will storage the change made into an Attachment
  @MappableField(key: 'changed')
  List<AttachmentItemChanged> attachmentChanged;

  /// [AttachmentItem] instance.
  /// `attachmentDeleted:` This will storage if an attachment was deleted
  @MappableField(key: 'deleted')
  List<AttachmentItem> attachmentDeleted;

  /// FromJson method, convert a json type object into this
  /// TaigaDifferenceCustomAttachments Object
  static const fromJson = AttachmentsChangeMapper.fromJson;
}

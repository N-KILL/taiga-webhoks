import 'package:dart_mappable/dart_mappable.dart';

part 'attachment_item.mapper.dart';

/// This class if for saving the stuff on the Attachments section. Any type
/// of attachment added into a Job will be storage his data in this class
@MappableClass(caseStyle: CaseStyle.snakeCase)
class AttachmentItem with AttachmentItemMappable {
  /// Constructor of the 'Item' class
  AttachmentItem({
    required this.itemId,
    required this.filename,
    required this.itemUrl,
    required this.attachedFile,
    required this.thumbnailFile,
    required this.itemStatus,
    required this.itemDescription,
    required this.order,
  });

  /// `itemId` Id of the new attachment on `Taiga`.
  @MappableField(key: 'id')
  int itemId;

  /// `filename:` Name of the file of item.
  String filename;

  /// `itemUrl:` Url of the attachments. Example:
  /// https://media-protected.taiga.io/ATTACHMENT-PATH?token=TOKEN"
  @MappableField(key: 'url')
  String itemUrl;

  /// `attachedFile:` Its a custom `Taiga` path where the file is saved
  String attachedFile;

  /// `thumbnailFile` Its a custom `Taiga` path
  String? thumbnailFile;

  /// `itemStatus:` Its just a bool showing an status of the attachment, if
  /// is deprecated or not deprecated. Came as a [bool], so can be
  /// `True` or `False`.
  @MappableField(key: 'is_deprecated')
  bool itemStatus;

  /// `itemDescription:` Its the description for the attachment, if don't have
  /// any, it just came as an empty string: `""`.
  @MappableField(key: 'description')
  String itemDescription;

  /// `order:` Its the Position of the attachment.
  int order;

  /// FromJson method, convert a json type object into this
  /// ItemChanged Object
  static const fromJson = AttachmentItemMapper.fromJson;
}

import 'package:dart_mappable/dart_mappable.dart';

part 'item_changes_info.mapper.dart';

/// This class will storage the change madded into an attached item, there is
/// only two changes you can made, the description and the status of the item
/// both came in lists on the payload
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ItemChangesInfo with ItemChangesInfoMappable {
  /// Constructor for the Changes class
  ItemChangesInfo({
    required this.itemDescription,
    required this.itemStatus,
  });

  /// `itemDescription:` Its the Description of the attachment item, list value 
  /// index [0] will be the old  value, and it can be an empty string: `""` if 
  /// was originally empty, list value index [1], is the new value of the 
  /// description of the item
  @MappableField(key: 'description')
  List<String>? itemDescription;

  /// `itemStatus:` `Taiga` status of the attachment item, if is deprecated or 
  /// not. Its a [bool] so can be `True` or `False`
  @MappableField(key: 'is_deprecated')
  List<bool>? itemStatus;

  /// FromJson method, convert a json type object into this 
  /// ItemChangesInfo Object
  static const fromJson = ItemChangesInfoMapper.fromJson;
}

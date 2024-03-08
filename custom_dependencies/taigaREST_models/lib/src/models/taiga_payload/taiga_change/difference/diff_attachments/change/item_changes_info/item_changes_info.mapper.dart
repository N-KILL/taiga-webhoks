// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item_changes_info.dart';

class ItemChangesInfoMapper extends ClassMapperBase<ItemChangesInfo> {
  ItemChangesInfoMapper._();

  static ItemChangesInfoMapper? _instance;
  static ItemChangesInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemChangesInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ItemChangesInfo';

  static List<String>? _$itemDescription(ItemChangesInfo v) =>
      v.itemDescription;
  static const Field<ItemChangesInfo, List<String>> _f$itemDescription =
      Field('itemDescription', _$itemDescription, key: 'description');
  static List<bool>? _$itemStatus(ItemChangesInfo v) => v.itemStatus;
  static const Field<ItemChangesInfo, List<bool>> _f$itemStatus =
      Field('itemStatus', _$itemStatus, key: 'is_deprecated');

  @override
  final Map<Symbol, Field<ItemChangesInfo, dynamic>> fields = const {
    #itemDescription: _f$itemDescription,
    #itemStatus: _f$itemStatus,
  };

  static ItemChangesInfo _instantiate(DecodingData data) {
    return ItemChangesInfo(
        itemDescription: data.dec(_f$itemDescription),
        itemStatus: data.dec(_f$itemStatus));
  }

  @override
  final Function instantiate = _instantiate;

  static ItemChangesInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemChangesInfo>(map);
  }

  static ItemChangesInfo fromJson(String json) {
    return ensureInitialized().decodeJson<ItemChangesInfo>(json);
  }
}

mixin ItemChangesInfoMappable {
  String toJson() {
    return ItemChangesInfoMapper.ensureInitialized()
        .encodeJson<ItemChangesInfo>(this as ItemChangesInfo);
  }

  Map<String, dynamic> toMap() {
    return ItemChangesInfoMapper.ensureInitialized()
        .encodeMap<ItemChangesInfo>(this as ItemChangesInfo);
  }

  ItemChangesInfoCopyWith<ItemChangesInfo, ItemChangesInfo, ItemChangesInfo>
      get copyWith => _ItemChangesInfoCopyWithImpl(
          this as ItemChangesInfo, $identity, $identity);
  @override
  String toString() {
    return ItemChangesInfoMapper.ensureInitialized()
        .stringifyValue(this as ItemChangesInfo);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ItemChangesInfoMapper.ensureInitialized()
                .isValueEqual(this as ItemChangesInfo, other));
  }

  @override
  int get hashCode {
    return ItemChangesInfoMapper.ensureInitialized()
        .hashValue(this as ItemChangesInfo);
  }
}

extension ItemChangesInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ItemChangesInfo, $Out> {
  ItemChangesInfoCopyWith<$R, ItemChangesInfo, $Out> get $asItemChangesInfo =>
      $base.as((v, t, t2) => _ItemChangesInfoCopyWithImpl(v, t, t2));
}

abstract class ItemChangesInfoCopyWith<$R, $In extends ItemChangesInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get itemDescription;
  ListCopyWith<$R, bool, ObjectCopyWith<$R, bool, bool>>? get itemStatus;
  $R call({List<String>? itemDescription, List<bool>? itemStatus});
  ItemChangesInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ItemChangesInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemChangesInfo, $Out>
    implements ItemChangesInfoCopyWith<$R, ItemChangesInfo, $Out> {
  _ItemChangesInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemChangesInfo> $mapper =
      ItemChangesInfoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get itemDescription => $value.itemDescription != null
          ? ListCopyWith(
              $value.itemDescription!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(itemDescription: v))
          : null;
  @override
  ListCopyWith<$R, bool, ObjectCopyWith<$R, bool, bool>>? get itemStatus =>
      $value.itemStatus != null
          ? ListCopyWith(
              $value.itemStatus!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(itemStatus: v))
          : null;
  @override
  $R call({Object? itemDescription = $none, Object? itemStatus = $none}) =>
      $apply(FieldCopyWithData({
        if (itemDescription != $none) #itemDescription: itemDescription,
        if (itemStatus != $none) #itemStatus: itemStatus
      }));
  @override
  ItemChangesInfo $make(CopyWithData data) => ItemChangesInfo(
      itemDescription: data.get(#itemDescription, or: $value.itemDescription),
      itemStatus: data.get(#itemStatus, or: $value.itemStatus));

  @override
  ItemChangesInfoCopyWith<$R2, ItemChangesInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ItemChangesInfoCopyWithImpl($value, $cast, t);
}

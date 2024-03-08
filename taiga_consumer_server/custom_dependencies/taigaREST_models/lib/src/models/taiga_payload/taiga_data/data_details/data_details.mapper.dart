// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'data_details.dart';

class DataDetailsMapper extends ClassMapperBase<DataDetails> {
  DataDetailsMapper._();

  static DataDetailsMapper? _instance;
  static DataDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DataDetailsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DataDetails';

  static int _$detailId(DataDetails v) => v.detailId;
  static const Field<DataDetails, int> _f$detailId =
      Field('detailId', _$detailId, key: 'id');
  static String _$detailName(DataDetails v) => v.detailName;
  static const Field<DataDetails, String> _f$detailName =
      Field('detailName', _$detailName, key: 'name');
  static String _$detailColor(DataDetails v) => v.detailColor;
  static const Field<DataDetails, String> _f$detailColor =
      Field('detailColor', _$detailColor, key: 'color');

  @override
  final Map<Symbol, Field<DataDetails, dynamic>> fields = const {
    #detailId: _f$detailId,
    #detailName: _f$detailName,
    #detailColor: _f$detailColor,
  };

  static DataDetails _instantiate(DecodingData data) {
    return DataDetails(
        detailId: data.dec(_f$detailId),
        detailName: data.dec(_f$detailName),
        detailColor: data.dec(_f$detailColor));
  }

  @override
  final Function instantiate = _instantiate;

  static DataDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DataDetails>(map);
  }

  static DataDetails fromJson(String json) {
    return ensureInitialized().decodeJson<DataDetails>(json);
  }
}

mixin DataDetailsMappable {
  String toJson() {
    return DataDetailsMapper.ensureInitialized()
        .encodeJson<DataDetails>(this as DataDetails);
  }

  Map<String, dynamic> toMap() {
    return DataDetailsMapper.ensureInitialized()
        .encodeMap<DataDetails>(this as DataDetails);
  }

  DataDetailsCopyWith<DataDetails, DataDetails, DataDetails> get copyWith =>
      _DataDetailsCopyWithImpl(this as DataDetails, $identity, $identity);
  @override
  String toString() {
    return DataDetailsMapper.ensureInitialized()
        .stringifyValue(this as DataDetails);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            DataDetailsMapper.ensureInitialized()
                .isValueEqual(this as DataDetails, other));
  }

  @override
  int get hashCode {
    return DataDetailsMapper.ensureInitialized().hashValue(this as DataDetails);
  }
}

extension DataDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DataDetails, $Out> {
  DataDetailsCopyWith<$R, DataDetails, $Out> get $asDataDetails =>
      $base.as((v, t, t2) => _DataDetailsCopyWithImpl(v, t, t2));
}

abstract class DataDetailsCopyWith<$R, $In extends DataDetails, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? detailId, String? detailName, String? detailColor});
  DataDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DataDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DataDetails, $Out>
    implements DataDetailsCopyWith<$R, DataDetails, $Out> {
  _DataDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DataDetails> $mapper =
      DataDetailsMapper.ensureInitialized();
  @override
  $R call({int? detailId, String? detailName, String? detailColor}) =>
      $apply(FieldCopyWithData({
        if (detailId != null) #detailId: detailId,
        if (detailName != null) #detailName: detailName,
        if (detailColor != null) #detailColor: detailColor
      }));
  @override
  DataDetails $make(CopyWithData data) => DataDetails(
      detailId: data.get(#detailId, or: $value.detailId),
      detailName: data.get(#detailName, or: $value.detailName),
      detailColor: data.get(#detailColor, or: $value.detailColor));

  @override
  DataDetailsCopyWith<$R2, DataDetails, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DataDetailsCopyWithImpl($value, $cast, t);
}

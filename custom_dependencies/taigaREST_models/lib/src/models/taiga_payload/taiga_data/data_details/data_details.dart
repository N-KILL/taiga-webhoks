import 'package:dart_mappable/dart_mappable.dart';

part 'data_details.mapper.dart';

/// Is the details, comes from taiga as a custom value used for custom status
/// you can assign into an issue, this is part of taiga customization:
/// https://community.taiga.io/t/customisation-for-your-projects/127
@MappableClass(caseStyle: CaseStyle.snakeCase)
class DataDetails with DataDetailsMappable {
  /// Constructor of the Details class
  DataDetails({
    required this.detailId,
    required this.detailName,
    required this.detailColor,
  });

  /// `detailId:` Its the `Id` of the `Detail` on `Taiga`.
  @MappableField(key: 'id')
  int detailId;

  /// `detailName:` Its the name of the type of detail, custom value. <br>
  /// This is part of taiga customization:
  /// https://community.taiga.io/t/customisation-for-your-projects/127
  @MappableField(key: 'name')
  String detailName;

  /// `detailColor:` Its the color assigned to the detail, custom value. <br>
  /// This is part of taiga customization:
  /// https://community.taiga.io/t/customisation-for-your-projects/127
  @MappableField(key: 'color')
  String detailColor;

  /// FromJson method, convert a json type object into this DataDetails Object
  static const fromJson = DataDetailsMapper.fromJson;
}

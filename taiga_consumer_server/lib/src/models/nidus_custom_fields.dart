import 'package:dart_mappable/dart_mappable.dart';

part 'nidus_custom_fields.mapper.dart';

/// This `NidusCustomFields` class will storage all the custom fields on a 
/// object, this customized into the `Nidus` custom fields, on `Taiga projects`
@MappableClass(caseStyle: CaseStyle.snakeCase)
class NidusCustomFields with NidusCustomFieldsMappable {
  /// Constructor of the TaigaCustomAttributes class
  NidusCustomFields({
    this.figmaUrl,
    this.bounty,
    this.figmaToDeveloped,
  });

  /// `figmaUrl:` Its the Url link of figma assigned to a `UserStory`.
  @MappableField(key: 'Pestaña del Figma')
  String? figmaUrl;

  /// `figmaToDeveloped:` Url link of figma to be developed, this is related to
  /// a `jobType: Task`
  @MappableField(key: 'Componente en el Figma')
  String? figmaToDeveloped;

  /// `bounty:` Its tje Bounty assigned to a `task`
  @MappableField(key: 'Bounty')
  String? bounty;

  /// FromJson method, convert a json type object into this
  /// NidusCustomFields Object
  static const fromJson = NidusCustomFieldsMapper.fromJson;
}

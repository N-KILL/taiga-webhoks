import 'package:dart_mappable/dart_mappable.dart';

part 'nidus_custom_fields.mapper.dart';

//! This don't work with all custom fields, you need to modify this model
//! to use your own custom fields. How to (?):
//! https://community.taiga.io/t/can-i-add-new-custom-fields-to-my-project/150

/// This class will storage all the custom fields on a object, if you create
/// a taiga project, you will need to modify the TaigaCustomFields class
/// and mapper to read your own values
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
  /// TaigaCustomAttributes Object
  static const fromJson = NidusCustomFieldsMapper.fromJson;
}

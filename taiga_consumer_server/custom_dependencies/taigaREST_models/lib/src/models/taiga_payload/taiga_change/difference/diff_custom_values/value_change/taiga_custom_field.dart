import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/diff_custom_values/value_change/custom_field_change/custom_field_change.dart';

part 'taiga_custom_field.mapper.dart';

/// This `CustomField` class is made for storage all the data of an custom field
/// <h4>Taiga documentation about custom fields url:</h4>
/// https://taiga.pm/adding-custom-fields/ 
@MappableClass(caseStyle: CaseStyle.snakeCase)
class CustomField with CustomFieldMappable {
  /// Constructor of the CustomValue class
  CustomField({
    required this.customFieldId,
    required this.customFieldName,
    required this.customFieldType,
    required this.customFieldValue,
    required this.customFieldValueHtml,
    required this.valueChanges,
  });

  /// 'customFieldId:' This is the `Id` of the custom field on `Taiga` Project.
  @MappableField(key: 'id')
  int? customFieldId;

  /// `customFieldName:` Name of the custom field on `Taiga` Project.
  @MappableField(key: 'name')
  String? customFieldName;

  /// `customFieldType:` Type of the custom field on `Taiga` Project.
  @MappableField(key: 'type')
  String? customFieldType;

  /// `customFieldValue:` Value  of the custom field on `Taiga` Project.
  @MappableField(key: 'value')
  String? customFieldValue;

  /// [CustomFieldsChange] instance <br>.
  /// `valueChanges:` If a change was been made this will storage the data about
  /// what happen
  @MappableField(key: 'changes')
  CustomFieldsChange? valueChanges;

  /// `customFieldValueHtml:` This storage the html format value 
  @MappableField(key: 'value_diff')
  String? customFieldValueHtml;

  /// FromJson method, convert a json type object into this
  /// CustomValue Object
  static const fromJson = CustomFieldMapper.fromJson;
}

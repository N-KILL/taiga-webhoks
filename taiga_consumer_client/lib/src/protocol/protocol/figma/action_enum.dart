/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

enum ActionType with _i1.SerializableEntity {
  create_hu,
  update_hu_status,
  attach_to_sprint,
  update_hu_status_card,
  update_ready_for_dev_status;

  static ActionType? fromJson(String name) {
    switch (name) {
      case 'create_hu':
        return create_hu;
      case 'update_hu_status':
        return update_hu_status;
      case 'attach_to_sprint':
        return attach_to_sprint;
      case 'update_hu_status_card':
        return update_hu_status_card;
      case 'update_ready_for_dev_status':
        return update_ready_for_dev_status;
      default:
        return null;
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => toJson();
}

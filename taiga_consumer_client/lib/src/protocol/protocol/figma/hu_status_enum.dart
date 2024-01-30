/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

enum HuStatus with _i1.SerializableEntity {
  newStatus,
  refinandoseStatus,
  ilustrandoseStatus,
  pensandoseStatus,
  listaStatus,
  aprobandoseStatus,
  postergadoStatus;

  static HuStatus? fromJson(String name) {
    switch (name) {
      case 'newStatus':
        return newStatus;
      case 'refinandoseStatus':
        return refinandoseStatus;
      case 'ilustrandoseStatus':
        return ilustrandoseStatus;
      case 'pensandoseStatus':
        return pensandoseStatus;
      case 'listaStatus':
        return listaStatus;
      case 'aprobandoseStatus':
        return aprobandoseStatus;
      case 'postergadoStatus':
        return postergadoStatus;
      default:
        return null;
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => toJson();
}

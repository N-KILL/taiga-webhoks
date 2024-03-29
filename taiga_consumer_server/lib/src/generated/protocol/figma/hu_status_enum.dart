/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum HuStatus with _i1.SerializableEntity {
  NUEVA,
  REFINANDOSE,
  ILUSTRANDOSE,
  PESANDOSE,
  APROBANDOSE,
  LISTA,
  DESARROLLANDOSE,
  TESTEANDOSE,
  UAT,
  CERRADA,
  POSTERGADO;

  static HuStatus? fromJson(String name) {
    switch (name) {
      case 'NUEVA':
        return NUEVA;
      case 'REFINANDOSE':
        return REFINANDOSE;
      case 'ILUSTRANDOSE':
        return ILUSTRANDOSE;
      case 'PESANDOSE':
        return PESANDOSE;
      case 'APROBANDOSE':
        return APROBANDOSE;
      case 'LISTA':
        return LISTA;
      case 'DESARROLLANDOSE':
        return DESARROLLANDOSE;
      case 'TESTEANDOSE':
        return TESTEANDOSE;
      case 'UAT':
        return UAT;
      case 'CERRADA':
        return CERRADA;
      case 'POSTERGADO':
        return POSTERGADO;
      default:
        return null;
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => toJson();
}

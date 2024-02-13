import 'package:taiga_consumer_server/src/generated/protocol.dart';

/// <h4> Figma Status Converter </h4>
///
/// This [figmaStatusConverter] function has been made, to convert the status
/// which came from the `taiga webhook` model, into the figma enum [HuStatus],
/// this only work with the UserStory status. Because the figma plugin is mean
/// to manage UserStories.
///
/// <h4> Note: </h4>
/// This only work with nidus project values
HuStatus figmaStatusConverter({required String huStatus}) {
  var status;

  // Read the status value
  switch (huStatus) {
    // If the value is 'New'
    case 'New':
      // Turn the var status into: HuStatus.NUEVA
      status = HuStatus.NUEVA;
      break;

    // If the value is 'Refinándose'
    case 'Refinándose':
      // Turn the var status into: HuStatus.REFINANDOSE
      status = HuStatus.REFINANDOSE;
      break;

    // If the value is 'Ilustrándose'
    case 'Ilustrándose':
      // Turn the var status into: HuStatus.ILUSTRANDOSE
      status = HuStatus.ILUSTRANDOSE;
      break;

    // If the value is 'Aprobándose'
    case 'Aprobándose':
      // Turn the var status into: HuStatus.APROBANDOSE
      status = HuStatus.APROBANDOSE;
      break;

    // If the value is 'Pesándose'
    case 'Pesándose':
      // Turn the var status into: HuStatus.PENSANDOSE
      status = HuStatus.PENSANDOSE;
      break;

    // If the value is 'Lista'
    case 'Lista para desarrollo':
      // Turn the var status into: HuStatus.LISTA
      status = HuStatus.LISTA;
      break;

    // If the value is 'Desarrollándose'
    case 'Desarrollándose':
      // Turn the var status into: HuStatus.DESARROLLANDOSE
      status = HuStatus.DESARROLLANDOSE;
      break;

    case 'Testeándose':
      // Turn the var status into: HuStatus.TESTEANDOSE
      status = HuStatus.TESTEANDOSE;
      break;

    // If the value is 'Aprobada UAT'
    case 'Aprobada UAT':
      // Turn the var status into: HuStatus.UAT
      status = HuStatus.UAT;
      break;

    // If the value is 'CERRADA'
    case 'CERRADA':
      // Turn the var status into: HuStatus.TERMINADA
      status = HuStatus.CERRADA;
      break;

    // If the value is 'Postergado'
    case 'Postergado':
      // Turn the var status into: HuStatus.POSTERGADO
      status = HuStatus.POSTERGADO;
      break;

    // If the value cannot be read, will return: HuStatus.NUEVA, as default
    default:
      // Turn the var status into: HuStatus.NUEVA
      status = HuStatus.NUEVA;
  }

  // Return the status value turned into a HuStatus enum value
  return status;
}

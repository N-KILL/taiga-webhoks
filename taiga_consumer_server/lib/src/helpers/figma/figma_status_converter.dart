import 'package:taiga_consumer_server/src/generated/protocol.dart';

/// This [figmaStatusConverter] function has been made, to convert the status
/// which came from the `taiga webhook` model, into the figma enum [HuStatus],
/// this only work with the UserStory status. Because the figma plugin is mean
/// to manage UserStories.
HuStatus figmaStatusConverter({required String huStatus}) {
  var status;

  switch (huStatus) {
    case 'New':
      status = HuStatus.NUEVA;
      break;
    case 'Refinándose':
      status = HuStatus.REFINANDOSE;
      break;
    case 'Ilustrándose':
      status = HuStatus.ILUSTRANDOSE;
      break;
    case 'Aprobándose':
      status = HuStatus.APROBANDOSE;
      break;
    case 'Pesándose':
      status = HuStatus.PENSANDOSE;
      break;
    case 'Lista':
      status = HuStatus.LISTA;
      break;
    case 'Postergado':
      status = HuStatus.POSTERGADO;
      break;
    default:
      status = HuStatus.NUEVA;
  }

  return status;
}

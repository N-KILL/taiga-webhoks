import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';
import 'package:taiga_consumer_server/src/helpers/date_formatter.dart';

// TODO(Nacho): Create documentation of all endpoints, and the class

// TODO(Nacho): Modify the figma response
// The figma plugin will crash if some action come with null values,
// serverpod cannot include stuff who not exist, maybe a filter wil default
// values? or allow nulls on models?

/// This class [FigmaEndpoint] is used to send information to the figma plugin
/// https://github.com/N-KILL/Nidus-Figma-Plugin
///
/// Those are the models relates to this endpoint:
/// <ul>

/// </ul>
class FigmaEndpoint extends Endpoint {
  /// This [figmaResponse] method, is the one who's called, by the figma plugin
  /// this have the parameter [projectName], which is used to filter the details
  /// of the projects
  Future<List<FigmaAction>?> figmaResponse(
    Session session, {
    required String projectName,
  }) async {
    // Create a log saying the endpoint is running
    session.log('Running: figmaResponse endpoint');

    // Get info about the project, based on the name
    final project = await TaigaProject.db.findFirstRow(
      session,
      where: (t) => t.title.equals(projectName),
    );

    // If can find the project details
    if (project != null) {
      // Filter all the FigmaActions related
      final response = await FigmaAction.db.find(
        session,
        where: (t) => t.projectId.equals(project.id),
        include: FigmaAction.include(
          huData: HuData.include(
            sprint: Sprint.include(),
            statusCard: StatusCard.include(
              approved: StatusCardDetails.include(),
              development: StatusCardDetails.include(),
              externalTest: StatusCardDetails.include(),
              internalTest: StatusCardDetails.include(),
              amountOfDays: AmountOfDays.include(),
            ),
          ),
        ),
      );

      final data = FigmaAction(
        action: ActionType.update_hu_status_card,
        isActive: false,
        creationDate: DateTime.now(),
        projectId: 1,
        huData: HuData(
          name: 'Generated',
          refNum: 190,
          status: HuStatus.POSTERGADO,
          readyForDev: false,
          sprint: Sprint(name: name, taigaId: 1),
          statusCard: StatusCard(
            approved: StatusCardDetails(
              byUser: User(
                username: 'development',
                userAvatar:
                    'https://img.freepik.com/foto-gratis/hoja-naturaleza-fondos-patron-ilustracion-planta-telon-fondo-diseno-abstracto-naturaleza-verde-vibrante-papel-tapiz-ilustracion-generativa-ai_188544-12680.jpg?w=1380&t=st=1703263023~exp=1703263623~hmac=3c102b813f6e932205c51ab73a9734de0de2a09d889ec82832ea33c89374ba9b',
                taigaId: 1,
                gitHubId: 1,
                gitLabId: 1,
              ),
              date: dateFormatter(
                date: DateTime.now(),
              ),
            ),
            development: StatusCardDetails(
              byUser: User(
                username: 'development',
                userAvatar:
                    'https://img.freepik.com/foto-gratis/hoja-naturaleza-fondos-patron-ilustracion-planta-telon-fondo-diseno-abstracto-naturaleza-verde-vibrante-papel-tapiz-ilustracion-generativa-ai_188544-12680.jpg?w=1380&t=st=1703263023~exp=1703263623~hmac=3c102b813f6e932205c51ab73a9734de0de2a09d889ec82832ea33c89374ba9b',
                taigaId: 1,
                gitHubId: 1,
                gitLabId: 1,
              ),
              date: dateFormatter(
                date: DateTime.now(),
              ),
            ),
            externalTest: StatusCardDetails(
              byUser: User(
                username: 'externalTest',
                userAvatar:
                    'https://img.freepik.com/foto-gratis/belleza-naturaleza-refleja-aguas-tranquilas-montanas-ia-generativa_188544-7867.jpg?w=1380&t=st=1703263062~exp=1703263662~hmac=7c6ffc2a21b13cf5b60dbf3142ac98e156c3ef4669ae6d83a35dc6ade3299a62',
                taigaId: 1,
                gitHubId: 1,
                gitLabId: 1,
              ),
              date: dateFormatter(
                date: DateTime.now(),
              ),
            ),
            internalTest: StatusCardDetails(
              byUser: User(
                username: 'development',
                userAvatar:
                    'https://img.freepik.com/foto-gratis/hoja-naturaleza-fondos-patron-ilustracion-planta-telon-fondo-diseno-abstracto-naturaleza-verde-vibrante-papel-tapiz-ilustracion-generativa-ai_188544-12680.jpg?w=1380&t=st=1703263023~exp=1703263623~hmac=3c102b813f6e932205c51ab73a9734de0de2a09d889ec82832ea33c89374ba9b',
                taigaId: 1,
                gitHubId: 1,
                gitLabId: 1,
              ),
              date: dateFormatter(
                date: DateTime.now(),
              ),
            ),
            amountOfDays: AmountOfDays(
              preparation: '1',
              development: '1',
              approbation: '1',
              finalApprobation: '1',
              quality: '1+3',
            ),
          ),
        ),
      );

      response.add(data);
      // And return the actions
      return response;
    }

    // If cant find the project details, return null
    return null;
  }

  /// This [registerNewAction] endpoint is for register a new action into the db
  /// register
  Future<FigmaAction> registerNewAction(
    Session session, {
    required FigmaAction figmaAction,
  }) async {
    final response = await FigmaAction.db.insertRow(session, figmaAction);
    return response;
  }

  Future<HuData> registerNewHUData(
    Session session, {
    required HuData huData,
  }) async {
    final response = await HuData.db.insertRow(session, huData);
    return response;
  }

  Future<Sprint?> getSprintDataByTaigaId(
    Session session, {
    required taigaId,
  }) async {
    final sprint = await Sprint.db.findFirstRow(
      session,
      where: (t) => t.taigaId.equals(taigaId),
    );
    return sprint;
  }

  Future<HuData?> getHUData(
    Session session, {
    required HuData huData,
  }) async {
    final response = await HuData.db.findFirstRow(
      session,
      where: (t) => t.refNum.equals(huData.refNum) & t.name.equals(huData.name),
    );

    return response;
  }
}

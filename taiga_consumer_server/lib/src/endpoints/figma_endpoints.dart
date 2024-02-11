import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';
import 'package:taiga_consumer_server/src/helpers/date_formatter.dart';

// TODO(Nacho): Create documentation for all the endpoints, and the class
// Separated by models

// TODO(Nacho): Modify the figma response
// The figma plugin will crash if some action come with null values,
// serverpod cannot include stuff who not exist, maybe a filter wil default
// values? or allow nulls on models?

// TODO(Nacho): Modify the sprint model, to have taiga projectId

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
        where: (t) => t.projectId.equals(project.id) & t.isActive.equals(true),
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

      response.add(
        FigmaAction(
          action: ActionType.update_hu_status_card,
          isActive: true,
          creationDate: DateTime.now(),
          projectId: 11,
          huData: HuData(
            name: 'Hu Hardcodeada',
            refNum: 1337,
            status: HuStatus.POSTERGADO,
            readyForDev: true,
            projectId: 11,
            sprint: Sprint(name: 'Tuki Sprint', taigaId: 5),
            statusCard: StatusCard(
              amountOfDays: AmountOfDays(
                preparation: '1',
                development: '1',
                approbation: '1',
                finalApprobation: '1',
                quality: '1+2',
              ),
              approved: StatusCardDetails(
                date: dateFormatter(
                  date: DateTime.now(),
                ),
                byUser: User(
                    username: 'N-K',
                    userAvatar:
                        'https://img.freepik.com/foto-gratis/hoja-naturaleza-fondos-patron-ilustracion-planta-telon-fondo-diseno-abstracto-naturaleza-verde-vibrante-papel-tapiz-ilustracion-generativa-ai_188544-12680.jpg?w=1380&t=st=1703263023~exp=1703263623~hmac=3c102b813f6e932205c51ab73a9734de0de2a09d889ec82832ea33c89374ba9b',
                    fullName: 'N-K',
                    taigaRoles: ['Back'],
                    taigaId: 1,
                    gitHubId: 1,
                    gitLabId: 1),
              ),
              development: StatusCardDetails(
                date: dateFormatter(
                  date: DateTime.now(),
                ),
                byUser: User(
                    username: 'N-K',
                    userAvatar:
                        'https://img.freepik.com/foto-gratis/hoja-naturaleza-fondos-patron-ilustracion-planta-telon-fondo-diseno-abstracto-naturaleza-verde-vibrante-papel-tapiz-ilustracion-generativa-ai_188544-12680.jpg?w=1380&t=st=1703263023~exp=1703263623~hmac=3c102b813f6e932205c51ab73a9734de0de2a09d889ec82832ea33c89374ba9b',
                    fullName: 'N-K',
                    taigaRoles: ['Back'],
                    taigaId: 1,
                    gitHubId: 1,
                    gitLabId: 1),
              ),
              externalTest: StatusCardDetails(
                date: dateFormatter(
                  date: DateTime.now(),
                ),
                byUser: User(
                    username: 'N-K',
                    userAvatar:
                        'https://img.freepik.com/foto-gratis/hoja-naturaleza-fondos-patron-ilustracion-planta-telon-fondo-diseno-abstracto-naturaleza-verde-vibrante-papel-tapiz-ilustracion-generativa-ai_188544-12680.jpg?w=1380&t=st=1703263023~exp=1703263623~hmac=3c102b813f6e932205c51ab73a9734de0de2a09d889ec82832ea33c89374ba9b',
                    fullName: 'N-K',
                    taigaRoles: ['Back'],
                    taigaId: 1,
                    gitHubId: 1,
                    gitLabId: 1),
              ),
              internalTest: StatusCardDetails(
                date: dateFormatter(
                  date: DateTime.now(),
                ),
                byUser: User(
                    username: 'N-K',
                    userAvatar:
                        'https://img.freepik.com/foto-gratis/hoja-naturaleza-fondos-patron-ilustracion-planta-telon-fondo-diseno-abstracto-naturaleza-verde-vibrante-papel-tapiz-ilustracion-generativa-ai_188544-12680.jpg?w=1380&t=st=1703263023~exp=1703263623~hmac=3c102b813f6e932205c51ab73a9734de0de2a09d889ec82832ea33c89374ba9b',
                    fullName: 'N-K',
                    taigaRoles: ['Back'],
                    taigaId: 1,
                    gitHubId: 1,
                    gitLabId: 1),
              ),
            ),
          ),
        ),
      );

      // And return the actions
      return response;
    }

    // If cant find the project details, return null
    return null;
  }

  /// This [registerNewAction] endpoint is for register a new action into the db
  /// register. And if already exist any action of the same type, and its active
  /// in this case, don't do any. Because it will works anyway
  Future<FigmaAction> registerNewAction(
    Session session, {
    required FigmaAction figmaAction,
  }) async {
    // Verify first if already exist an active action of the same type.
    final verification = await FigmaAction.db.findFirstRow(
      session,
      where: (t) =>
          t.isActive.equals(true) &
          t.action.equals(figmaAction.action) &
          t.huDataId.equals(figmaAction.huDataId),
    );

    // If not exist any other active action of the same type
    if (verification == null) {
      // Create one
      final response = await FigmaAction.db.insertRow(session, figmaAction);
      return response;
    } else {
      // Return the one who already exist
      return verification;
    }
  }

  Future<HuData> registerNewHUData(
    Session session, {
    required HuData huData,
  }) async {
    final response = await HuData.db.insertRow(session, huData);
    return response;
  }

  Future<HuData?> updateHuData(
    Session session, {
    required HuData huData,
  }) async {
    session.log(huData.toString());
    // If the HuData, have an id.
    if (huData.id != null) {
      // Find the HuData with that id
      final modify = await HuData.db.findFirstRow(
        session,
        where: (t) => t.refNum.equals(huData.refNum),
      );

      // If can find the HuData with that id
      if (modify != null) {
        // Modify the data of the HuData, with the data on the parameters
        modify.name = huData.name;
        modify.sprintId = huData.sprintId;
        modify.status = huData.status;
        modify.statusCardId = huData.statusCardId;
        modify.readyForDev = huData.readyForDev;

        // Try to update the HuData data on the database
        final response = await HuData.db.updateRow(
          session,
          modify,
        );

        // Create a session.log with the response data
        session.log('FigmaEndpoints updateHuData Response: \n $response');

        // If can update the HuData return the response data
        return response;
      }
    }
    // Create a session.log saying an error ocurred, returning null
    session.log(
      '''FigmaEndpoints updateHuData Failed... Cannot found any HuData with 
      that RefNum Returning null''',
      level: LogLevel.warning,
    );

    // If can't modify the HuData return null
    return null;
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

  Future<Sprint?> getSprintDataBySprintName(
    Session session, {
    required String name,
  }) async {
    final sprint = await Sprint.db.findFirstRow(
      session,
      where: (t) => t.name.equals(name),
    );

    return sprint;
  }

  Future<Sprint?> createSprint(
    Session session, {
    required int taigaId,
    required String name,
  }) async {
    // Create an Sprint instance with the data
    final sprintData = Sprint(name: name, taigaId: taigaId);

    //
    final sprint = await Sprint.db.insertRow(session, sprintData);

    return sprint;
  }

  Future<HuData?> getHUData(
    Session session, {
    required int projectId,
    required int huDataRefNum,
  }) async {
    final response = await HuData.db.findFirstRow(
      session,
      where: (t) =>
          t.refNum.equals(huDataRefNum) & t.projectId.equals(projectId),
    );

    return response;
  }

  // CRUD STATUS CARD STUFF

  // TODO(Nacho): Add logger

  Future<StatusCard> registerStatus(
    Session session, {
    required StatusCard statusCard,
  }) async {
    final response = await StatusCard.db.insertRow(session, statusCard);
    return response;
  }

  Future<StatusCard?> getStatusCardByUserStoryId(
    Session session, {
    required int huDataId,
  }) async {
    final response = await HuData.db.findFirstRow(
      session,
      where: (t) => t.id.equals(huDataId),
      include: HuData.include(
        statusCard: StatusCard.include(),
      ),
    );
    if (response?.statusCard != null) {
      return response!.statusCard;
    }
    return null;
  }

  // TODO(Nacho): Handle AmountOfDay values
  Future<StatusCard?> updateStatusCard(
    Session session, {
    // This is the user story we re going to update his status card
    required int fromUserStoryId,

    // This is the value we re going to update
    required HuStatus updateValue,

    // This are the details of the value we re going to update
    required StatusCardDetails statusCardDetails,
  }) async {
    var statusCardData = await getStatusCardByUserStoryId(
      session,
      huDataId: fromUserStoryId,
    );

    // If already have an status card, update the values
    if (statusCardData != null) {
      // Then update the data based on the type
      switch (updateValue) {
        case HuStatus.LISTA:
          statusCardData.approvedId = statusCardDetails.id;
          break;
        case HuStatus.DESARROLLANDOSE:
          statusCardData.developmentId = statusCardDetails.id;
          break;
        case HuStatus.TESTEANDOSE:
          statusCardData.internalTestId = statusCardDetails.id;
          break;
        case HuStatus.UAT:
          statusCardData.externalTestId = statusCardDetails.id;
          break;
        default:
      }
      final response = await StatusCard.db.updateRow(
        session,
        statusCardData,
      );
      return response;
    } else {
      // Turn statusCardData to an empty StatusCard
      statusCardData as StatusCard;

      // Then fill the data based on the type
      switch (updateValue) {
        case HuStatus.LISTA:
          statusCardData.approvedId = statusCardDetails.id;
          break;
        case HuStatus.DESARROLLANDOSE:
          statusCardData.developmentId = statusCardDetails.id;
          break;
        case HuStatus.TESTEANDOSE:
          statusCardData.internalTestId = statusCardDetails.id;
          break;
        case HuStatus.UAT:
          statusCardData.externalTestId = statusCardDetails.id;
          break;
        default:
      }

      final response = await StatusCard.db.insertRow(
        session,
        statusCardData,
      );
      return response;
    }
  }

  // CRUD STATUS CARD DETAILS STUFF

  Future<StatusCardDetails> registerStatusDetails(
    Session session, {
    required StatusCardDetails statusCardDetails,
  }) async {
    final response = await StatusCardDetails.db.insertRow(
      session,
      statusCardDetails,
    );
    return response;
  }
}

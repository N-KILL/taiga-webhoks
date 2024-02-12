import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';

// TODO(Nacho): Create documentation for all the endpoints, and the class
// Separated by models

// TODO(Nacho): Upgrate endpoints

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
              approved: StatusCardDetails.include(
                byUser: User.include(),
              ),
              development: StatusCardDetails.include(
                byUser: User.include(),
              ),
              externalTest: StatusCardDetails.include(
                byUser: User.include(),
              ),
              internalTest: StatusCardDetails.include(
                byUser: User.include(),
              ),
              amountOfDays: AmountOfDays.include(),
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

  /// This [createNewAction] endpoint is for create a new action into the db
  /// create. And if already exist any action of the same type, and its active
  /// in this case, don't do any. Because it will works anyway
  Future<FigmaAction> createNewAction(
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

  Future<HuData> createNewHUData(
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
    session.log('Este es huDetails en el endpoint de update huData: $huData');
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

      session.log('Este es modify despues de ser modificado $modify');

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

  Future<StatusCard> createStatusCard(
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

  // TODO(Nacho): Add logger, upgrade this base code

  Future<StatusCard?> getStatusCardById(
    Session session, {
    required int statusCardId,
  }) async {
    final response = await StatusCard.db.findById(session, statusCardId);

    return response;
  }

  // TODO(Nacho): Handle AmountOfDay values

  /// This endpoint [updateStatusCard] is used to update the status card of an
  /// user story.
  ///
  /// <h4> Required values </h4>
  ///
  /// <ul>
  /// <li> [statusCardId] : [int] is the status card we re going to update </li>
  /// <li> [updateValue] : [HuStatus] is the value we re going to update </li>
  /// <h4> Note: [updateValue] Only can be type: </h4>
  /// <ul>
  /// <li> [HuStatus.LISTA] </li>
  /// <li> [HuStatus.DESARROLLANDOSE] </li>
  /// <li> [HuStatus.TESTEANDOSE] </li>
  /// <li> [HuStatus.UAT] </li>
  /// </ul>
  /// 
  /// Any other value will return an <strong>error</strong>
  /// 
  /// <li> [statusCardDetails] : [int] are the details of the value we re going 
  /// to update </li>
  /// </ul>
  Future<StatusCard> updateStatusCard(
    Session session, {
    // This is the status card we re going to update
    required int statusCardId,

    // This is the value we re going to update
    required HuStatus updateValue,

    // This are the details of the value we re going to update
    required StatusCardDetails statusCardDetails,
  }) async {
    try {
      final statusCardData =
          await StatusCard.db.findById(session, statusCardId);

      // If already have an status card, update the values
      if (statusCardData != null) {
        // Then update the data based on the type
        switch (updateValue) {
          case HuStatus.LISTA:
            // If the statusCard already have a related data, remove it
            if (statusCardData.approvedId != null) {
              await deleteStatusCardDetails(
                session,
                statusCardDetailsId: statusCardData.approvedId!,
              );
            }

            // Then modify the value
            statusCardData.approvedId = statusCardDetails.id;
            break;

          case HuStatus.DESARROLLANDOSE:
            // If the statusCard already have a related data, remove it
            if (statusCardData.developmentId != null) {
              await deleteStatusCardDetails(
                session,
                statusCardDetailsId: statusCardData.developmentId!,
              );
            }

            // Then modify the value
            statusCardData.developmentId = statusCardDetails.id;
            break;

          case HuStatus.TESTEANDOSE:
            // If the statusCard already have a related data, remove it
            if (statusCardData.internalTestId != null) {
              await deleteStatusCardDetails(
                session,
                statusCardDetailsId: statusCardData.internalTestId!,
              );
            }

            // Then modify the value
            statusCardData.internalTestId = statusCardDetails.id;
            break;

          case HuStatus.UAT:

            // If the statusCard already have a related data, remove it
            if (statusCardData.externalTestId != null) {
              await deleteStatusCardDetails(
                session,
                statusCardDetailsId: statusCardData.externalTestId!,
              );
            }

            // Then modify the value
            statusCardData.externalTestId = statusCardDetails.id;
            break;
          default:
            throw (
              'Status card, is made to work with other values, pls read the doc',
              LogLevel.error
            );
        }

        // Update the user story data
        final response = await StatusCard.db.updateRow(
          session,
          statusCardData,
        );

        // Then return the updated user story data
        return response;
      } else {
        throw ('Error getting the Status Card related to the User Story');
      }
    } catch (e) {
      throw (
        'updateStatusCard Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  // CRUD STATUS CARD DETAILS STUFF

  Future<StatusCardDetails> createStatusDetails(
    Session session, {
    required StatusCardDetails statusCardDetails,
  }) async {
    final response = await StatusCardDetails.db.insertRow(
      session,
      statusCardDetails,
    );
    return response;
  }

  /// This endpoint [deleteStatusCardDetails] is used to delete information from
  /// a StatusCardDetails createed in the database.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `statusCardDetailsId`: [int] Its the id of the statusCardDetailsId on the
  /// database <br>
  Future<int> deleteStatusCardDetails(
    Session session, {
    required int statusCardDetailsId,
  }) async {
    // Message indication this endpoint is running
    session.log('Running deleteStatusCardDetails Endpoint');

    try {
      // Try to delete the StatusCardDetails
      final statusCardDetailsData =
          await StatusCardDetails.db.findById(session, statusCardDetailsId);
      if (statusCardDetailsData != null) {
        // Remove the StatusCardDetails from the database
        final id = await StatusCardDetails.db
            .deleteRow(session, statusCardDetailsData);

        // Then return his id
        return id;
      }

      // In case that we can't find any status card detail by that id,
      // throw an error
      throw (
        'Was not possible to found any status card detail with that id: $statusCardDetailsId',
      );
    } catch (e) {
      // throw an error in case of fail
      throw (
        'deleteStatusCardDetails Failed, error: $e',
        LogLevel.error,
      );
    }
  }
}

import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';
import 'package:taiga_consumer_server/src/helpers/date_formatter.dart';

// TODO(Nacho): Create documentation for all the endpoints, and the class

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

        // If the status is 'Lista'
        if (huData.status == HuStatus.LISTA) {
          // Put into ReadyForDev
          modify.readyForDev = true;
        }
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
}

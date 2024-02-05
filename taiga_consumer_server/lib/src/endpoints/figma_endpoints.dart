import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';
import 'package:taiga_consumer_server/src/helpers/date_formatter.dart';

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
      );

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

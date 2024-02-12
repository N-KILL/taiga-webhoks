import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';

// TODO(Nacho): Upgrate endpoints

/// This class [TaigaProjectEndpoint] is used to manage the project data in the
/// database. Have al the CRUD operators (Create, Read, Update, Delete) to the
/// project object
class TaigaProjectEndpoint extends Endpoint {
  /// This [projectCreate] is used to create a [TaigaProject] in the database.
  Future<TaigaProject?> projectCreate(
    Session session, {
    required TaigaProject taigaProject,
  }) async {
    try {
      // This create the project on the db
      final response = await TaigaProject.db.insertRow(session, taigaProject);

      // Create a session.log with the response data
      session.log(
        'TaigaProjectEndpoint projectCreate Response: \n $response',
      );

      // If can create the project, return his data
      return response;
    } catch (e) {
      // Create a session.log saying an error ocurred, returning null
      session.log(
        'TaigaProjectEndpoint projectCreate Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't create the project return null
      return null;
    }
  }

  /// This [projectCreateOnBulk] is used to create multiple [TaigaProject] in the
  /// database.
  Future<List<TaigaProject>?> projectCreateOnBulk(
    Session session, {
    required List<TaigaProject> taigaProject,
  }) async {
    try {
      // Create the projects on the database
      final response = await TaigaProject.db.insert(session, taigaProject);

      // Create a session.log with the response data
      session.log(
          'TaigaProjectEndpoint projectCreateOnBulk Response: \n $response');

      // If can create the projects, return the data of those
      return response;
    } catch (e) {
      // Create a session.log saying an error ocurred, returning null
      session.log(
        'TaigaProjectEndpoint projectCreateOnBulk Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't create the project return null
      return null;
    }
  }

  /// This [projectReadById] is used to read a [TaigaProject] from the database
  /// using his [id]
  Future<TaigaProject?> projectReadById(
    Session session, {
    required int id,
  }) async {
    try {
      // Try to find a project by his id
      final response = await TaigaProject.db.findById(session, id);

      // if it cant found any return null, otherwise, return the response data
      if (response != null) {
        // Create a session.log with the response data
        session.log(
          'TaigaProjectEndpoint projectReadById Response: \n $response',
        );
        return response;
      } else {
        // Create a session.log saying cant found any
        session.log(
          'TaigaProjectEndpoint projectReadById error: \n $response',
          level: LogLevel.warning,
        );

        return null;
      }
    } catch (e) {
      // Create a session.log saying an error ocurred, returning null
      session.log(
        'TaigaProjectEndpoint projectReadById Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't read the project return null
      return null;
    }
  }

  /// This [projectReadByTitle] is used to read a [TaigaProject] from the
  /// database using his [projectTitle]
  Future<TaigaProject?> projectReadByTitle(
    Session session, {
    required String projectTitle,
  }) async {
    try {
      // Try to find any project with the title passed on the parameters
      final response = await TaigaProject.db.findFirstRow(
        session,
        where: (t) => t.title.equals(projectTitle),
      );

      // if it cant found any return null, otherwise, return the response data
      if (response != null) {
        // Create a session.log with the response data
        session.log(
          'TaigaProjectEndpoint projectReadByTitle Response: \n $response',
        );
        return response;
      } else {
        // Create a session.log saying cant found any
        session.log(
          'TaigaProjectEndpoint projectReadByTitle error: \n $response',
          level: LogLevel.warning,
        );

        return null;
      }
    } catch (e) {
      // Create a session.log saying an error ocurred, returning null
      session.log(
        'TaigaProjectEndpoint projectReadByTitle Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't read the project return null
      return null;
    }
  }

  /// This [projectReadByTaigaProjectId] is used to read a [TaigaProject] from
  /// the database using his [id] from `Taiga`
  Future<TaigaProject?> projectReadByTaigaProjectId(
    Session session, {
    required int id,
  }) async {
    try {
      // Try to find any project with the id called on the parameters
      final response = await TaigaProject.db.findFirstRow(
        session,
        where: (t) => t.taigaId.equals(id),
      );

      // if it cant found any return null, otherwise, return the response data
      if (response != null) {
        // Create a session.log with the response data
        session.log(
          'TaigaProjectEndpoint projectReadByTaigaProjectId Response: \n $response',
        );
        return response;
      } else {
        // Create a session.log saying cant found any
        session.log(
          'TaigaProjectEndpoint projectReadByTaigaProjectId error: \n $response',
          level: LogLevel.warning,
        );

        return null;
      }
    } catch (e) {
      // Create a session.log saying an error ocurred, returning null
      session.log(
        'TaigaProjectEndpoint projectReadByTaigaProjectId Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't read the project return null
      return null;
    }
  }

  /// This [projectUpdateProject] is used to update a [TaigaProject] from
  /// the database using another [TaigaProject].
  ///
  /// So use any `read` method, and then call this, modifying the elements
  /// that you want.
  ///
  /// <h5> Using a [TaigaProject] without id, will make the endpoint fail, and
  /// return null</h5>
  Future<TaigaProject?> projectUpdateProject(
    Session session, {
    required TaigaProject taigaProject,
  }) async {
    // If the taigaProject, have an id.
    if (taigaProject.id != null) {
      // Find the project with that id
      final modify = await TaigaProject.db.findById(
        session,
        taigaProject.id!,
      );

      // If can find the project with that id
      if (modify != null) {
        // Modify the data of the project, with the data on the parameters
        modify.taigaId = taigaProject.taigaId;
        modify.title = taigaProject.title;
        modify.title = taigaProject.title;

        // Try to update the project data on the database
        final response = await TaigaProject.db.updateRow(
          session,
          modify,
        );

        // Create a session.log with the response data
        session.log(
            'TaigaProjectEndpoint projectUpdateProject Response: \n $response');

        // If can update the project return the response data
        return response;
      }
    }
    // Create a session.log saying an error ocurred, returning null
    session.log(
      'TaigaProjectEndpoint projectUpdateProject Failed... Returning null',
      level: LogLevel.warning,
    );

    // If can't modify the project return null
    return null;
  }

  /// This [projectDeleteProject] is used to delete a [TaigaProject] from the
  /// database, using the info of a [taigaProject]
  Future<int?> projectDeleteProject(
    Session session, {
    required TaigaProject taigaProject,
  }) async {
    try {
      // If the project
      if (taigaProject.id != null) {
        final findRow =
            await TaigaProject.db.findById(session, taigaProject.id!);
        if (findRow != null) {
          final response = await TaigaProject.db.deleteRow(session, findRow);
          // Create a session.log with the response data
          session.log(
              'TaigaProjectEndpoint projectDeleteProject Response: \n $response');
          return response;
        }
      }
      session.log(
          'TaigaProjectEndpoint projectDeleteProject failed, does the project have an id?');
      return null;
    } catch (e) {
      // Create a session.log saying an error ocurred, returning null
      session.log(
        'TaigaProjectEndpoint projectDeleteProject Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't delete the project return null
      return null;
    }
  }

  /// This [projectDeleteProjectById] is used to delete a [TaigaProject] from the
  /// database, using the [projectId]
  Future<int?> projectDeleteProjectById(
    Session session, {
    required int projectId,
  }) async {
    try {
      // Get the project
      final findRow = await TaigaProject.db.findById(session, projectId);

      // If can get the info of the project
      if (findRow != null) {
        // Try to delete the project
        final response = await TaigaProject.db.deleteRow(session, findRow);

        // Create a session.log with the response info
        session.log('TaigaProjectEndpoint deleteById Response: \n $response');

        // If can delete the project return the response
        return response;
      }
      // If was not possible to delete the project
      session.log(
        'TaigaProjectEndpoint deleteProjectById Failed was not possible to find the project',
        level: LogLevel.warning,
      );
      return null;
    } catch (e) {
      // Create a session.log saying an error ocurred, returning null
      session.log(
        'TaigaProjectEndpoint deleteProjectById Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't delete the project null
      return null;
    }
  }
}

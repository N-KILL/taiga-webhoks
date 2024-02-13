import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_commentaries.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';
import 'package:taiga_consumer_server/src/generated/protocol/user.dart';

// TODO(Nacho): Upgrade all the endpoint
// Prevent to return null on all methods, except from Get methods

/// This class [TaigaJobEndpoint] have all the CRUD methods to modify a job
/// related model on the database.
///
/// </h4>Those are the models relates to this endpoint </h4>
/// <ul>
/// <li>[TaigaJob]</li>
/// <li>[TaigaJobUpdates]</li>
/// <li>[TaigaJobCommentaries]</li>
/// </ul>
class TaigaJobEndpoint extends Endpoint {
  /// This [taigaJobCreate] is used to store a [TaigaJob] in the database
  Future<TaigaJob?> taigaJobCreate(
    Session session, {
    required TaigaJob taigaJob,
  }) async {
    try {
      // Try to create the taiga job record
      final response = await TaigaJob.db.insertRow(session, taigaJob);

      // Create a session.log with the response data
      session.log(
        'TaigaJobEndpoint taigaJobCreate Response: \n $response',
      );

      // If can create, return the response
      return response;
    } catch (e) {
      // Create a session.log saying an error ocurred
      session.log(
        'TaigaJobEndpoint taigaJobCreate Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't create return null
      return null;
    }
  }

  /// This [taigaJobCreateOnBulk] is used to store a bunch of [TaigaJob] in the
  /// database
  Future<List<TaigaJob>?> taigaJobCreateOnBulk(
    Session session, {
    required List<TaigaJob> taigaJob,
  }) async {
    try {
      // Try to create the taiga job record
      final response = await TaigaJob.db.insert(
        session,
        taigaJob,
      );

      // Create a session.log with the response data
      session.log(
        'TaigaJobEndpoint createOnBulk Response: \n $response',
      );

      // If can create, return the response
      return response;
    } catch (e) {
      // Create a session.log saying an error ocurred
      session.log(
        'TaigaJobEndpoint createOnBulk Failed... Returning null',
        level: LogLevel.warning,
      );

      // If can't create return null
      return null;
    }
  }

  /// This [taigaJobReadById] method, is used to read a [TaigaJob] from the
  /// database, using his [id]
  Future<TaigaJob?> taigaJobReadById(
    Session session, {
    required int id,
  }) async {
    try {
      // Try to find the TaigaJob record
      final response = await TaigaJob.db.findById(
        session,
        id,
        include: TaigaJob.include(
          project: TaigaProject.include(),
        ),
      );

      // If can read any job with that id, return null, otherwise return the data
      if (response != null) {
        // Create a session.log with the response
        session.log(
          'TaigaJobEndpoint readById Response: \n $response',
        );

        // Return the response data
        return response;
      } else {
        // Create a session.log with the response
        session.log(
          'TaigaJobEndpoint readById cannot find any project with that id $response',
        );

        // Return null
        return null;
      }
    } catch (e) {
      session.log(
        'TaigaJobEndpoint readById Failed... Returning null',
        level: LogLevel.warning,
      );
      return null;
    }
  }

  /// This [taigaJobReadByTitle] method, is used to read a [TaigaJob] from the
  /// database, using his [title]
  Future<TaigaJob?> taigaJobReadByTitle(
    Session session, {
    required String title,
  }) async {
    try {
      // Try to find any TaigaJob with that title
      final response = await TaigaJob.db.findFirstRow(
        session,
        where: (t) => t.title.equals(title),
        include: TaigaJob.include(
          project: TaigaProject.include(),
        ),
      );

      // If can read any job with that title, return null, otherwise return the data
      if (response != null) {
        // Create a session.log with the response
        session.log(
          'TaigaJobEndpoint taigaJobReadByTitle Response: \n $response',
        );

        // Return the response data
        return response;
      } else {
        // Create a session.log with the response
        session.log(
          'TaigaJobEndpoint taigaJobReadByTitle cannot find any project with that id $response',
        );

        // Return null
        return null;
      }
    } catch (e) {
      // If any error happens, create a log saying that
      session.log(
        'TaigaJobEndpoint taigaJobReadByTitle Failed... Returning null',
        level: LogLevel.warning,
      );

      // and return null
      return null;
    }
  }

  /// This [taigaJobReadByType] method, is used to read a list of [TaigaJob]
  /// from the database, using his [type]
  Future<List<TaigaJob>?> taigaJobReadByType(
    Session session, {
    required String type,
  }) async {
    try {
      // Try to find any TaigaJob with that type
      final response = await TaigaJob.db.find(
        session,
        where: (t) => t.type.equals(type),
        include: TaigaJob.include(
          project: TaigaProject.include(),
        ),
      );

      // Create a session.log with the response
      session.log(
        'TaigaJobEndpoint taigaJobReadByTitle Response: \n $response',
      );

      // Return the response data
      return response;
    } catch (e) {
      // If any error happens, create a log saying that
      session.log(
        'TaigaJobEndpoint taigaJobReadByTitle Failed... Returning null',
        level: LogLevel.warning,
      );

      // and return null
      return null;
    }
  }

  /// This [taigaJobReadByType] method, is used to read a list of [TaigaJob]
  /// from the database, using his [status]
  Future<List<TaigaJob>?> taigaJobReadByStatus(
    Session session, {
    required String status,
  }) async {
    try {
      // Try to find any TaigaJob with that status
      final response = await TaigaJob.db.find(
        session,
        where: (t) => t.status.equals(status),
        include: TaigaJob.include(
          project: TaigaProject.include(),
        ),
      );

      // Create a log with the response data
      session.log(
        'TaigaJobEndpoint taigaJobReadByStatus Response: \n $response',
      );

      // And return the response
      return response;
    } catch (e) {
      // If any error happens, create a log saying that
      session.log(
        'TaigaJobEndpoint taigaJobReadByStatus Failed... Returning null',
        level: LogLevel.warning,
      );

      // and return null
      return null;
    }
  }

  /// This [taigaJobReadByProjectIdAndRefNumber] is used for read a TaigaJob
  /// based on his [projectId] and [taigaRefNumber]. Which is specific is unique
  /// per project
  Future<TaigaJob?> taigaJobReadByProjectIdAndRefNumber(
    Session session, {
    required int projectId,
    required int taigaRefNumber,
  }) async {
    try {
      // Try to find the TaigaJob
      final response = await TaigaJob.db.findFirstRow(
        session,
        where: (t) =>
            t.projectId.equals(projectId) &
            t.taigaRefNumber.equals(taigaRefNumber),
        include: TaigaJob.include(
          project: TaigaProject.include(),
        ),
      );

      // If can find any TaigaJob with those parameters
      if (response != null) {
        // Create a log with the response data
        session.log(
          'TaigaJobEndpoint readByProjectIdAndRefNumber Response: \n $response',
        );

        // And return the data
        return response;
      } else {
        session.log(
          // Create a log saying cant found any TaigaJob
          'TaigaJobEndpoint readByProjectIdAndRefNumber cannot found any TaigaJob',
          level: LogLevel.warning,
        );

        // And return null
        return null;
      }
    } catch (e) {
      // If any error happens, create a log saying that
      session.log(
        'TaigaJobEndpoint readByProjectIdAndRefNumber Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    }
  }

  /// This [taigaJobUpdateById] is used to update a [TaigaJob] using his is ID
  ///
  /// This will find a [TaigaJob] object on the database, based on the [id],
  /// and will be modified with the parameter [taigaJob].
  Future<TaigaJob?> taigaJobUpdateById(
    Session session, {
    required TaigaJob taigaJob,
    required int id,
  }) async {
    try {
      // This the one we want to modify
      final modify = await TaigaJob.db.findById(
        session,
        id,
      );

      // If can find the TaigaJob by his id
      if (modify != null) {
        // Replace the data, with the data on the parameters
        modify.type = taigaJob.type;
        modify.status = taigaJob.status;
        modify.description = taigaJob.description;
        modify.title = taigaJob.title;

        // Update the data
        final response = await TaigaJob.db.updateRow(
          session,
          modify,
        );

        // Create a session.log with the response data
        session.log(
          'TaigaJobEndpoint updateById Response: \n $response',
        );

        // And return the response
        return response;
      }

      // If can find any job with the id on the parameters
      session.log(
        'TaigaJobEndpoint updateById Failed... cannot find any job with that id',
        level: LogLevel.warning,
      );

      // And return the null
      return null;
    } catch (e) {
      // If any error happens, create a log saying that
      session.log(
        'TaigaJobEndpoint updateById Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return the null
      return null;
    }
  }

  /// This [taigaJobDeleteById] is used to delete a job from the database
  /// using his id
  Future<int?> taigaJobDeleteById(
    Session session, {
    required int id,
  }) async {
    try {
      // Try to find any job with the id
      final findRow = await TaigaJob.db.findById(
        session,
        id,
      );

      // If can find the job
      if (findRow != null) {
        // Try to delete the job
        final response = await TaigaJob.db.deleteRow(
          session,
          findRow,
        );

        // Create a session.log with the response data
        session.log(
          'TaigaJobEndpoint deleteById Response: \n $response',
        );

        // And return the response data
        return response;
      } else {
        // If cant find the job

        // Create a session.log saying cant find any job
        session.log(
          'TaigaJobEndpoint deleteById Failed... cannot find any job with the id. Returning null',
          level: LogLevel.warning,
        );

        // And return null
        return null;
      }
    } catch (e) {
      // Create a session.log saying an error ocurred
      session.log(
        'TaigaJobEndpoint deleteById Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    }
  }

  /// This [taigaJobUpdatesCreate] is for create a register of a
  /// [TaigaJobUpdates] on the database
  Future<TaigaJobUpdates?> taigaJobUpdatesCreate(
    Session session, {
    required TaigaJobUpdates taigaJobUpdates,
  }) async {
    try {
      // Try to create the Taiga Job Update
      final response = await TaigaJobUpdates.db.insertRow(
        session,
        taigaJobUpdates,
      );

      // Create a session.log with the response data
      session.log(
        'TaigaJobEndpoint taigaJobUpdatesCreate Response: \n $response',
      );

      // And return the response data
      return response;
    } catch (e) {
      session.log(
        'TaigaJobEndpoint taigaJobUpdatesCreate Failed... Returning null',
        level: LogLevel.warning,
      );
      return null;
    }
  }

  /// This [taigaJobUpdatesCreateOnBulk] is for create a bunch of
  /// [TaigaJobUpdates] at the same time.
  Future<List<TaigaJobUpdates>?> taigaJobUpdatesCreateOnBulk(
    Session session, {
    required List<TaigaJobUpdates> taigaJobUpdates,
  }) async {
    try {
      // Try to create the TaigaJobUpdates
      final response = await TaigaJobUpdates.db.insert(
        session,
        taigaJobUpdates,
      );

      // Create a session.log with the response data
      session.log(
        'TaigaJobEndpoint taigaJobUpdatesCreateOnBulk Response: \n $response',
      );

      // And return the response data
      return response;
    } catch (e) {
      // Create a session.log saying the task failed
      session.log(
        'TaigaJobEndpoint taigaJobUpdatesCreateOnBulk Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    }
  }

  /// This [taigaJobUpdatesReadById] is used to read a [TaigaJobUpdates] by his
  /// [id]
  Future<TaigaJobUpdates?> taigaJobUpdatesReadById(
    Session session, {
    required int id,
  }) async {
    try {
      // Try to find any TaigaJobUpdates
      final response = await TaigaJobUpdates.db.findById(
        session,
        id,
      );

      // If can find one
      if (response != null) {
        // Create a session.log with the response data
        session.log(
          'TaigaJobEndpoint taigaJobUpdatesReadById Response: \n $response',
        );

        // And return the response data
        return response;
      } else {
        // If cant find one

        // Create a session.log saying cant found any update with that id
        session.log(
          'TaigaJobEndpoint taigaJobUpdatesReadById cannot found any update with that id... Returning null',
          level: LogLevel.warning,
        );

        // And return null
        return null;
      }
    } catch (e) {
      session.log(
        'TaigaJobEndpoint readById Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    }
  }

  /// This [taigaJobUpdatesReadFilteringByEpoch] is used to filter by dateTime,
  /// but using epoch format, this have a [min] and [max] parameter, so will
  /// grab all the data between those two.
  Future<List<TaigaJobUpdates>?> taigaJobUpdatesReadFilteringByEpoch(
    Session session, {
    required int min,
    required int max,
  }) async {
    try {
      // Try to find all the TaigaJobUpdates between the two parameters
      final response = await TaigaJobUpdates.db.find(
        session,
        where: (t) => t.dateTimeEpoch.between(min, max),
        include: TaigaJobUpdates.include(
          job: TaigaJob.include(
            project: TaigaProject.include(),
          ),
          comment: TaigaJobCommentaries.include(),
        ),
      );

      // Create a session.log with the response data
      session.log(
        'TaigaJobEndpoint taigaJobUpdatesReadFilteringByEpoch Response: \n $response',
      );

      // And return the response data
      return response;
    } catch (e) {
      // Create a session.log saying the task failed
      session.log(
        'TaigaJobEndpoint taigaJobUpdatesReadFilteringByEpoch Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return the response null
      return null;
    }
  }

  /// This [taigaJobUpdatesUpdateById] is used to update a [TaigaJobUpdates]
  /// using an [id] and a [taigaJobUpdates] which is a [TaigaJobUpdates]
  /// instance
  Future<TaigaJobUpdates?> taigaJobUpdatesUpdateById(
    Session session, {
    required int id,
    required TaigaJobUpdates taigaJobUpdates,
  }) async {
    try {
      // Try to find the element to modify
      final modify = await TaigaJobUpdates.db.findById(
        session,
        id,
      );

      // If can find the element
      if (modify != null) {
        // Modify the data with the one on the parameters
        modify.details = taigaJobUpdates.details;
        modify.status = taigaJobUpdates.status;
        modify.jobId = taigaJobUpdates.jobId;

        // Update the data on the database
        final response = await TaigaJobUpdates.db.updateRow(
          session,
          modify,
        );

        // Create a session.log with the response data
        session.log(
          'TaigaJobEndpoint taigaJobUpdatesUpdateById Response: \n $response',
        );

        // And return the response
        return response;
      }
      // Create a session.log saying cannot find the element
      session.log(
        'TaigaJobEndpoint taigaJobUpdatesUpdateById Failed, cannot find any element by that id... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    } catch (e) {}
    // Create a session.log saying the task failed
    session.log(
      'TaigaJobEndpoint updateById Failed... Returning null',
      level: LogLevel.warning,
    );

    // And return null
    return null;
  }

  /// This [taigaJobUpdatesDeleteById] is used to delete a [TaigaJobUpdates]
  /// using his id
  Future<int?> taigaJobUpdatesDeleteById(
    Session session, {
    required int id,
  }) async {
    try {
      // Try to find the Job update based on the id on the parameters
      final findRow = await TaigaJobUpdates.db.findById(
        session,
        id,
      );
      if (findRow != null) {
        final response = await TaigaJobUpdates.db.deleteRow(
          session,
          findRow,
        );
        session.log(
          'TaigaJobEndpoint taigaJobUpdatesDeleteById Response: \n $response',
        );
        return response;
      }

      // Create a session.log saying cannot fin any job
      session.log(
        'TaigaJobEndpoint taigaJobUpdatesDeleteById Failed, cannot find any job update with that id... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    } catch (e) {}
    // Create a session.log saying the task failed
    session.log(
      'TaigaJobEndpoint deleteById Failed... Returning null',
      level: LogLevel.warning,
    );

    // And return null
    return null;
  }

  /// This [taigaJobCommentariesCreate] is used to create a
  /// [taigaJobCommentaries]
  Future<TaigaJobCommentaries?> taigaJobCommentariesCreate(
    Session session, {
    required TaigaJobCommentaries taigaJobCommentaries,
  }) async {
    try {
      // Try to create the taiga job comment
      final response = await TaigaJobCommentaries.db.insertRow(
        session,
        taigaJobCommentaries,
      );

      // Create a session.log with the response data
      session.log(
        'TaigaJobCommentariesEndpoint taigaJobCommentariesCreate Response: \n $response',
      );

      // And return the response data
      return response;
    } catch (e) {
      // Create a session.log saying the task failed
      session.log(
        'TaigaJobCommentariesEndpoint taigaJobCommentariesCreate Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    }
  }

  /// This [taigaJobCommentariesCreateOnBulk] is used to create a bunch of
  /// [taigaJobCommentaries] at the same time.
  Future<List<TaigaJobCommentaries>?> taigaJobCommentariesCreateOnBulk(
    Session session, {
    required List<TaigaJobCommentaries> taigaJobCommentaries,
  }) async {
    try {
      // Try to create the taiga job comments
      final response = await TaigaJobCommentaries.db.insert(
        session,
        taigaJobCommentaries,
      );

      // Create a session.log with the response data
      session.log(
        'TaigaJobCommentariesEndpoint taigaJobCommentariesCreateOnBulk Response: \n $response',
      );

      // And return the response data
      return response;
    } catch (e) {
      // Create a session.log saying the task failed
      session.log(
        'TaigaJobCommentariesEndpoint taigaJobCommentariesCreateOnBulk Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    }
  }

  /// This [taigaJobCommentariesReadById] is for read a [TaigaJobCommentaries]
  /// using his id
  Future<TaigaJobCommentaries?> taigaJobCommentariesReadById(
    Session session, {
    required int id,
  }) async {
    try {
      // Try to find the comment
      final response = await TaigaJobCommentaries.db.findById(
        session,
        id,
        include: TaigaJobCommentaries.include(
          jobId: TaigaJob.include(),
          user: User.include(),
        ),
      );

      // Create a session.log with the response data
      session.log(
        'TaigaJobCommentariesEndpoint taigaJobCommentariesReadById Response: \n $response',
      );

      // And return the response
      return response;
    } catch (e) {
      // Create a session.log saying the task failed
      session.log(
        'TaigaJobCommentariesEndpoint taigaJobCommentariesReadById Failed... Returning null',
        level: LogLevel.warning,
      );
      return null;
    }
  }

  /// This [taigaJobCommentariesUpdateById] is for update a comment by his [id]
  /// and a [taigaJobCommentaries] which is a [TaigaJobCommentaries] instance
  Future<TaigaJobCommentaries?> taigaJobCommentariesUpdateById(
    Session session, {
    required TaigaJobCommentaries taigaJobCommentaries,
    required int id,
  }) async {
    try {
      // Try to find the comment, by his id
      final modify = await TaigaJobCommentaries.db.findById(
        session,
        id,
      );

      // If can find the comment
      if (modify != null) {
        modify.details = taigaJobCommentaries.details;
        modify.dateTime = DateTime.now();

        // Try to update the comment
        final response = await TaigaJobCommentaries.db.updateRow(
          session,
          modify,
        );

        // Create a session.log with the response data
        session.log(
          'TaigaJobCommentariesEndpoint taigaJobCommentariesUpdateById Response: \n $response',
        );

        // And return the response data
        return response;
      }
      // If cant find the comment

      // Create a session.log saying cannot find the comment
      session.log(
        'TaigaJobCommentariesEndpoint taigaJobCommentariesUpdateById Failed, cannot find any comment with that id... Returning null',
      );

      // And return null
      return null;
    } catch (e) {
      // Create a session.log saying the task failed
      session.log(
        'TaigaJobCommentariesEndpoint taigaJobCommentariesUpdateById Failed... Returning null',
        level: LogLevel.warning,
      );

      // And return null
      return null;
    }
  }

  /// This [taigaJobCommentariesDeleteById] is used to delete a
  /// [TaigaJobCommentaries] using his [id]
  Future<bool> taigaJobCommentariesDeleteById(
    Session session, {
    required int id,
  }) async {
    try {
      final findRow = await TaigaJobCommentaries.db.findById(
        session,
        id,
      );
      if (findRow != null) {
        // Do the deletion task, and return a number
        final response = await TaigaJobCommentaries.db.deleteRow(
          session,
          findRow,
        );

        // Logger showing the execution of the task, and the response
        session.log(
          'TaigaJobCommentariesEndpoint deleteById Response: \n $response',
        );
        return true;
      }

      // Create a Session.log saying cant find the comment
      session.log(
        'TaigaJobCommentariesEndpoint deleteById Failed, cannot find the comment with that id... Returning false',
      );

      // And return false
      return false;
    } catch (e) {
      // Create a Session.log saying the task failed
      session.log(
        'TaigaJobCommentariesEndpoint deleteById Failed... Returning false',
        level: LogLevel.warning,
      );

      // And return false
      return false;
    }
  }
}

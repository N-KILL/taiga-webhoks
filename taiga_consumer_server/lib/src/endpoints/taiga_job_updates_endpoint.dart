import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_commentaries.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';

// TODO(Nacho): Comentar todo el codigo, ver como handlear los prints

class TaigaJobUpdateEndpoint extends Endpoint {
  Future<bool> create(Session session, TaigaJobUpdates taigaJobUpdates) async {
    try {
      final response =
          await TaigaJobUpdates.db.insertRow(session, taigaJobUpdates);
      print('TaigaJobUpdateEndpoint Create Response: \n $response');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> createOnBulk(
      Session session, List<TaigaJobUpdates> taigaJobUpdates) async {
    try {
      final response =
          await TaigaJobUpdates.db.insert(session, taigaJobUpdates);
      print('TaigaJobUpdateEndpoint createOnBulk Response: \n $response');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<TaigaJobUpdates?> readById(Session session, int id) async {
    try {
      final response = await TaigaJobUpdates.db.findById(session, id);
      print('TaigaJobUpdateEndpoint readById Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<List<TaigaJobUpdates>?> readFilteringByEpoch(
    Session session, {
    required int min,
    required int max,
  }) async {
    try {
      final response = await TaigaJobUpdates.db.find(
        session,
        where: (t) => t.dateTimeEpoch.between(min, max),
        include: TaigaJobUpdates.include(
          job: TaigaJob.include(project: TaigaProject.include()),
          comment: TaigaJobCommentaries.include(),
        ),
      );
      print(
          'TaigaJobUpdateEndpoint readFilteringByEpoch Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJobUpdates?> readByStatus(
      Session session, TaigaJobUpdates taigaJobUpdates) async {
    try {
      final response = await TaigaJobUpdates.db.findFirstRow(
        session,
        where: (t) => t.status.equals(taigaJobUpdates.status),
        include: TaigaJobUpdates.include(
          job: TaigaJob.include(project: TaigaProject.include()),
          comment: TaigaJobCommentaries.include(),
        ),
      );
      print('TaigaJobUpdateEndpoint readByStatus Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  // TODO (Nacho): Fix this
  Future<TaigaJobUpdates?> updateById(
      Session session, TaigaJobUpdates taigaJobUpdates) async {
    if (taigaJobUpdates.id != null) {
      final modify = await TaigaJobUpdates.db.findById(
        session,
        taigaJobUpdates.id!,
      );
      if (modify != null) {
        modify.details = taigaJobUpdates.details;
        modify.status = taigaJobUpdates.status;
        modify.jobId = taigaJobUpdates.jobId;
        final response = await TaigaJobUpdates.db.updateRow(
          session,
          modify,
        );
        print('TaigaJobUpdateEndpoint updateById Response: \n $response');
        return response;
      }
    }
    return null;
  }

  // TODO (Nacho): Fix this
  Future<int?> deleteById(
      Session session, TaigaJobUpdates taigaJobUpdates) async {
    if (taigaJobUpdates.id != null) {
      final findRow =
          await TaigaJobUpdates.db.findById(session, taigaJobUpdates.id!);
      if (findRow != null) {
        final response = await TaigaJobUpdates.db.deleteRow(session, findRow);
        print('TaigaJobUpdateEndpoint deleteById Response: \n $response');
        return response;
      }
    }
    return null;
  }
}

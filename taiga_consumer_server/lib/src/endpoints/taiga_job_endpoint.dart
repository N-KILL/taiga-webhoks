import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_jobs.dart';

// TODO(Nacho): Comentar todo el codigo, ver como handlear los prints

class TaigaJobEndpoint extends Endpoint {
  Future<bool> create(Session session, TaigaJob taigaJob) async {
    try {
      var response = await TaigaJob.db.insertRow(session, taigaJob);
      print(response);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> createOnBulk(Session session, List<TaigaJob> taigaJob) async {
    try {
      var response = await TaigaJob.db.insert(session, taigaJob);
      print(response);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<TaigaJob?> readById(Session session, int id) async {
    try {
      var response = await TaigaJob.db.findById(session, id);
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJob?> readByTitle(Session session, TaigaJob taigaJob) async {
    try {
      var response = await TaigaJob.db.findFirstRow(
        session,
        where: (t) => t.title.equals(taigaJob.title),
      );
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJob?> readByType(Session session, TaigaJob taigaJob) async {
    try {
      var response = await TaigaJob.db.findFirstRow(
        session,
        where: (t) => t.type.equals(taigaJob.type),
      );
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJob?> readByStatus(Session session, TaigaJob taigaJob) async {
    try {
      var response = await TaigaJob.db.findFirstRow(
        session,
        where: (t) => t.status.equals(taigaJob.status),
      );
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<List<TaigaJob>?> readByProjectId(Session session, int projectId) async {
    try {
      var response = await TaigaJob.db.find(
        session,
        where: (t) => t.projectId.equals(projectId),
      );
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<bool> updateById(Session session, TaigaJob taigaJob) async {
    if (taigaJob.id != null) {
      var modify = await TaigaJob.db.findById(
        session,
        taigaJob.id!,
      );
      if (modify != null) {
        modify.type = taigaJob.type;
        modify.status = taigaJob.status;
        modify.description = taigaJob.description;
        modify.title = taigaJob.title;
        var updatedCompany = await TaigaJob.db.updateRow(
          session,
          modify,
        );
        print(updatedCompany);
      }
    }
    return false;
  }

  Future<bool> deleteById(Session session, TaigaJob taigaJob) async {
    if (taigaJob.id != null) {
      var findRow = await TaigaJob.db.findById(session, taigaJob.id!);
      if (findRow != null) {
        var deletedItemId = await TaigaJob.db.deleteRow(session, findRow);
        print(deletedItemId);
      }
    }
    return false;
  }
}

import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart';

// TODO(Nacho): Comentar todo el codigo, ver como handlear los prints

class TaigaJobUpdateEndpoint extends Endpoint {
  Future<bool> create(Session session, TaigaJobUpdates taigaJobUpdates) async {
    try {
      var response =
          await TaigaJobUpdates.db.insertRow(session, taigaJobUpdates);
      print(response);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> createOnBulk(
      Session session, List<TaigaJobUpdates> taigaJobUpdates) async {
    try {
      var response = await TaigaJobUpdates.db.insert(session, taigaJobUpdates);
      print(response);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<TaigaJobUpdates?> readById(Session session, int id) async {
    try {
      var response = await TaigaJobUpdates.db.findById(session, id);
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJobUpdates?> readFilteringByEpoch(
    Session session, {
    required int min,
    required int max,
  }) async {
    try {
      var response = await TaigaJobUpdates.db.findFirstRow(
        session,
        where: (t) => t.dateTimeEpoch.between(min, max),
      );
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJobUpdates?> readByStatus(
      Session session, TaigaJobUpdates taigaJobUpdates) async {
    try {
      var response = await TaigaJobUpdates.db.findFirstRow(
        session,
        where: (t) => t.status.equals(taigaJobUpdates.status),
      );
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<bool> updateById(
      Session session, TaigaJobUpdates taigaJobUpdates) async {
    if (taigaJobUpdates.id != null) {
      var modify = await TaigaJobUpdates.db.findById(
        session,
        taigaJobUpdates.id!,
      );
      if (modify != null) {
        modify.details = taigaJobUpdates.details;
        modify.status = taigaJobUpdates.status;
        modify.jobId = taigaJobUpdates.jobId;
        var updatedCompany = await TaigaJobUpdates.db.updateRow(
          session,
          modify,
        );
        print(updatedCompany);
      }
    }
    return false;
  }

  Future<bool> deleteById(
      Session session, TaigaJobUpdates taigaJobUpdates) async {
    if (taigaJobUpdates.id != null) {
      var findRow =
          await TaigaJobUpdates.db.findById(session, taigaJobUpdates.id!);
      if (findRow != null) {
        var deletedItemId =
            await TaigaJobUpdates.db.deleteRow(session, findRow);
        print(deletedItemId);
      }
    }
    return false;
  }
}

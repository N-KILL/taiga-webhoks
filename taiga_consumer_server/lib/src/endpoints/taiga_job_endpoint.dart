import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga_jobs.dart';

class TaigaJobEndpoint extends Endpoint {
  Future<bool> create(Session session, TaigaJob taigaJob) async {
    var response = await TaigaJob.db.insertRow(session, taigaJob);
    print(response);

    return false;
  }

  Future<bool> createOnBulk(Session session, List<TaigaJob> taigaJob) async {
    var response = await TaigaJob.db.insert(session, taigaJob);
    print(response);

    return false;
  }

  Future<bool> readById(Session session, TaigaJob taigaJob) async {
    if (taigaJob.id != null) {
      var response = await TaigaJob.db.findById(session, taigaJob.id!);
      print(response);
    }
    return false;
  }

  Future<bool> readByTitle(Session session, TaigaJob taigaJob) async {
    var response = await TaigaJob.db.findFirstRow(
      session,
      where: (t) => t.title.equals(taigaJob.title),
    );
    print(response);
    return false;
  }

  Future<bool> readByType(Session session, TaigaJob taigaJob) async {
    var response = await TaigaJob.db.findFirstRow(
      session,
      where: (t) => t.type.equals(taigaJob.type),
    );
    print(response);
    return false;
  }

  Future<bool> readByStatus(Session session, TaigaJob taigaJob) async {
    var response = await TaigaJob.db.findFirstRow(
      session,
      where: (t) => t.status.equals(taigaJob.status),
    );
    print(response);
    return false;
  }

  Future<bool> update(Session session, TaigaJob taigaJob) async {
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
      var findRow = await TaigaJob.db
          .findById(session, taigaJob.id!); 
      if (findRow != null) {
        var deletedItemId = await TaigaJob.db.deleteRow(session, findRow);
        print(deletedItemId);
      }
    }
    return false;
  }
}

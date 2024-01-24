import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';

// TODO(Nacho): Comentar todo el codigo, ver como handlear los prints

class TaigaProjectEndpoint extends Endpoint {
  Future<bool> create(Session session, TaigaProject taigaProject) async {
    try {
      var response = await TaigaProject.db.insertRow(session, taigaProject);
      print(response);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> createOnBulk(Session session, List<TaigaProject> taigaProject) async {
    try {
      var response = await TaigaProject.db.insert(session, taigaProject);
      print(response);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<TaigaProject?> readById(Session session, int id) async {
    try {
      var response = await TaigaProject.db.findById(session, id);
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaProject?> readByTitle(Session session, TaigaProject taigaProject) async {
    try {
      var response = await TaigaProject.db.findFirstRow(
        session,
        where: (t) => t.title.equals(taigaProject.title),
      );
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaProject?> readByTaigaProjectId(Session session, int id) async {
    try {
      var response = await TaigaProject.db.findFirstRow(
        session,
        where: (t) => t.taigaId.equals(id),
      );
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<bool> updateById(Session session, TaigaProject taigaProject) async {
    if (taigaProject.id != null) {
      var modify = await TaigaProject.db.findById(
        session,
        taigaProject.id!,
      );
      if (modify != null) {
        modify.taigaId = taigaProject.taigaId;
        modify.title = taigaProject.title;
        modify.title = taigaProject.title;
        var updatedCompany = await TaigaProject.db.updateRow(
          session,
          modify,
        );
        print(updatedCompany);
      }
    }
    return false;
  }

  Future<bool> deleteById(Session session, TaigaProject taigaProject) async {
    if (taigaProject.id != null) {
      var findRow = await TaigaProject.db.findById(session, taigaProject.id!);
      if (findRow != null) {
        var deletedItemId = await TaigaProject.db.deleteRow(session, findRow);
        print(deletedItemId);
      }
    }
    return false;
  }
}

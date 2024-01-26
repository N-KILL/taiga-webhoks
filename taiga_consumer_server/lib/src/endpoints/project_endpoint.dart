import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';

// TODO(Nacho): Comentar todo el codigo, ver como handlear los prints

class TaigaProjectEndpoint extends Endpoint {
  Future<TaigaProject?> create(
      Session session, TaigaProject taigaProject) async {
    try {
      final response = await TaigaProject.db.insertRow(session, taigaProject);
      print('TaigaProjectEndpoint create Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<List<TaigaProject>?> createOnBulk(
      Session session, List<TaigaProject> taigaProject) async {
    try {
      final response = await TaigaProject.db.insert(session, taigaProject);
      print('TaigaProjectEndpoint createOnBulk Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaProject?> readById(Session session, int id) async {
    try {
      final response = await TaigaProject.db.findById(session, id);
      print('TaigaProjectEndpoint readById Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaProject?> readByTitle(
      Session session, TaigaProject taigaProject) async {
    try {
      final response = await TaigaProject.db.findFirstRow(
        session,
        where: (t) => t.title.equals(taigaProject.title),
      );
      print('TaigaProjectEndpoint readByTitle Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaProject?> readByTaigaProjectId(Session session, int id) async {
    try {
      final response = await TaigaProject.db.findFirstRow(
        session,
        where: (t) => t.taigaId.equals(id),
      );
      print('TaigaProjectEndpoint readByTaigaProjectId Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaProject?> updateById(
      Session session, TaigaProject taigaProject) async {
    if (taigaProject.id != null) {
      final modify = await TaigaProject.db.findById(
        session,
        taigaProject.id!,
      );
      if (modify != null) {
        modify.taigaId = taigaProject.taigaId;
        modify.title = taigaProject.title;
        modify.title = taigaProject.title;
        final response = await TaigaProject.db.updateRow(
          session,
          modify,
        );
        print('TaigaProjectEndpoint updateById Response: \n $response');
        return response;
      }
    }
    return null;
  }

  Future<int?> deleteById(Session session, TaigaProject taigaProject) async {
    if (taigaProject.id != null) {
      final findRow = await TaigaProject.db.findById(session, taigaProject.id!);
      if (findRow != null) {
        final response = await TaigaProject.db.deleteRow(session, findRow);
        print('TaigaProjectEndpoint deleteById Response: \n $response');
        return response;
      }
    }
    return null;
  }
}

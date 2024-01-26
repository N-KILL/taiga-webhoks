import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';

// TODO(Nacho): Comentar todo el codigo, ver como handlear los prints

class TaigaJobEndpoint extends Endpoint {
  Future<TaigaJob?> create(Session session, TaigaJob taigaJob) async {
    try {
      final response = await TaigaJob.db.insertRow(session, taigaJob);
      print('TaigaJobEndpoint Create Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<List<TaigaJob>?> createOnBulk(
      Session session, List<TaigaJob> taigaJob) async {
    try {
      final response = await TaigaJob.db.insert(session, taigaJob);
      print('TaigaJobEndpoint createOnBulk Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJob?> readById(Session session, int id) async {
    try {
      final response = await TaigaJob.db.findById(session, id,
          include: TaigaJob.include(
            project: TaigaProject.include(),
          ));
      print('TaigaJobEndpoint readById Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJob?> readByTitle(Session session, TaigaJob taigaJob) async {
    try {
      final response = await TaigaJob.db.findFirstRow(session,
          where: (t) => t.title.equals(taigaJob.title),
          include: TaigaJob.include(
            project: TaigaProject.include(),
          ));
      print('TaigaJobEndpoint readByTitle Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJob?> readByType(Session session, TaigaJob taigaJob) async {
    try {
      final response = await TaigaJob.db.findFirstRow(session,
          where: (t) => t.type.equals(taigaJob.type),
          include: TaigaJob.include(
            project: TaigaProject.include(),
          ));
      print('TaigaJobEndpoint readByType Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJob?> readByStatus(Session session, TaigaJob taigaJob) async {
    try {
      final response = await TaigaJob.db.findFirstRow(session,
          where: (t) => t.status.equals(taigaJob.status),
          include: TaigaJob.include(
            project: TaigaProject.include(),
          ));
      print('TaigaJobEndpoint readByStatus Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  /// Use this for specific cases because the reference number is unique per
  /// project
  Future<TaigaJob?> readByProjectIdAndRefNumber(
    Session session, {
    required int projectId,
    required int taigaRefNumber,
  }) async {
    try {
      final response = await TaigaJob.db.findFirstRow(session,
          where: (t) =>
              t.projectId.equals(projectId) &
              t.taigaRefNumber.equals(taigaRefNumber),
          include: TaigaJob.include(
            project: TaigaProject.include(),
          ));
      print(
          'TaigaJobEndpoint readByProjectIdAndRefNumber Response: \n $response');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJob?> updateById(
    Session session, {
    required TaigaJob taigaJob,
    required int id,
  }) async {
    final modify = await TaigaJob.db.findById(
      session,
      id,
    );
    if (modify != null) {
      modify.type = taigaJob.type;
      modify.status = taigaJob.status;
      modify.description = taigaJob.description;
      modify.title = taigaJob.title;
      final response = await TaigaJob.db.updateRow(
        session,
        modify,
      );
      print('TaigaJobEndpoint updateById Response: \n $response');
      return response;
    }
    return null;
  }

  Future<int?> deleteById(Session session, TaigaJob taigaJob) async {
    if (taigaJob.id != null) {
      final findRow = await TaigaJob.db.findById(session, taigaJob.id!);
      if (findRow != null) {
        final response = await TaigaJob.db.deleteRow(session, findRow);
        print('TaigaJobEndpoint deleteById Response: \n $response');
        return response;
      }
    }
    return null;
  }
}

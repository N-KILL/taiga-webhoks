import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_commentaries.dart';

// TODO(Nacho): Comentar todo el codigo, ver como handlear los prints

class TaigaJobCommentariesEndpoint extends Endpoint {
  Future<TaigaJobCommentaries?> create(
      Session session, TaigaJobCommentaries taigaJobCommentaries) async {
    try {
      final response = await TaigaJobCommentaries.db
          .insertRow(session, taigaJobCommentaries);
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<bool> createOnBulk(
      Session session, List<TaigaJobCommentaries> taigaJobCommentaries) async {
    try {
      final response =
          await TaigaJobCommentaries.db.insert(session, taigaJobCommentaries);
      print(response);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<TaigaJobCommentaries?> readById(Session session, int id) async {
    try {
      final response = await TaigaJobCommentaries.db.findById(session, id);
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<TaigaJobCommentaries?> updateById(
    Session session, {
    required TaigaJobCommentaries taigaJobCommentaries,
    required int id,
  }) async {
    final modify = await TaigaJobCommentaries.db.findById(
      session,
      id,
    );
    if (modify != null) {
      modify.details = taigaJobCommentaries.details;
      final updatedJob = await TaigaJobCommentaries.db.updateRow(
        session,
        modify,
      );
      return (updatedJob);
    }
    return null;
  }

  Future<bool> deleteById(
      Session session, TaigaJobCommentaries taigaJobCommentaries) async {
    if (taigaJobCommentaries.id != null) {
      final findRow = await TaigaJobCommentaries.db
          .findById(session, taigaJobCommentaries.id!);
      if (findRow != null) {
        final deletedItemId =
            await TaigaJobCommentaries.db.deleteRow(session, findRow);
        print(deletedItemId);
      }
    }
    return false;
  }
}

import 'package:serverpod/serverpod.dart';

class CrudEndpoint extends Endpoint {
  Future<String> create(Session session, String name) async {
    return 'Created $name';
  }
    Future<String> read(Session session, String name) async {
    return 'Reading $name';
  }
    Future<String> update(Session session, String name) async {
    return 'Updating $name';
  }
    Future<String> delete(Session session, String name) async {
    return 'Deleting $name';
  }
}

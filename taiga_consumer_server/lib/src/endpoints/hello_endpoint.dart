import 'package:serverpod/serverpod.dart';

class HelloEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    return 'Hello $name';
  }
}

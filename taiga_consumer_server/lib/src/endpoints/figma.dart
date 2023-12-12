import 'package:serverpod/serverpod.dart';
// import 'package:taiga_consumer_server/src/generated/protocol.dart';

class FigmaEndpoint extends Endpoint {
  Future<Map<String, dynamic>> figma(Session session) async {
    Map<String, dynamic> body = {
      "data": [
        {"Userstory": "Login", "Reference": "3", "Status": "In process"},
        {"Userstory": "Home Page", "Reference": "15", "Status": "Rejected"},
        {"Userstory": "Third", "Reference": "333", "Status": "Approved"}
      ]
    };
    return body;
  }
}
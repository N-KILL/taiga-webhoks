import 'dart:convert';
import 'dart:io';

import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';
import 'package:serverpod/serverpod.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

class RouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    final decodedBody = await utf8.decodeStream(request);
    final body = json.decode(decodedBody);
    Map<String, dynamic> jsonData = json.decode(decodedBody);
    print('Webhook received:');
    print('DecodedBody: $decodedBody');
    print('This is jsonData: $jsonData');
    final model = TaigaPayload.fromJson(jsonData);
    print('This is model: $model');
    // print('By Id: ${model.by.id}');
    // print('Deleted By: ${model.by.fullName}');
    // print('Date.id: ${model.data.id}');
    // print('Date.ref: ${model.data.ref}');
    // print('Date.createdDate: ${model.data.createdDate}');
    // print('Date.permalink: ${model.data.permalink}');
    // print('Date.ProjectName: ${model.data.project.name}');
    // print('Date.TypeId: ${model.data.type.id}');
    // print('Date.Type: ${model.data.type.color}');
    // print('Date.TypeName: ${model.data.type.name}');
    return WebHooksView(webhookData: body);
  }
}

class DefaultRouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    return DefaultPageWidget();
  }
}

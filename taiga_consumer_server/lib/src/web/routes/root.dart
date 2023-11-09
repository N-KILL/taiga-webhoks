import 'dart:convert';
import 'dart:io';

import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';
import 'package:serverpod/serverpod.dart';

class RouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    final decodedBody = await utf8.decodeStream(request);
    // RegExp para sacar los espacios en blanco fuera de los corchetes
    final cleanedBody =
        decodedBody.replaceAll(RegExp(r'\s+(?=[{\["a-zA-Z])'), '');
    print('Webhook received : $cleanedBody');
    final body = json.decode(decodedBody);
    return WebHooksView(webhookData: body);
  }
}

class DefaultRouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    return DefaultPageWidget();
  }
}

import 'package:serverpod/serverpod.dart';

class DefaultPageWidget extends Widget {
  DefaultPageWidget() : super(name: 'default') {
    values = {
      'served': DateTime.now(),
    };
  }
}

class WebHooksView extends Widget {
  final Map<String, dynamic> webhookData;

  WebHooksView({required this.webhookData}) : super(name: 'webhooks') {
    values = {
      'data': webhookData.toString(),
    };
  }
}

import 'package:serverpod/serverpod.dart';

class DefaultPageWidget extends Widget {
  final Map<String, dynamic> webhookData;

  DefaultPageWidget({required this.webhookData}) : super(name: 'default') {
    values = {
      'served': DateTime.now(),
      'runmode': webhookData.toString(),
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

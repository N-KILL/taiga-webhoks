import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/future_calls/mailer_service_call.dart';
import 'package:taiga_consumer_server/src/web/routes/git_lab.dart';

import 'package:taiga_consumer_server/src/web/routes/root.dart';
import 'package:taiga_consumer_server/src/web/routes/taiga.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
  );

  // Register a Future call for the mail service
  //? Note: This is hardcoded by the moment
  pod.registerFutureCall(
    SendUpdatesFutureCall(),
    'mailUpdateNotification',
  );
  pod.futureCallAtTime(
    'mailUpdateNotification',
    null,
    DateTime.now(),
  );

  // Setup a default page at the web root.
  pod.webServer.addRoute(
    DefaultRouteRoot(),
    '/',
  );

  // Taiga
  pod.webServer.addRoute(
    TaigaRoute(),
    '/webhook',
  );

  // GitLab
  pod.webServer.addRoute(
    RouteGitLab(),
    '/gitlab',
  );

  // pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  pod.webServer.addRoute(
    RouteStaticDirectory(
      serverDirectory: 'static',
      basePath: '/',
    ),
    '/*',
  );

  // Start the server.
  await pod.start();
}

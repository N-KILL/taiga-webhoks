import 'dart:io';

import 'package:communication_service/communication_service.dart';
import 'package:communication_service/src/delegates/persistance/strategy/postgres_strategy.dart';
import 'package:logging/logging.dart';

/// This function [sendMail] send a mail into the selected [email].
///
/// Parameters
/// <ul>
/// <li>[email] : The email where the mail will be send</li>
/// <li>[message] : The message or content of the email</li>
/// </ul>
Future<bool> sendMail({
  required String email,
  required String message,
}) async {
  Logger.root.onRecord.listen(
    (record) {
      var start = '\x1b[90m';
      const end = '\x1b[0m';
      const white = '\x1b[37m';

      switch (record.level.name) {
        case 'INFO':
          start = '\x1b[37m';
          break;
        case 'FINE':
          start = '\x1B[32m';
          break;
        case 'FINER':
          start = '\x1B[34m';
          break;
        case 'FINEST':
          start = '\x1B[36m';
          break;
        case 'SEVERE':
          start = '\x1b[103m\x1b[31m';
          break;
        case 'SHOUT':
          start = '\x1b[41m\x1b[93m';
          break;
      }

      message =
          '$white$end$start [${record.level.name}]: ${record.message} $end';

      if (record.error != null) {
        message += '\n${record.error}';
        if (record.stackTrace != null) {
          message += '\n${record.stackTrace}';
        }
      }
    },
  );

  final smpt = CommunicationService(
    persistanceDelegate: PostgresStrategy(
      host: 'monorail.proxy.rlwy.net',
      databaseName: 'railway',
      userName: 'postgres',
      dbPassword: 'EabAagcEGfCgdF1E5dCG6-6gF--B4aDg',
      port: 46802,
    ),
    // TODO(Nacho): Esto a futuro tiene q ser .env
    email: 'nidTesting@hotmail.com',
    displayName: 'nidTesting@hotmail.com',
    password: 'TestNidus1234_',
    serverProvider: ServerProvider.outlook,
  );

  await smpt.setUp();

  await smpt.sendEmail(
    logoUuid: '1234',
    to: email,
    subject: 'Testing',
    htmlBody:
        '<!DOCTYPE html><html><head><title>Your Page Title</title></head><body><h1>$message</h1></body</html>',
  );

  exit(0);
}

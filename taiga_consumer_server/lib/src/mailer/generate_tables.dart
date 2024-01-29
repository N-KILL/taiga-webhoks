import 'package:communication_service/communication_service.dart';

void main() async {
  await PostgresStrategy(
    host: 'monorail.proxy.rlwy.net',
    databaseName: 'railway',
    userName: 'postgres',
    dbPassword: 'EabAagcEGfCgdF1E5dCG6-6gF--B4aDg',
    port: 46802,
  ).initialFixture('public');
}

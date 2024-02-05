import 'package:communication_service/communication_service.dart';

void main() async {
  await PostgresStrategy(
      host: 'alcanza-qa.cd2usnwrufvg.us-east-2.rds.amazonaws.com',
      databaseName: 'defaultdb',
      userName: 'postgresadmin',
      dbPassword: '1Tzb7l18FSBEELjn',
      port: 5432,
  ).initialFixture('public');
}
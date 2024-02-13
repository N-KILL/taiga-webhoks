import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/endpoints/figma_endpoints.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';

/// This [databaseEndpoint] have all the basic stuff to generate a new database,
/// running task like creating the dummies for the Figma plugin.
///
///! Note: This have to be used right after creating a new empty database
class databaseEndpoint extends Endpoint {
  /// This [createFigmaDummies] endpoint is used to generate the dummies for
  /// Figma, this is a dummy [User], which can have any id, but can't be deleted
  /// and the dummy [StatusCardDetails] which need to have the id `1`.
  ///
  /// Because when it have to be used, always will be called as ad 1, and not
  /// by any other value. To prevent this, the endpoint return false, indicating
  /// something goes wrong (The id wasn't 1). But you can fix this manually on 
  /// the database (Not recommended)
  /// 
  /// This function don't require any parameter, just [session] which is 
  /// provided automatically by `Serverpod`.
  Future<bool> createFigmaDummies(Session session) async {
    session.log('Running createFigmaDummies');

    final user = await User.db.insertRow(
      session,
      User(username: 'not defined', fullName: 'not defined'),
    );

    final response = await FigmaEndpoint().createStatusDetails(
      session,
      statusCardDetails: StatusCardDetails(
        date: 'N/A',
        byUserId: user.id,
      ),
    );

    /// The status card dummy need to be id 1 to work fine. So this will throw
    /// an error in case this break
    if (response.id != 1) {
      session.log(
        'Error: The dummy Status Card was created with id: ${response.id}',
        level: LogLevel.error,
      );
      session.log(
        'Please fix this',
        level: LogLevel.error,
      );
      return false;
    }

    return true;
  }
}

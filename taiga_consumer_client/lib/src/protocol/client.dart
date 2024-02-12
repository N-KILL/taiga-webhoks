/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:taiga_consumer_client/src/protocol/protocol/figma/figma_action.dart'
    as _i3;
import 'package:taiga_consumer_client/src/protocol/protocol/figma/figma_hu_data.dart'
    as _i4;
import 'package:taiga_consumer_client/src/protocol/protocol/figma/sprint.dart'
    as _i5;
import 'package:taiga_consumer_client/src/protocol/protocol/figma/status_card.dart'
    as _i6;
import 'package:taiga_consumer_client/src/protocol/protocol/figma/hu_status_enum.dart'
    as _i7;
import 'package:taiga_consumer_client/src/protocol/protocol/figma/status_card_detail.dart'
    as _i8;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_project.dart'
    as _i9;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job.dart'
    as _i10;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job_updates.dart'
    as _i11;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job_commentaries.dart'
    as _i12;
import 'package:taiga_consumer_client/src/protocol/protocol/user.dart' as _i13;
import 'protocol.dart' as _i14;

/// This class [FigmaEndpoint] is used to send information to the figma plugin
/// https://github.com/N-KILL/Nidus-Figma-Plugin
///
/// Those are the models relates to this endpoint:
/// <ul>
/// </ul>
/// {@category Endpoint}
class EndpointFigma extends _i1.EndpointRef {
  EndpointFigma(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'figma';

  /// This [figmaResponse] method, is the one who's called, by the figma plugin
  /// this have the parameter [projectName], which is used to filter the details
  /// of the projects
  _i2.Future<List<_i3.FigmaAction>?> figmaResponse(
          {required String projectName}) =>
      caller.callServerEndpoint<List<_i3.FigmaAction>?>(
        'figma',
        'figmaResponse',
        {'projectName': projectName},
      );

  /// This [createNewAction] endpoint is for create a new action into the db
  /// create. And if already exist any action of the same type, and its active
  /// in this case, don't do any. Because it will works anyway
  _i2.Future<_i3.FigmaAction> createNewAction(
          {required _i3.FigmaAction figmaAction}) =>
      caller.callServerEndpoint<_i3.FigmaAction>(
        'figma',
        'createNewAction',
        {'figmaAction': figmaAction},
      );

  _i2.Future<_i4.HuData> createNewHUData({required _i4.HuData huData}) =>
      caller.callServerEndpoint<_i4.HuData>(
        'figma',
        'createNewHUData',
        {'huData': huData},
      );

  _i2.Future<_i4.HuData?> updateHuData({required _i4.HuData huData}) =>
      caller.callServerEndpoint<_i4.HuData?>(
        'figma',
        'updateHuData',
        {'huData': huData},
      );

  _i2.Future<_i5.Sprint?> getSprintDataByTaigaId({required dynamic taigaId}) =>
      caller.callServerEndpoint<_i5.Sprint?>(
        'figma',
        'getSprintDataByTaigaId',
        {'taigaId': taigaId},
      );

  _i2.Future<_i5.Sprint?> getSprintDataBySprintName({required String name}) =>
      caller.callServerEndpoint<_i5.Sprint?>(
        'figma',
        'getSprintDataBySprintName',
        {'name': name},
      );

  _i2.Future<_i5.Sprint?> createSprint({
    required int taigaId,
    required String name,
  }) =>
      caller.callServerEndpoint<_i5.Sprint?>(
        'figma',
        'createSprint',
        {
          'taigaId': taigaId,
          'name': name,
        },
      );

  _i2.Future<_i4.HuData?> getHUData({
    required int projectId,
    required int huDataRefNum,
  }) =>
      caller.callServerEndpoint<_i4.HuData?>(
        'figma',
        'getHUData',
        {
          'projectId': projectId,
          'huDataRefNum': huDataRefNum,
        },
      );

  _i2.Future<_i6.StatusCard> createStatusCard(
          {required _i6.StatusCard statusCard}) =>
      caller.callServerEndpoint<_i6.StatusCard>(
        'figma',
        'createStatusCard',
        {'statusCard': statusCard},
      );

  _i2.Future<_i6.StatusCard?> getStatusCardByUserStoryId(
          {required int huDataId}) =>
      caller.callServerEndpoint<_i6.StatusCard?>(
        'figma',
        'getStatusCardByUserStoryId',
        {'huDataId': huDataId},
      );

  _i2.Future<_i6.StatusCard?> getStatusCardById({required int statusCardId}) =>
      caller.callServerEndpoint<_i6.StatusCard?>(
        'figma',
        'getStatusCardById',
        {'statusCardId': statusCardId},
      );

  /// This endpoint [updateStatusCard] is used to update the status card of an
  /// user story.
  ///
  /// <h4> Required values </h4>
  ///
  /// <ul>
  /// <li> [statusCardId] : [int] is the status card we re going to update </li>
  /// <li> [updateValue] : [HuStatus] is the value we re going to update </li>
  /// <h4> Note: [updateValue] Only can be type: </h4>
  /// <ul>
  /// <li> [HuStatus.LISTA] </li>
  /// <li> [HuStatus.DESARROLLANDOSE] </li>
  /// <li> [HuStatus.TESTEANDOSE] </li>
  /// <li> [HuStatus.UAT] </li>
  /// </ul>
  ///
  /// Any other value will return an <strong>error</strong>
  ///
  /// <li> [statusCardDetails] : [int] are the details of the value we re going
  /// to update </li>
  /// </ul>
  _i2.Future<_i6.StatusCard> updateStatusCard({
    required int statusCardId,
    required _i7.HuStatus updateValue,
    required _i8.StatusCardDetails statusCardDetails,
  }) =>
      caller.callServerEndpoint<_i6.StatusCard>(
        'figma',
        'updateStatusCard',
        {
          'statusCardId': statusCardId,
          'updateValue': updateValue,
          'statusCardDetails': statusCardDetails,
        },
      );

  _i2.Future<_i8.StatusCardDetails> createStatusDetails(
          {required _i8.StatusCardDetails statusCardDetails}) =>
      caller.callServerEndpoint<_i8.StatusCardDetails>(
        'figma',
        'createStatusDetails',
        {'statusCardDetails': statusCardDetails},
      );

  /// This endpoint [deleteStatusCardDetails] is used to delete information from
  /// a StatusCardDetails createed in the database.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `statusCardDetailsId`: [int] Its the id of the statusCardDetailsId on the
  /// database <br>
  _i2.Future<int> deleteStatusCardDetails({required int statusCardDetailsId}) =>
      caller.callServerEndpoint<int>(
        'figma',
        'deleteStatusCardDetails',
        {'statusCardDetailsId': statusCardDetailsId},
      );
}

/// This class [TaigaProjectEndpoint] is used to manage the project data in the
/// database. Have al the CRUD operators (Create, Read, Update, Delete) to the
/// project object
/// {@category Endpoint}
class EndpointTaigaProject extends _i1.EndpointRef {
  EndpointTaigaProject(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'taigaProject';

  /// This [projectCreate] is used to create a [TaigaProject] in the database.
  _i2.Future<_i9.TaigaProject?> projectCreate(
          {required _i9.TaigaProject taigaProject}) =>
      caller.callServerEndpoint<_i9.TaigaProject?>(
        'taigaProject',
        'projectCreate',
        {'taigaProject': taigaProject},
      );

  /// This [projectCreateOnBulk] is used to create multiple [TaigaProject] in the
  /// database.
  _i2.Future<List<_i9.TaigaProject>?> projectCreateOnBulk(
          {required List<_i9.TaigaProject> taigaProject}) =>
      caller.callServerEndpoint<List<_i9.TaigaProject>?>(
        'taigaProject',
        'projectCreateOnBulk',
        {'taigaProject': taigaProject},
      );

  /// This [projectReadById] is used to read a [TaigaProject] from the database
  /// using his [id]
  _i2.Future<_i9.TaigaProject?> projectReadById({required int id}) =>
      caller.callServerEndpoint<_i9.TaigaProject?>(
        'taigaProject',
        'projectReadById',
        {'id': id},
      );

  /// This [projectReadByTitle] is used to read a [TaigaProject] from the
  /// database using his [projectTitle]
  _i2.Future<_i9.TaigaProject?> projectReadByTitle(
          {required String projectTitle}) =>
      caller.callServerEndpoint<_i9.TaigaProject?>(
        'taigaProject',
        'projectReadByTitle',
        {'projectTitle': projectTitle},
      );

  /// This [projectReadByTaigaProjectId] is used to read a [TaigaProject] from
  /// the database using his [id] from `Taiga`
  _i2.Future<_i9.TaigaProject?> projectReadByTaigaProjectId(
          {required int id}) =>
      caller.callServerEndpoint<_i9.TaigaProject?>(
        'taigaProject',
        'projectReadByTaigaProjectId',
        {'id': id},
      );

  /// This [projectUpdateProject] is used to update a [TaigaProject] from
  /// the database using another [TaigaProject].
  ///
  /// So use any `read` method, and then call this, modifying the elements
  /// that you want.
  ///
  /// <h5> Using a [TaigaProject] without id, will make the endpoint fail, and
  /// return null</h5>
  _i2.Future<_i9.TaigaProject?> projectUpdateProject(
          {required _i9.TaigaProject taigaProject}) =>
      caller.callServerEndpoint<_i9.TaigaProject?>(
        'taigaProject',
        'projectUpdateProject',
        {'taigaProject': taigaProject},
      );

  /// This [projectDeleteProject] is used to delete a [TaigaProject] from the
  /// database, using the info of a [taigaProject]
  _i2.Future<int?> projectDeleteProject(
          {required _i9.TaigaProject taigaProject}) =>
      caller.callServerEndpoint<int?>(
        'taigaProject',
        'projectDeleteProject',
        {'taigaProject': taigaProject},
      );

  /// This [projectDeleteProjectById] is used to delete a [TaigaProject] from the
  /// database, using the [projectId]
  _i2.Future<int?> projectDeleteProjectById({required int projectId}) =>
      caller.callServerEndpoint<int?>(
        'taigaProject',
        'projectDeleteProjectById',
        {'projectId': projectId},
      );
}

/// This class [TaigaJobEndpoint] have all the CRUD methods to modify a job
/// related model on the database.
///
/// </h4>Those are the models relates to this endpoint </h4>
/// <ul>
/// <li>[TaigaJob]</li>
/// <li>[TaigaJobUpdates]</li>
/// <li>[TaigaJobCommentaries]</li>
/// </ul>
/// {@category Endpoint}
class EndpointTaigaJob extends _i1.EndpointRef {
  EndpointTaigaJob(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'taigaJob';

  /// This [taigaJobCreate] is used to store a [TaigaJob] in the database
  _i2.Future<_i10.TaigaJob?> taigaJobCreate(
          {required _i10.TaigaJob taigaJob}) =>
      caller.callServerEndpoint<_i10.TaigaJob?>(
        'taigaJob',
        'taigaJobCreate',
        {'taigaJob': taigaJob},
      );

  /// This [taigaJobCreateOnBulk] is used to store a bunch of [TaigaJob] in the
  /// database
  _i2.Future<List<_i10.TaigaJob>?> taigaJobCreateOnBulk(
          {required List<_i10.TaigaJob> taigaJob}) =>
      caller.callServerEndpoint<List<_i10.TaigaJob>?>(
        'taigaJob',
        'taigaJobCreateOnBulk',
        {'taigaJob': taigaJob},
      );

  /// This [taigaJobReadById] method, is used to read a [TaigaJob] from the
  /// database, using his [id]
  _i2.Future<_i10.TaigaJob?> taigaJobReadById({required int id}) =>
      caller.callServerEndpoint<_i10.TaigaJob?>(
        'taigaJob',
        'taigaJobReadById',
        {'id': id},
      );

  /// This [taigaJobReadByTitle] method, is used to read a [TaigaJob] from the
  /// database, using his [title]
  _i2.Future<_i10.TaigaJob?> taigaJobReadByTitle({required String title}) =>
      caller.callServerEndpoint<_i10.TaigaJob?>(
        'taigaJob',
        'taigaJobReadByTitle',
        {'title': title},
      );

  /// This [taigaJobReadByType] method, is used to read a list of [TaigaJob]
  /// from the database, using his [type]
  _i2.Future<List<_i10.TaigaJob>?> taigaJobReadByType({required String type}) =>
      caller.callServerEndpoint<List<_i10.TaigaJob>?>(
        'taigaJob',
        'taigaJobReadByType',
        {'type': type},
      );

  /// This [taigaJobReadByType] method, is used to read a list of [TaigaJob]
  /// from the database, using his [status]
  _i2.Future<List<_i10.TaigaJob>?> taigaJobReadByStatus(
          {required String status}) =>
      caller.callServerEndpoint<List<_i10.TaigaJob>?>(
        'taigaJob',
        'taigaJobReadByStatus',
        {'status': status},
      );

  /// This [taigaJobReadByProjectIdAndRefNumber] is used for read a TaigaJob
  /// based on his [projectId] and [taigaRefNumber]. Which is specific is unique
  /// per project
  _i2.Future<_i10.TaigaJob?> taigaJobReadByProjectIdAndRefNumber({
    required int projectId,
    required int taigaRefNumber,
  }) =>
      caller.callServerEndpoint<_i10.TaigaJob?>(
        'taigaJob',
        'taigaJobReadByProjectIdAndRefNumber',
        {
          'projectId': projectId,
          'taigaRefNumber': taigaRefNumber,
        },
      );

  /// This [taigaJobUpdateById] is used to update a [TaigaJob] using his is ID
  ///
  /// This will find a [TaigaJob] object on the database, based on the [id],
  /// and will be modified with the parameter [taigaJob].
  _i2.Future<_i10.TaigaJob?> taigaJobUpdateById({
    required _i10.TaigaJob taigaJob,
    required int id,
  }) =>
      caller.callServerEndpoint<_i10.TaigaJob?>(
        'taigaJob',
        'taigaJobUpdateById',
        {
          'taigaJob': taigaJob,
          'id': id,
        },
      );

  /// This [TaigaJobDeleteById] is used to delete a job from the database
  /// using his id
  _i2.Future<int?> TaigaJobDeleteById({required int id}) =>
      caller.callServerEndpoint<int?>(
        'taigaJob',
        'TaigaJobDeleteById',
        {'id': id},
      );

  /// This [taigaJobUpdatesCreate] is for create a register of a
  /// [TaigaJobUpdates] on the database
  _i2.Future<_i11.TaigaJobUpdates?> taigaJobUpdatesCreate(
          {required _i11.TaigaJobUpdates taigaJobUpdates}) =>
      caller.callServerEndpoint<_i11.TaigaJobUpdates?>(
        'taigaJob',
        'taigaJobUpdatesCreate',
        {'taigaJobUpdates': taigaJobUpdates},
      );

  /// This [taigaJobUpdatesCreateOnBulk] is for create a bunch of
  /// [TaigaJobUpdates] at the same time.
  _i2.Future<List<_i11.TaigaJobUpdates>?> taigaJobUpdatesCreateOnBulk(
          {required List<_i11.TaigaJobUpdates> taigaJobUpdates}) =>
      caller.callServerEndpoint<List<_i11.TaigaJobUpdates>?>(
        'taigaJob',
        'taigaJobUpdatesCreateOnBulk',
        {'taigaJobUpdates': taigaJobUpdates},
      );

  /// This [taigaJobUpdatesReadById] is used to read a [TaigaJobUpdates] by his
  /// [id]
  _i2.Future<_i11.TaigaJobUpdates?> taigaJobUpdatesReadById(
          {required int id}) =>
      caller.callServerEndpoint<_i11.TaigaJobUpdates?>(
        'taigaJob',
        'taigaJobUpdatesReadById',
        {'id': id},
      );

  /// This [taigaJobUpdatesReadFilteringByEpoch] is used to filter by dateTime,
  /// but using epoch format, this have a [min] and [max] parameter, so will
  /// grab all the data between those two.
  _i2.Future<List<_i11.TaigaJobUpdates>?> taigaJobUpdatesReadFilteringByEpoch({
    required int min,
    required int max,
  }) =>
      caller.callServerEndpoint<List<_i11.TaigaJobUpdates>?>(
        'taigaJob',
        'taigaJobUpdatesReadFilteringByEpoch',
        {
          'min': min,
          'max': max,
        },
      );

  /// This [taigaJobUpdatesUpdateById] is used to update a [TaigaJobUpdates]
  /// using an [id] and a [taigaJobUpdates] which is a [TaigaJobUpdates]
  /// instance
  _i2.Future<_i11.TaigaJobUpdates?> taigaJobUpdatesUpdateById({
    required int id,
    required _i11.TaigaJobUpdates taigaJobUpdates,
  }) =>
      caller.callServerEndpoint<_i11.TaigaJobUpdates?>(
        'taigaJob',
        'taigaJobUpdatesUpdateById',
        {
          'id': id,
          'taigaJobUpdates': taigaJobUpdates,
        },
      );

  /// This [taigaJobUpdatesDeleteById] is used to delete a [TaigaJobUpdates]
  /// using his id
  _i2.Future<int?> taigaJobUpdatesDeleteById({required int id}) =>
      caller.callServerEndpoint<int?>(
        'taigaJob',
        'taigaJobUpdatesDeleteById',
        {'id': id},
      );

  /// This [taigaJobCommentariesCreate] is used to create a
  /// [taigaJobCommentaries]
  _i2.Future<_i12.TaigaJobCommentaries?> taigaJobCommentariesCreate(
          {required _i12.TaigaJobCommentaries taigaJobCommentaries}) =>
      caller.callServerEndpoint<_i12.TaigaJobCommentaries?>(
        'taigaJob',
        'taigaJobCommentariesCreate',
        {'taigaJobCommentaries': taigaJobCommentaries},
      );

  /// This [taigaJobCommentariesCreateOnBulk] is used to create a bunch of
  /// [taigaJobCommentaries] at the same time.
  _i2.Future<List<_i12.TaigaJobCommentaries>?> taigaJobCommentariesCreateOnBulk(
          {required List<_i12.TaigaJobCommentaries> taigaJobCommentaries}) =>
      caller.callServerEndpoint<List<_i12.TaigaJobCommentaries>?>(
        'taigaJob',
        'taigaJobCommentariesCreateOnBulk',
        {'taigaJobCommentaries': taigaJobCommentaries},
      );

  /// This [taigaJobCommentariesReadById] is for read a [TaigaJobCommentaries]
  /// using his id
  _i2.Future<_i12.TaigaJobCommentaries?> taigaJobCommentariesReadById(
          {required int id}) =>
      caller.callServerEndpoint<_i12.TaigaJobCommentaries?>(
        'taigaJob',
        'taigaJobCommentariesReadById',
        {'id': id},
      );

  /// This [taigaJobCommentariesUpdateById] is for update a comment by his [id]
  /// and a [taigaJobCommentaries] which is a [TaigaJobCommentaries] instance
  _i2.Future<_i12.TaigaJobCommentaries?> taigaJobCommentariesUpdateById({
    required _i12.TaigaJobCommentaries taigaJobCommentaries,
    required int id,
  }) =>
      caller.callServerEndpoint<_i12.TaigaJobCommentaries?>(
        'taigaJob',
        'taigaJobCommentariesUpdateById',
        {
          'taigaJobCommentaries': taigaJobCommentaries,
          'id': id,
        },
      );

  /// This [taigaJobCommentariesDeleteById] is used to delete a
  /// [TaigaJobCommentaries] using his [id]
  _i2.Future<bool> taigaJobCommentariesDeleteById({required int id}) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'taigaJobCommentariesDeleteById',
        {'id': id},
      );
}

/// This [UserEndpoint] contains all the CRUD method to interact with an user
/// from the database.
/// <h5> NOTE: </h5>
///
/// The Read Methods, can return `null` when can't find any [User] information
///
/// <h5> CREATE METHODS </h5>
/// <ul>
/// <li>[createUser]</li>
/// <li>[createMultipleUsers]</li>
/// </ul>
///
/// <h5> READ METHODS </h5>
/// <ul>
/// <li>[getAllUsers]</li>
/// <li>[getUserById]</li>
/// <li>[getUserByTaigaId]</li>
/// <li>[getUserByGitHubId]</li>
/// <li>[getUserByGitLabId]</li>
/// </ul>
///
/// <h5> UPDATE METHODS </h5>
/// <ul>
/// <li>[updateUserById]</li>
/// </ul>
///
/// <h5> DELETE METHODS </h5>
/// <ul>
/// <li>[deleteUser]</li>
/// </ul>
/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  /// This endpoint [getAllUsers] is used to get all the users on the database
  /// Don't require any parameter, just call it.
  _i2.Future<List<_i13.User>> getAllUsers() =>
      caller.callServerEndpoint<List<_i13.User>>(
        'user',
        'getAllUsers',
        {},
      );

  /// This endpoint [getUserById] is used to get a user from the database using
  /// his id
  ///
  /// <h4> Required data: </h4>
  ///
  /// `userId`: [int] Id of the user on the database
  _i2.Future<_i13.User?> getUserById({required int userId}) =>
      caller.callServerEndpoint<_i13.User?>(
        'user',
        'getUserById',
        {'userId': userId},
      );

  /// This endpoint [getUserByTaigaId] is used to get a user from the database
  /// using his id of `Taiga`
  ///
  /// <h4> Required data: </h4>
  ///
  /// `taigaId`: [int] Id of the user on `Taiga`
  _i2.Future<_i13.User?> getUserByTaigaId({required int taigaId}) =>
      caller.callServerEndpoint<_i13.User?>(
        'user',
        'getUserByTaigaId',
        {'taigaId': taigaId},
      );

  /// This endpoint [getUserByGitHubId] is used to get a user from the database
  /// using his id of `GitHub`
  ///
  /// <h4> Required data: </h4>
  ///
  /// `gitHubId`: [int] Id of the user on `GitHub`
  _i2.Future<_i13.User?> getUserByGitHubId({required int gitHubId}) =>
      caller.callServerEndpoint<_i13.User?>(
        'user',
        'getUserByGitHubId',
        {'gitHubId': gitHubId},
      );

  /// This endpoint [getUserByGitLabId] is used to get a user from the database
  /// using his id of `GitLab`
  ///
  /// <h4> Required data: </h4>
  ///
  /// `gitLabId`: [int] Id of the user on `GitLab`
  _i2.Future<_i13.User?> getUserByGitLabId({required int gitLabId}) =>
      caller.callServerEndpoint<_i13.User?>(
        'user',
        'getUserByGitLabId',
        {'gitLabId': gitLabId},
      );

  /// This endpoint [createUser] is used to create a new user register in the
  /// database
  /// <h4> Required data: </h4>
  ///
  /// `user`: [User] instance with all the user data.
  _i2.Future<_i13.User> createUser({required _i13.User user}) =>
      caller.callServerEndpoint<_i13.User>(
        'user',
        'createUser',
        {'user': user},
      );

  /// This endpoint [createUser] is used to create a multiple new user registers
  /// in the database
  ///
  /// <h4> Required data: </h4>
  ///
  /// `users`: List[User] instance with all the user data.
  _i2.Future<List<_i13.User>> createMultipleUsers(
          {required List<_i13.User> users}) =>
      caller.callServerEndpoint<List<_i13.User>>(
        'user',
        'createMultipleUsers',
        {'users': users},
      );

  /// This endpoint [updateUserById] is used to update information from a user
  /// registered in the database.
  ///
  /// <h4> Note: </h4>
  /// Is recommended to read the user information first with any `get` method,
  /// and then modify the stuff and call this function, to prevent deleting data
  /// if the `user` data you give is incomplete.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `userId`: [int] Its the id of the user on the database <br>
  /// `user`: [User] instance with all the user data we re going to put
  _i2.Future<_i13.User> updateUserById({
    required int userId,
    required _i13.User user,
  }) =>
      caller.callServerEndpoint<_i13.User>(
        'user',
        'updateUserById',
        {
          'userId': userId,
          'user': user,
        },
      );

  /// This endpoint [deleteUser] is used to delete information from a user
  /// registered in the database.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `userId`: [int] Its the id of the user on the database <br>
  _i2.Future<int> deleteUser({required int userId}) =>
      caller.callServerEndpoint<int>(
        'user',
        'deleteUser',
        {'userId': userId},
      );

  /// This endpoint [GenerateUsersFromTaigaProject] is used to generate user
  /// information based on a `Taiga Project`.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `taigaUsername`: [String] Its the name used to login into `Taiga` <br>
  /// `taigaPassword`: [String] Its the password used to login into `Taiga` <br>
  /// `taigaProjectId`: [int] Its the id of the project from we re going to read
  /// the users
  _i2.Future<List<_i13.User>> GenerateUsersFromTaigaProject({
    required String taigaUsername,
    required String taigaPassword,
    required int taigaProjectId,
  }) =>
      caller.callServerEndpoint<List<_i13.User>>(
        'user',
        'GenerateUsersFromTaigaProject',
        {
          'taigaUsername': taigaUsername,
          'taigaPassword': taigaPassword,
          'taigaProjectId': taigaProjectId,
        },
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i14.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    figma = EndpointFigma(this);
    taigaProject = EndpointTaigaProject(this);
    taigaJob = EndpointTaigaJob(this);
    user = EndpointUser(this);
  }

  late final EndpointFigma figma;

  late final EndpointTaigaProject taigaProject;

  late final EndpointTaigaJob taigaJob;

  late final EndpointUser user;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'figma': figma,
        'taigaProject': taigaProject,
        'taigaJob': taigaJob,
        'user': user,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}

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
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_project.dart'
    as _i3;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job.dart'
    as _i4;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job_updates.dart'
    as _i5;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job_commentaries.dart'
    as _i6;
import 'protocol.dart' as _i7;

/// This class [TaigaProjectEndpoint] is used to manage the project data in the
/// database. Have al the CRUD operators (Create, Read, Update, Delete) to the
/// project object
/// {@category Endpoint}
class EndpointTaigaProject extends _i1.EndpointRef {
  EndpointTaigaProject(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'taigaProject';

  /// This [projectCreate] is used to create a [TaigaProject] in the database.
  _i2.Future<_i3.TaigaProject?> projectCreate(
          {required _i3.TaigaProject taigaProject}) =>
      caller.callServerEndpoint<_i3.TaigaProject?>(
        'taigaProject',
        'projectCreate',
        {'taigaProject': taigaProject},
      );

  /// This [projectCreateOnBulk] is used to create multiple [TaigaProject] in the
  /// database.
  _i2.Future<List<_i3.TaigaProject>?> projectCreateOnBulk(
          {required List<_i3.TaigaProject> taigaProject}) =>
      caller.callServerEndpoint<List<_i3.TaigaProject>?>(
        'taigaProject',
        'projectCreateOnBulk',
        {'taigaProject': taigaProject},
      );

  /// This [projectReadById] is used to read a [TaigaProject] from the database
  /// using his [id]
  _i2.Future<_i3.TaigaProject?> projectReadById({required int id}) =>
      caller.callServerEndpoint<_i3.TaigaProject?>(
        'taigaProject',
        'projectReadById',
        {'id': id},
      );

  /// This [projectReadByTitle] is used to read a [TaigaProject] from the
  /// database using his [projectTitle]
  _i2.Future<_i3.TaigaProject?> projectReadByTitle(
          {required String projectTitle}) =>
      caller.callServerEndpoint<_i3.TaigaProject?>(
        'taigaProject',
        'projectReadByTitle',
        {'projectTitle': projectTitle},
      );

  /// This [projectReadByTaigaProjectId] is used to read a [TaigaProject] from
  /// the database using his [id] from `Taiga`
  _i2.Future<_i3.TaigaProject?> projectReadByTaigaProjectId(
          {required int id}) =>
      caller.callServerEndpoint<_i3.TaigaProject?>(
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
  _i2.Future<_i3.TaigaProject?> projectUpdateProject(
          {required _i3.TaigaProject taigaProject}) =>
      caller.callServerEndpoint<_i3.TaigaProject?>(
        'taigaProject',
        'projectUpdateProject',
        {'taigaProject': taigaProject},
      );

  /// This [projectDeleteProject] is used to delete a [TaigaProject] from the
  /// database, using the info of a [taigaProject]
  _i2.Future<int?> projectDeleteProject(
          {required _i3.TaigaProject taigaProject}) =>
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

/// This class [TaigaJobEndpoints] have all the CRUD methods (CREATE, READ,
/// UPDATE, DELETE) to modify a job related model on the database.
///
/// Those are the models relates to this endpoint:
/// <ul>
/// <li>[TaigaJob]</li>
/// <li>[TaigaJobUpdates]</li>
/// <li>[TaigaJobCommentaries]</li>
/// </ul>
/// {@category Endpoint}
class EndpointTaigaJobEndpoints extends _i1.EndpointRef {
  EndpointTaigaJobEndpoints(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'taigaJobEndpoints';

  /// This [taigaJobCreate] is used to store a [TaigaJob] in the database
  _i2.Future<_i4.TaigaJob?> taigaJobCreate({required _i4.TaigaJob taigaJob}) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJobEndpoints',
        'taigaJobCreate',
        {'taigaJob': taigaJob},
      );

  /// This [taigaJobCreateOnBulk] is used to store a bunch of [TaigaJob] in the
  /// database
  _i2.Future<List<_i4.TaigaJob>?> taigaJobCreateOnBulk(
          {required List<_i4.TaigaJob> taigaJob}) =>
      caller.callServerEndpoint<List<_i4.TaigaJob>?>(
        'taigaJobEndpoints',
        'taigaJobCreateOnBulk',
        {'taigaJob': taigaJob},
      );

  /// This [taigaJobReadById] method, is used to read a [TaigaJob] from the
  /// database, using his [id]
  _i2.Future<_i4.TaigaJob?> taigaJobReadById({required int id}) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJobEndpoints',
        'taigaJobReadById',
        {'id': id},
      );

  /// This [taigaJobReadByTitle] method, is used to read a [TaigaJob] from the
  /// database, using his [title]
  _i2.Future<_i4.TaigaJob?> taigaJobReadByTitle({required String title}) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJobEndpoints',
        'taigaJobReadByTitle',
        {'title': title},
      );

  /// This [taigaJobReadByType] method, is used to read a list of [TaigaJob]
  /// from the database, using his [type]
  _i2.Future<List<_i4.TaigaJob>?> taigaJobReadByType({required String type}) =>
      caller.callServerEndpoint<List<_i4.TaigaJob>?>(
        'taigaJobEndpoints',
        'taigaJobReadByType',
        {'type': type},
      );

  /// This [taigaJobReadByType] method, is used to read a list of [TaigaJob]
  /// from the database, using his [status]
  _i2.Future<List<_i4.TaigaJob>?> taigaJobReadByStatus(
          {required String status}) =>
      caller.callServerEndpoint<List<_i4.TaigaJob>?>(
        'taigaJobEndpoints',
        'taigaJobReadByStatus',
        {'status': status},
      );

  /// This [taigaJobReadByProjectIdAndRefNumber] is used for read a TaigaJob
  /// based on his [projectId] and [taigaRefNumber]. Which is specific is unique
  /// per project
  _i2.Future<_i4.TaigaJob?> taigaJobReadByProjectIdAndRefNumber({
    required int projectId,
    required int taigaRefNumber,
  }) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJobEndpoints',
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
  _i2.Future<_i4.TaigaJob?> taigaJobUpdateById({
    required _i4.TaigaJob taigaJob,
    required int id,
  }) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJobEndpoints',
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
        'taigaJobEndpoints',
        'TaigaJobDeleteById',
        {'id': id},
      );

  /// This [taigaJobUpdatesCreate] is for create a register of a
  /// [TaigaJobUpdates] on the database
  _i2.Future<_i5.TaigaJobUpdates?> taigaJobUpdatesCreate(
          {required _i5.TaigaJobUpdates taigaJobUpdates}) =>
      caller.callServerEndpoint<_i5.TaigaJobUpdates?>(
        'taigaJobEndpoints',
        'taigaJobUpdatesCreate',
        {'taigaJobUpdates': taigaJobUpdates},
      );

  /// This [taigaJobUpdatesCreateOnBulk] is for create a bunch of
  /// [TaigaJobUpdates] at the same time.
  _i2.Future<List<_i5.TaigaJobUpdates>?> taigaJobUpdatesCreateOnBulk(
          {required List<_i5.TaigaJobUpdates> taigaJobUpdates}) =>
      caller.callServerEndpoint<List<_i5.TaigaJobUpdates>?>(
        'taigaJobEndpoints',
        'taigaJobUpdatesCreateOnBulk',
        {'taigaJobUpdates': taigaJobUpdates},
      );

  /// This [taigaJobUpdatesReadById] is used to read a [TaigaJobUpdates] by his
  /// [id]
  _i2.Future<_i5.TaigaJobUpdates?> taigaJobUpdatesReadById({required int id}) =>
      caller.callServerEndpoint<_i5.TaigaJobUpdates?>(
        'taigaJobEndpoints',
        'taigaJobUpdatesReadById',
        {'id': id},
      );

  /// This [taigaJobUpdatesReadFilteringByEpoch] is used to filter by dateTime,
  /// but using epoch format, this have a [min] and [max] parameter, so will
  /// grab all the data between those two.
  _i2.Future<List<_i5.TaigaJobUpdates>?> taigaJobUpdatesReadFilteringByEpoch({
    required int min,
    required int max,
  }) =>
      caller.callServerEndpoint<List<_i5.TaigaJobUpdates>?>(
        'taigaJobEndpoints',
        'taigaJobUpdatesReadFilteringByEpoch',
        {
          'min': min,
          'max': max,
        },
      );

  /// This [taigaJobUpdatesUpdateById] is used to update a [TaigaJobUpdates]
  /// using an [id] and a [taigaJobUpdates] which is a [TaigaJobUpdates]
  /// instance
  _i2.Future<_i5.TaigaJobUpdates?> taigaJobUpdatesUpdateById({
    required int id,
    required _i5.TaigaJobUpdates taigaJobUpdates,
  }) =>
      caller.callServerEndpoint<_i5.TaigaJobUpdates?>(
        'taigaJobEndpoints',
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
        'taigaJobEndpoints',
        'taigaJobUpdatesDeleteById',
        {'id': id},
      );

  /// This [taigaJobCommentariesCreate] is used to create a
  /// [taigaJobCommentaries]
  _i2.Future<_i6.TaigaJobCommentaries?> taigaJobCommentariesCreate(
          {required _i6.TaigaJobCommentaries taigaJobCommentaries}) =>
      caller.callServerEndpoint<_i6.TaigaJobCommentaries?>(
        'taigaJobEndpoints',
        'taigaJobCommentariesCreate',
        {'taigaJobCommentaries': taigaJobCommentaries},
      );

  /// This [taigaJobCommentariesCreateOnBulk] is used to create a bunch of
  /// [taigaJobCommentaries] at the same time.
  _i2.Future<List<_i6.TaigaJobCommentaries>?> taigaJobCommentariesCreateOnBulk(
          {required List<_i6.TaigaJobCommentaries> taigaJobCommentaries}) =>
      caller.callServerEndpoint<List<_i6.TaigaJobCommentaries>?>(
        'taigaJobEndpoints',
        'taigaJobCommentariesCreateOnBulk',
        {'taigaJobCommentaries': taigaJobCommentaries},
      );

  /// This [taigaJobCommentariesReadById] is for read a [TaigaJobCommentaries]
  /// using his id
  _i2.Future<_i6.TaigaJobCommentaries?> taigaJobCommentariesReadById(
          {required int id}) =>
      caller.callServerEndpoint<_i6.TaigaJobCommentaries?>(
        'taigaJobEndpoints',
        'taigaJobCommentariesReadById',
        {'id': id},
      );

  /// This [taigaJobCommentariesUpdateById] is for update a comment by his [id]
  /// and a [taigaJobCommentaries] which is a [TaigaJobCommentaries] instance
  _i2.Future<_i6.TaigaJobCommentaries?> taigaJobCommentariesUpdateById({
    required _i6.TaigaJobCommentaries taigaJobCommentaries,
    required int id,
  }) =>
      caller.callServerEndpoint<_i6.TaigaJobCommentaries?>(
        'taigaJobEndpoints',
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
        'taigaJobEndpoints',
        'taigaJobCommentariesDeleteById',
        {'id': id},
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
          _i7.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    taigaProject = EndpointTaigaProject(this);
    taigaJobEndpoints = EndpointTaigaJobEndpoints(this);
  }

  late final EndpointTaigaProject taigaProject;

  late final EndpointTaigaJobEndpoints taigaJobEndpoints;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'taigaProject': taigaProject,
        'taigaJobEndpoints': taigaJobEndpoints,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}

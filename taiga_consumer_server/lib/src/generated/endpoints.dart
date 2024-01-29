/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/project_endpoint.dart' as _i2;
import '../endpoints/taiga_job_endpoints.dart' as _i3;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart'
    as _i4;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart'
    as _i5;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart'
    as _i6;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_commentaries.dart'
    as _i7;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'taigaProject': _i2.TaigaProjectEndpoint()
        ..initialize(
          server,
          'taigaProject',
          null,
        ),
      'taigaJobEndpoints': _i3.TaigaJobEndpoints()
        ..initialize(
          server,
          'taigaJobEndpoints',
          null,
        ),
    };
    connectors['taigaProject'] = _i1.EndpointConnector(
      name: 'taigaProject',
      endpoint: endpoints['taigaProject']!,
      methodConnectors: {
        'projectCreate': _i1.MethodConnector(
          name: 'projectCreate',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i4.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i2.TaigaProjectEndpoint)
                  .projectCreate(
            session,
            taigaProject: params['taigaProject'],
          ),
        ),
        'projectCreateOnBulk': _i1.MethodConnector(
          name: 'projectCreateOnBulk',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<List<_i4.TaigaProject>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i2.TaigaProjectEndpoint)
                  .projectCreateOnBulk(
            session,
            taigaProject: params['taigaProject'],
          ),
        ),
        'projectReadById': _i1.MethodConnector(
          name: 'projectReadById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i2.TaigaProjectEndpoint)
                  .projectReadById(
            session,
            id: params['id'],
          ),
        ),
        'projectReadByTitle': _i1.MethodConnector(
          name: 'projectReadByTitle',
          params: {
            'projectTitle': _i1.ParameterDescription(
              name: 'projectTitle',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i2.TaigaProjectEndpoint)
                  .projectReadByTitle(
            session,
            projectTitle: params['projectTitle'],
          ),
        ),
        'projectReadByTaigaProjectId': _i1.MethodConnector(
          name: 'projectReadByTaigaProjectId',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i2.TaigaProjectEndpoint)
                  .projectReadByTaigaProjectId(
            session,
            id: params['id'],
          ),
        ),
        'projectUpdateProject': _i1.MethodConnector(
          name: 'projectUpdateProject',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i4.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i2.TaigaProjectEndpoint)
                  .projectUpdateProject(
            session,
            taigaProject: params['taigaProject'],
          ),
        ),
        'projectDeleteProject': _i1.MethodConnector(
          name: 'projectDeleteProject',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i4.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i2.TaigaProjectEndpoint)
                  .projectDeleteProject(
            session,
            taigaProject: params['taigaProject'],
          ),
        ),
        'projectDeleteProjectById': _i1.MethodConnector(
          name: 'projectDeleteProjectById',
          params: {
            'projectId': _i1.ParameterDescription(
              name: 'projectId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i2.TaigaProjectEndpoint)
                  .projectDeleteProjectById(
            session,
            projectId: params['projectId'],
          ),
        ),
      },
    );
    connectors['taigaJobEndpoints'] = _i1.EndpointConnector(
      name: 'taigaJobEndpoints',
      endpoint: endpoints['taigaJobEndpoints']!,
      methodConnectors: {
        'taigaJobCreate': _i1.MethodConnector(
          name: 'taigaJobCreate',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i5.TaigaJob>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobCreate(
            session,
            taigaJob: params['taigaJob'],
          ),
        ),
        'taigaJobCreateOnBulk': _i1.MethodConnector(
          name: 'taigaJobCreateOnBulk',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<List<_i5.TaigaJob>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobCreateOnBulk(
            session,
            taigaJob: params['taigaJob'],
          ),
        ),
        'taigaJobReadById': _i1.MethodConnector(
          name: 'taigaJobReadById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobReadById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobReadByTitle': _i1.MethodConnector(
          name: 'taigaJobReadByTitle',
          params: {
            'title': _i1.ParameterDescription(
              name: 'title',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobReadByTitle(
            session,
            title: params['title'],
          ),
        ),
        'taigaJobReadByType': _i1.MethodConnector(
          name: 'taigaJobReadByType',
          params: {
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobReadByType(
            session,
            type: params['type'],
          ),
        ),
        'taigaJobReadByStatus': _i1.MethodConnector(
          name: 'taigaJobReadByStatus',
          params: {
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobReadByStatus(
            session,
            status: params['status'],
          ),
        ),
        'taigaJobReadByProjectIdAndRefNumber': _i1.MethodConnector(
          name: 'taigaJobReadByProjectIdAndRefNumber',
          params: {
            'projectId': _i1.ParameterDescription(
              name: 'projectId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'taigaRefNumber': _i1.ParameterDescription(
              name: 'taigaRefNumber',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobReadByProjectIdAndRefNumber(
            session,
            projectId: params['projectId'],
            taigaRefNumber: params['taigaRefNumber'],
          ),
        ),
        'taigaJobUpdateById': _i1.MethodConnector(
          name: 'taigaJobUpdateById',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i5.TaigaJob>(),
              nullable: false,
            ),
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobUpdateById(
            session,
            taigaJob: params['taigaJob'],
            id: params['id'],
          ),
        ),
        'TaigaJobDeleteById': _i1.MethodConnector(
          name: 'TaigaJobDeleteById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .TaigaJobDeleteById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobUpdatesCreate': _i1.MethodConnector(
          name: 'taigaJobUpdatesCreate',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<_i6.TaigaJobUpdates>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobUpdatesCreate(
            session,
            taigaJobUpdates: params['taigaJobUpdates'],
          ),
        ),
        'taigaJobUpdatesCreateOnBulk': _i1.MethodConnector(
          name: 'taigaJobUpdatesCreateOnBulk',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<List<_i6.TaigaJobUpdates>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobUpdatesCreateOnBulk(
            session,
            taigaJobUpdates: params['taigaJobUpdates'],
          ),
        ),
        'taigaJobUpdatesReadById': _i1.MethodConnector(
          name: 'taigaJobUpdatesReadById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobUpdatesReadById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobUpdatesReadFilteringByEpoch': _i1.MethodConnector(
          name: 'taigaJobUpdatesReadFilteringByEpoch',
          params: {
            'min': _i1.ParameterDescription(
              name: 'min',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'max': _i1.ParameterDescription(
              name: 'max',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobUpdatesReadFilteringByEpoch(
            session,
            min: params['min'],
            max: params['max'],
          ),
        ),
        'taigaJobUpdatesUpdateById': _i1.MethodConnector(
          name: 'taigaJobUpdatesUpdateById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<_i6.TaigaJobUpdates>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobUpdatesUpdateById(
            session,
            id: params['id'],
            taigaJobUpdates: params['taigaJobUpdates'],
          ),
        ),
        'taigaJobUpdatesDeleteById': _i1.MethodConnector(
          name: 'taigaJobUpdatesDeleteById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobUpdatesDeleteById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobCommentariesCreate': _i1.MethodConnector(
          name: 'taigaJobCommentariesCreate',
          params: {
            'taigaJobCommentaries': _i1.ParameterDescription(
              name: 'taigaJobCommentaries',
              type: _i1.getType<_i7.TaigaJobCommentaries>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobCommentariesCreate(
            session,
            taigaJobCommentaries: params['taigaJobCommentaries'],
          ),
        ),
        'taigaJobCommentariesCreateOnBulk': _i1.MethodConnector(
          name: 'taigaJobCommentariesCreateOnBulk',
          params: {
            'taigaJobCommentaries': _i1.ParameterDescription(
              name: 'taigaJobCommentaries',
              type: _i1.getType<List<_i7.TaigaJobCommentaries>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobCommentariesCreateOnBulk(
            session,
            taigaJobCommentaries: params['taigaJobCommentaries'],
          ),
        ),
        'taigaJobCommentariesReadById': _i1.MethodConnector(
          name: 'taigaJobCommentariesReadById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobCommentariesReadById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobCommentariesUpdateById': _i1.MethodConnector(
          name: 'taigaJobCommentariesUpdateById',
          params: {
            'taigaJobCommentaries': _i1.ParameterDescription(
              name: 'taigaJobCommentaries',
              type: _i1.getType<_i7.TaigaJobCommentaries>(),
              nullable: false,
            ),
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobCommentariesUpdateById(
            session,
            taigaJobCommentaries: params['taigaJobCommentaries'],
            id: params['id'],
          ),
        ),
        'taigaJobCommentariesDeleteById': _i1.MethodConnector(
          name: 'taigaJobCommentariesDeleteById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobEndpoints'] as _i3.TaigaJobEndpoints)
                  .taigaJobCommentariesDeleteById(
            session,
            id: params['id'],
          ),
        ),
      },
    );
  }
}

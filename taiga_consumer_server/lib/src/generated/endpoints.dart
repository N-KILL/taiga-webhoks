/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/hello_endpoint.dart' as _i3;
import '../endpoints/project_endpoint.dart' as _i4;
import '../endpoints/taiga_job_endpoint.dart' as _i5;
import '../endpoints/taiga_job_updates_endpoint.dart' as _i6;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart'
    as _i7;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart'
    as _i8;
import 'package:taiga_consumer_server/src/generated/protocol/Taiga/taiga_job_updates.dart'
    as _i9;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'anotherExample': _i2.AnotherExampleEndpoint()
        ..initialize(
          server,
          'anotherExample',
          null,
        ),
      'crud': _i3.CrudEndpoint()
        ..initialize(
          server,
          'crud',
          null,
        ),
      'taigaProject': _i4.TaigaProjectEndpoint()
        ..initialize(
          server,
          'taigaProject',
          null,
        ),
      'taigaJob': _i5.TaigaJobEndpoint()
        ..initialize(
          server,
          'taigaJob',
          null,
        ),
      'taigaJobUpdate': _i6.TaigaJobUpdateEndpoint()
        ..initialize(
          server,
          'taigaJobUpdate',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['anotherExample'] = _i1.EndpointConnector(
      name: 'anotherExample',
      endpoint: endpoints['anotherExample']!,
      methodConnectors: {},
    );
    connectors['crud'] = _i1.EndpointConnector(
      name: 'crud',
      endpoint: endpoints['crud']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['crud'] as _i3.CrudEndpoint).create(
            session,
            params['name'],
          ),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['crud'] as _i3.CrudEndpoint).read(
            session,
            params['name'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['crud'] as _i3.CrudEndpoint).update(
            session,
            params['name'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['crud'] as _i3.CrudEndpoint).delete(
            session,
            params['name'],
          ),
        ),
      },
    );
    connectors['taigaProject'] = _i1.EndpointConnector(
      name: 'taigaProject',
      endpoint: endpoints['taigaProject']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i7.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i4.TaigaProjectEndpoint).create(
            session,
            params['taigaProject'],
          ),
        ),
        'createOnBulk': _i1.MethodConnector(
          name: 'createOnBulk',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<List<_i7.TaigaProject>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i4.TaigaProjectEndpoint)
                  .createOnBulk(
            session,
            params['taigaProject'],
          ),
        ),
        'readById': _i1.MethodConnector(
          name: 'readById',
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
              (endpoints['taigaProject'] as _i4.TaigaProjectEndpoint).readById(
            session,
            params['id'],
          ),
        ),
        'readByTitle': _i1.MethodConnector(
          name: 'readByTitle',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i7.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i4.TaigaProjectEndpoint)
                  .readByTitle(
            session,
            params['taigaProject'],
          ),
        ),
        'readByTaigaProjectId': _i1.MethodConnector(
          name: 'readByTaigaProjectId',
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
              (endpoints['taigaProject'] as _i4.TaigaProjectEndpoint)
                  .readByTaigaProjectId(
            session,
            params['id'],
          ),
        ),
        'updateById': _i1.MethodConnector(
          name: 'updateById',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i7.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i4.TaigaProjectEndpoint)
                  .updateById(
            session,
            params['taigaProject'],
          ),
        ),
        'deleteById': _i1.MethodConnector(
          name: 'deleteById',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i7.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i4.TaigaProjectEndpoint)
                  .deleteById(
            session,
            params['taigaProject'],
          ),
        ),
      },
    );
    connectors['taigaJob'] = _i1.EndpointConnector(
      name: 'taigaJob',
      endpoint: endpoints['taigaJob']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i8.TaigaJob>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint).create(
            session,
            params['taigaJob'],
          ),
        ),
        'createOnBulk': _i1.MethodConnector(
          name: 'createOnBulk',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<List<_i8.TaigaJob>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint).createOnBulk(
            session,
            params['taigaJob'],
          ),
        ),
        'readById': _i1.MethodConnector(
          name: 'readById',
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
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint).readById(
            session,
            params['id'],
          ),
        ),
        'readByTitle': _i1.MethodConnector(
          name: 'readByTitle',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i8.TaigaJob>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint).readByTitle(
            session,
            params['taigaJob'],
          ),
        ),
        'readByType': _i1.MethodConnector(
          name: 'readByType',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i8.TaigaJob>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint).readByType(
            session,
            params['taigaJob'],
          ),
        ),
        'readByStatus': _i1.MethodConnector(
          name: 'readByStatus',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i8.TaigaJob>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint).readByStatus(
            session,
            params['taigaJob'],
          ),
        ),
        'readByProjectIdAndRefNumber': _i1.MethodConnector(
          name: 'readByProjectIdAndRefNumber',
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
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint)
                  .readByProjectIdAndRefNumber(
            session,
            projectId: params['projectId'],
            taigaRefNumber: params['taigaRefNumber'],
          ),
        ),
        'updateById': _i1.MethodConnector(
          name: 'updateById',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i8.TaigaJob>(),
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
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint).updateById(
            session,
            taigaJob: params['taigaJob'],
            id: params['id'],
          ),
        ),
        'deleteById': _i1.MethodConnector(
          name: 'deleteById',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i8.TaigaJob>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i5.TaigaJobEndpoint).deleteById(
            session,
            params['taigaJob'],
          ),
        ),
      },
    );
    connectors['taigaJobUpdate'] = _i1.EndpointConnector(
      name: 'taigaJobUpdate',
      endpoint: endpoints['taigaJobUpdate']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<_i9.TaigaJobUpdates>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobUpdate'] as _i6.TaigaJobUpdateEndpoint)
                  .create(
            session,
            params['taigaJobUpdates'],
          ),
        ),
        'createOnBulk': _i1.MethodConnector(
          name: 'createOnBulk',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<List<_i9.TaigaJobUpdates>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobUpdate'] as _i6.TaigaJobUpdateEndpoint)
                  .createOnBulk(
            session,
            params['taigaJobUpdates'],
          ),
        ),
        'readById': _i1.MethodConnector(
          name: 'readById',
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
              (endpoints['taigaJobUpdate'] as _i6.TaigaJobUpdateEndpoint)
                  .readById(
            session,
            params['id'],
          ),
        ),
        'readByStatus': _i1.MethodConnector(
          name: 'readByStatus',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<_i9.TaigaJobUpdates>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobUpdate'] as _i6.TaigaJobUpdateEndpoint)
                  .readByStatus(
            session,
            params['taigaJobUpdates'],
          ),
        ),
        'updateById': _i1.MethodConnector(
          name: 'updateById',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<_i9.TaigaJobUpdates>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobUpdate'] as _i6.TaigaJobUpdateEndpoint)
                  .updateById(
            session,
            params['taigaJobUpdates'],
          ),
        ),
        'deleteById': _i1.MethodConnector(
          name: 'deleteById',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<_i9.TaigaJobUpdates>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJobUpdate'] as _i6.TaigaJobUpdateEndpoint)
                  .deleteById(
            session,
            params['taigaJobUpdates'],
          ),
        ),
      },
    );
  }
}

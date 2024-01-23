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
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_jobs.dart'
    as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointAnotherExample extends _i1.EndpointRef {
  EndpointAnotherExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'anotherExample';
}

/// {@category Endpoint}
class EndpointCrud extends _i1.EndpointRef {
  EndpointCrud(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'crud';

  _i2.Future<String> create(String name) => caller.callServerEndpoint<String>(
        'crud',
        'create',
        {'name': name},
      );

  _i2.Future<String> read(String name) => caller.callServerEndpoint<String>(
        'crud',
        'read',
        {'name': name},
      );

  _i2.Future<String> update(String name) => caller.callServerEndpoint<String>(
        'crud',
        'update',
        {'name': name},
      );

  _i2.Future<String> delete(String name) => caller.callServerEndpoint<String>(
        'crud',
        'delete',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointTaigaProject extends _i1.EndpointRef {
  EndpointTaigaProject(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'taigaProject';

  _i2.Future<bool> create(_i3.TaigaProject taigaProject) =>
      caller.callServerEndpoint<bool>(
        'taigaProject',
        'create',
        {'taigaProject': taigaProject},
      );

  _i2.Future<bool> createOnBulk(List<_i3.TaigaProject> taigaProject) =>
      caller.callServerEndpoint<bool>(
        'taigaProject',
        'createOnBulk',
        {'taigaProject': taigaProject},
      );

  _i2.Future<_i3.TaigaProject?> readById(int id) =>
      caller.callServerEndpoint<_i3.TaigaProject?>(
        'taigaProject',
        'readById',
        {'id': id},
      );

  _i2.Future<_i3.TaigaProject?> readByTitle(_i3.TaigaProject taigaProject) =>
      caller.callServerEndpoint<_i3.TaigaProject?>(
        'taigaProject',
        'readByTitle',
        {'taigaProject': taigaProject},
      );

  _i2.Future<_i3.TaigaProject?> readByTaigaProjectId(int id) =>
      caller.callServerEndpoint<_i3.TaigaProject?>(
        'taigaProject',
        'readByTaigaProjectId',
        {'id': id},
      );

  _i2.Future<bool> updateById(_i3.TaigaProject taigaProject) =>
      caller.callServerEndpoint<bool>(
        'taigaProject',
        'updateById',
        {'taigaProject': taigaProject},
      );

  _i2.Future<bool> deleteById(_i3.TaigaProject taigaProject) =>
      caller.callServerEndpoint<bool>(
        'taigaProject',
        'deleteById',
        {'taigaProject': taigaProject},
      );
}

/// {@category Endpoint}
class EndpointTaigaJob extends _i1.EndpointRef {
  EndpointTaigaJob(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'taigaJob';

  _i2.Future<bool> create(_i4.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'create',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> createOnBulk(List<_i4.TaigaJob> taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'createOnBulk',
        {'taigaJob': taigaJob},
      );

  _i2.Future<_i4.TaigaJob?> readById(int id) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJob',
        'readById',
        {'id': id},
      );

  _i2.Future<_i4.TaigaJob?> readByTitle(_i4.TaigaJob taigaJob) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJob',
        'readByTitle',
        {'taigaJob': taigaJob},
      );

  _i2.Future<_i4.TaigaJob?> readByType(_i4.TaigaJob taigaJob) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJob',
        'readByType',
        {'taigaJob': taigaJob},
      );

  _i2.Future<_i4.TaigaJob?> readByStatus(_i4.TaigaJob taigaJob) =>
      caller.callServerEndpoint<_i4.TaigaJob?>(
        'taigaJob',
        'readByStatus',
        {'taigaJob': taigaJob},
      );

  _i2.Future<List<_i4.TaigaJob>?> readByProjectId(int projectId) =>
      caller.callServerEndpoint<List<_i4.TaigaJob>?>(
        'taigaJob',
        'readByProjectId',
        {'projectId': projectId},
      );

  _i2.Future<bool> updateById(_i4.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'updateById',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> deleteById(_i4.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'deleteById',
        {'taigaJob': taigaJob},
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
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    anotherExample = EndpointAnotherExample(this);
    crud = EndpointCrud(this);
    taigaProject = EndpointTaigaProject(this);
    taigaJob = EndpointTaigaJob(this);
  }

  late final EndpointExample example;

  late final EndpointAnotherExample anotherExample;

  late final EndpointCrud crud;

  late final EndpointTaigaProject taigaProject;

  late final EndpointTaigaJob taigaJob;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'anotherExample': anotherExample,
        'crud': crud,
        'taigaProject': taigaProject,
        'taigaJob': taigaJob,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}

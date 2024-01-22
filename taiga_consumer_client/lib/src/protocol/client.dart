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
import 'package:taiga_consumer_client/src/protocol/protocol/taiga_jobs.dart'
    as _i3;
import 'protocol.dart' as _i4;

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
class EndpointTaigaJob extends _i1.EndpointRef {
  EndpointTaigaJob(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'taigaJob';

  _i2.Future<bool> create(_i3.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'create',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> createOnBulk(List<_i3.TaigaJob> taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'createOnBulk',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> readById(_i3.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'readById',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> readByTitle(_i3.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'readByTitle',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> readByType(_i3.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'readByType',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> readByStatus(_i3.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'readByStatus',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> update(_i3.TaigaJob taigaJob) =>
      caller.callServerEndpoint<bool>(
        'taigaJob',
        'update',
        {'taigaJob': taigaJob},
      );

  _i2.Future<bool> deleteById(_i3.TaigaJob taigaJob) =>
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
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    anotherExample = EndpointAnotherExample(this);
    crud = EndpointCrud(this);
    taigaJob = EndpointTaigaJob(this);
  }

  late final EndpointExample example;

  late final EndpointAnotherExample anotherExample;

  late final EndpointCrud crud;

  late final EndpointTaigaJob taigaJob;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'anotherExample': anotherExample,
        'crud': crud,
        'taigaJob': taigaJob,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}

/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:taiga_consumer_client/src/protocol/example.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<List<_i3.TaigaConsumer>> hello(String name) =>
      caller.callServerEndpoint<List<_i3.TaigaConsumer>>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointAnotherExample extends _i1.EndpointRef {
  _EndpointAnotherExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'anotherExample';
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    anotherExample = _EndpointAnotherExample(this);
  }

  late final _EndpointExample example;

  late final _EndpointAnotherExample anotherExample;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'anotherExample': anotherExample,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}

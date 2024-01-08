/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'example.dart' as _i2;
import 'package:taiga_consumer_client/src/protocol/example.dart' as _i3;
export 'example.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.TaigaConsumer) {
      return _i2.TaigaConsumer.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.TaigaConsumer?>()) {
      return (data != null ? _i2.TaigaConsumer.fromJson(data, this) : null)
          as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map((k, v) =>
          MapEntry(deserialize<String>(k), deserialize<dynamic>(v))) as dynamic;
    }
    if (t == List<_i3.TaigaConsumer>) {
      return (data as List)
          .map((e) => deserialize<_i3.TaigaConsumer>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.TaigaConsumer) {
      return 'TaigaConsumer';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'TaigaConsumer') {
      return deserialize<_i2.TaigaConsumer>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}

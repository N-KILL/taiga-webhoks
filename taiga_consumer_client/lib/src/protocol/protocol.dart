/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol/error_enum.dart' as _i2;
import 'protocol/exception.dart' as _i3;
import 'protocol/taiga/taiga_job_commentaries.dart' as _i4;
import 'protocol/taiga/taiga_job_updates.dart' as _i5;
import 'protocol/taiga/taiga_jobs.dart' as _i6;
import 'protocol/taiga/taiga_project.dart' as _i7;
import 'protocol/user.dart' as _i8;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_project.dart'
    as _i9;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_jobs.dart'
    as _i10;
import 'package:taiga_consumer_client/src/protocol/protocol/Taiga/taiga_job_updates.dart'
    as _i11;
export 'protocol/error_enum.dart';
export 'protocol/exception.dart';
export 'protocol/taiga/taiga_job_commentaries.dart';
export 'protocol/taiga/taiga_job_updates.dart';
export 'protocol/taiga/taiga_jobs.dart';
export 'protocol/taiga/taiga_project.dart';
export 'protocol/user.dart';
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
    if (t == _i2.ErrorEnum) {
      return _i2.ErrorEnum.fromJson(data) as T;
    }
    if (t == _i3.MyException) {
      return _i3.MyException.fromJson(data, this) as T;
    }
    if (t == _i4.TaigaJobCommentaries) {
      return _i4.TaigaJobCommentaries.fromJson(data, this) as T;
    }
    if (t == _i5.TaigaJobUpdates) {
      return _i5.TaigaJobUpdates.fromJson(data, this) as T;
    }
    if (t == _i6.TaigaJob) {
      return _i6.TaigaJob.fromJson(data, this) as T;
    }
    if (t == _i7.TaigaProject) {
      return _i7.TaigaProject.fromJson(data, this) as T;
    }
    if (t == _i8.User) {
      return _i8.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.ErrorEnum?>()) {
      return (data != null ? _i2.ErrorEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.MyException?>()) {
      return (data != null ? _i3.MyException.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.TaigaJobCommentaries?>()) {
      return (data != null
          ? _i4.TaigaJobCommentaries.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i5.TaigaJobUpdates?>()) {
      return (data != null ? _i5.TaigaJobUpdates.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.TaigaJob?>()) {
      return (data != null ? _i6.TaigaJob.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.TaigaProject?>()) {
      return (data != null ? _i7.TaigaProject.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.User?>()) {
      return (data != null ? _i8.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i9.TaigaProject>) {
      return (data as List)
          .map((e) => deserialize<_i9.TaigaProject>(e))
          .toList() as dynamic;
    }
    if (t == List<_i10.TaigaJob>) {
      return (data as List).map((e) => deserialize<_i10.TaigaJob>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.TaigaJobUpdates>) {
      return (data as List)
          .map((e) => deserialize<_i11.TaigaJobUpdates>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.ErrorEnum) {
      return 'ErrorEnum';
    }
    if (data is _i3.MyException) {
      return 'MyException';
    }
    if (data is _i4.TaigaJobCommentaries) {
      return 'TaigaJobCommentaries';
    }
    if (data is _i5.TaigaJobUpdates) {
      return 'TaigaJobUpdates';
    }
    if (data is _i6.TaigaJob) {
      return 'TaigaJob';
    }
    if (data is _i7.TaigaProject) {
      return 'TaigaProject';
    }
    if (data is _i8.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ErrorEnum') {
      return deserialize<_i2.ErrorEnum>(data['data']);
    }
    if (data['className'] == 'MyException') {
      return deserialize<_i3.MyException>(data['data']);
    }
    if (data['className'] == 'TaigaJobCommentaries') {
      return deserialize<_i4.TaigaJobCommentaries>(data['data']);
    }
    if (data['className'] == 'TaigaJobUpdates') {
      return deserialize<_i5.TaigaJobUpdates>(data['data']);
    }
    if (data['className'] == 'TaigaJob') {
      return deserialize<_i6.TaigaJob>(data['data']);
    }
    if (data['className'] == 'TaigaProject') {
      return deserialize<_i7.TaigaProject>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i8.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}

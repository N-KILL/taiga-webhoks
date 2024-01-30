/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol/figma/action_enum.dart' as _i2;
import 'protocol/figma/day_counter.dart' as _i3;
import 'protocol/figma/figma_action.dart' as _i4;
import 'protocol/figma/figma_hu_data.dart' as _i5;
import 'protocol/figma/hu_status_enum.dart' as _i6;
import 'protocol/figma/sprint.dart' as _i7;
import 'protocol/figma/status_card.dart' as _i8;
import 'protocol/figma/status_card_detail.dart' as _i9;
import 'protocol/taiga/taiga_job.dart' as _i10;
import 'protocol/taiga/taiga_job_commentaries.dart' as _i11;
import 'protocol/taiga/taiga_job_updates.dart' as _i12;
import 'protocol/taiga/taiga_project.dart' as _i13;
import 'protocol/user.dart' as _i14;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_project.dart'
    as _i15;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job.dart'
    as _i16;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job_updates.dart'
    as _i17;
import 'package:taiga_consumer_client/src/protocol/protocol/taiga/taiga_job_commentaries.dart'
    as _i18;
export 'protocol/figma/action_enum.dart';
export 'protocol/figma/day_counter.dart';
export 'protocol/figma/figma_action.dart';
export 'protocol/figma/figma_hu_data.dart';
export 'protocol/figma/hu_status_enum.dart';
export 'protocol/figma/sprint.dart';
export 'protocol/figma/status_card.dart';
export 'protocol/figma/status_card_detail.dart';
export 'protocol/taiga/taiga_job.dart';
export 'protocol/taiga/taiga_job_commentaries.dart';
export 'protocol/taiga/taiga_job_updates.dart';
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
    if (t == _i2.ActionType) {
      return _i2.ActionType.fromJson(data) as T;
    }
    if (t == _i3.AmountOfDays) {
      return _i3.AmountOfDays.fromJson(data, this) as T;
    }
    if (t == _i4.FigmaAction) {
      return _i4.FigmaAction.fromJson(data, this) as T;
    }
    if (t == _i5.HuData) {
      return _i5.HuData.fromJson(data, this) as T;
    }
    if (t == _i6.HuStatus) {
      return _i6.HuStatus.fromJson(data) as T;
    }
    if (t == _i7.Sprint) {
      return _i7.Sprint.fromJson(data, this) as T;
    }
    if (t == _i8.StatusCard) {
      return _i8.StatusCard.fromJson(data, this) as T;
    }
    if (t == _i9.StatusCardDetails) {
      return _i9.StatusCardDetails.fromJson(data, this) as T;
    }
    if (t == _i10.TaigaJob) {
      return _i10.TaigaJob.fromJson(data, this) as T;
    }
    if (t == _i11.TaigaJobCommentaries) {
      return _i11.TaigaJobCommentaries.fromJson(data, this) as T;
    }
    if (t == _i12.TaigaJobUpdates) {
      return _i12.TaigaJobUpdates.fromJson(data, this) as T;
    }
    if (t == _i13.TaigaProject) {
      return _i13.TaigaProject.fromJson(data, this) as T;
    }
    if (t == _i14.User) {
      return _i14.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.ActionType?>()) {
      return (data != null ? _i2.ActionType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.AmountOfDays?>()) {
      return (data != null ? _i3.AmountOfDays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.FigmaAction?>()) {
      return (data != null ? _i4.FigmaAction.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.HuData?>()) {
      return (data != null ? _i5.HuData.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.HuStatus?>()) {
      return (data != null ? _i6.HuStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Sprint?>()) {
      return (data != null ? _i7.Sprint.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.StatusCard?>()) {
      return (data != null ? _i8.StatusCard.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.StatusCardDetails?>()) {
      return (data != null ? _i9.StatusCardDetails.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.TaigaJob?>()) {
      return (data != null ? _i10.TaigaJob.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.TaigaJobCommentaries?>()) {
      return (data != null
          ? _i11.TaigaJobCommentaries.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i12.TaigaJobUpdates?>()) {
      return (data != null ? _i12.TaigaJobUpdates.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.TaigaProject?>()) {
      return (data != null ? _i13.TaigaProject.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.User?>()) {
      return (data != null ? _i14.User.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i15.TaigaProject>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i15.TaigaProject>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i15.TaigaProject>) {
      return (data as List)
          .map((e) => deserialize<_i15.TaigaProject>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i16.TaigaJob>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.TaigaJob>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i16.TaigaJob>) {
      return (data as List).map((e) => deserialize<_i16.TaigaJob>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i16.TaigaJob>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.TaigaJob>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.TaigaJob>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.TaigaJob>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.TaigaJobUpdates>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.TaigaJobUpdates>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i17.TaigaJobUpdates>) {
      return (data as List)
          .map((e) => deserialize<_i17.TaigaJobUpdates>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i17.TaigaJobUpdates>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.TaigaJobUpdates>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i18.TaigaJobCommentaries>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i18.TaigaJobCommentaries>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i18.TaigaJobCommentaries>) {
      return (data as List)
          .map((e) => deserialize<_i18.TaigaJobCommentaries>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.ActionType) {
      return 'ActionType';
    }
    if (data is _i3.AmountOfDays) {
      return 'AmountOfDays';
    }
    if (data is _i4.FigmaAction) {
      return 'FigmaAction';
    }
    if (data is _i5.HuData) {
      return 'HuData';
    }
    if (data is _i6.HuStatus) {
      return 'HuStatus';
    }
    if (data is _i7.Sprint) {
      return 'Sprint';
    }
    if (data is _i8.StatusCard) {
      return 'StatusCard';
    }
    if (data is _i9.StatusCardDetails) {
      return 'StatusCardDetails';
    }
    if (data is _i10.TaigaJob) {
      return 'TaigaJob';
    }
    if (data is _i11.TaigaJobCommentaries) {
      return 'TaigaJobCommentaries';
    }
    if (data is _i12.TaigaJobUpdates) {
      return 'TaigaJobUpdates';
    }
    if (data is _i13.TaigaProject) {
      return 'TaigaProject';
    }
    if (data is _i14.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ActionType') {
      return deserialize<_i2.ActionType>(data['data']);
    }
    if (data['className'] == 'AmountOfDays') {
      return deserialize<_i3.AmountOfDays>(data['data']);
    }
    if (data['className'] == 'FigmaAction') {
      return deserialize<_i4.FigmaAction>(data['data']);
    }
    if (data['className'] == 'HuData') {
      return deserialize<_i5.HuData>(data['data']);
    }
    if (data['className'] == 'HuStatus') {
      return deserialize<_i6.HuStatus>(data['data']);
    }
    if (data['className'] == 'Sprint') {
      return deserialize<_i7.Sprint>(data['data']);
    }
    if (data['className'] == 'StatusCard') {
      return deserialize<_i8.StatusCard>(data['data']);
    }
    if (data['className'] == 'StatusCardDetails') {
      return deserialize<_i9.StatusCardDetails>(data['data']);
    }
    if (data['className'] == 'TaigaJob') {
      return deserialize<_i10.TaigaJob>(data['data']);
    }
    if (data['className'] == 'TaigaJobCommentaries') {
      return deserialize<_i11.TaigaJobCommentaries>(data['data']);
    }
    if (data['className'] == 'TaigaJobUpdates') {
      return deserialize<_i12.TaigaJobUpdates>(data['data']);
    }
    if (data['className'] == 'TaigaProject') {
      return deserialize<_i13.TaigaProject>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i14.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}

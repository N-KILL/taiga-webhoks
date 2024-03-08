// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issue.dart';

class TaigaIssueAPIMapper extends ClassMapperBase<TaigaIssueAPI> {
  TaigaIssueAPIMapper._();

  static TaigaIssueAPIMapper? _instance;
  static TaigaIssueAPIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaIssueAPIMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaIssueAPI';

  static int _$projectId(TaigaIssueAPI v) => v.projectId;
  static const Field<TaigaIssueAPI, int> _f$projectId =
      Field('projectId', _$projectId, key: 'project');
  static String _$title(TaigaIssueAPI v) => v.title;
  static const Field<TaigaIssueAPI, String> _f$title =
      Field('title', _$title, key: 'subject');
  static List<int?> _$watchersId(TaigaIssueAPI v) => v.watchersId;
  static const Field<TaigaIssueAPI, List<int?>> _f$watchersId =
      Field('watchersId', _$watchersId, key: 'watchers');
  static int? _$assignedToId(TaigaIssueAPI v) => v.assignedToId;
  static const Field<TaigaIssueAPI, int> _f$assignedToId =
      Field('assignedToId', _$assignedToId, key: 'assigned_to', opt: true);
  static String? _$blockedNote(TaigaIssueAPI v) => v.blockedNote;
  static const Field<TaigaIssueAPI, String> _f$blockedNote =
      Field('blockedNote', _$blockedNote, key: 'blocked_note', opt: true);
  static String? _$description(TaigaIssueAPI v) => v.description;
  static const Field<TaigaIssueAPI, String> _f$description =
      Field('description', _$description, opt: true);
  static bool? _$isBlocked(TaigaIssueAPI v) => v.isBlocked;
  static const Field<TaigaIssueAPI, bool> _f$isBlocked =
      Field('isBlocked', _$isBlocked, key: 'is_blocked', opt: true);
  static bool? _$isClosed(TaigaIssueAPI v) => v.isClosed;
  static const Field<TaigaIssueAPI, bool> _f$isClosed =
      Field('isClosed', _$isClosed, key: 'is_closed', opt: true);
  static int? _$sprintId(TaigaIssueAPI v) => v.sprintId;
  static const Field<TaigaIssueAPI, int> _f$sprintId =
      Field('sprintId', _$sprintId, key: 'milestone', opt: true);
  static int? _$priorityId(TaigaIssueAPI v) => v.priorityId;
  static const Field<TaigaIssueAPI, int> _f$priorityId =
      Field('priorityId', _$priorityId, key: 'priority', opt: true);
  static int? _$severityId(TaigaIssueAPI v) => v.severityId;
  static const Field<TaigaIssueAPI, int> _f$severityId =
      Field('severityId', _$severityId, key: 'severity', opt: true);
  static int? _$statusId(TaigaIssueAPI v) => v.statusId;
  static const Field<TaigaIssueAPI, int> _f$statusId =
      Field('statusId', _$statusId, key: 'status', opt: true);
  static List<String>? _$tags(TaigaIssueAPI v) => v.tags;
  static const Field<TaigaIssueAPI, List<String>> _f$tags =
      Field('tags', _$tags, opt: true);
  static int? _$type(TaigaIssueAPI v) => v.type;
  static const Field<TaigaIssueAPI, int> _f$type =
      Field('type', _$type, opt: true);

  @override
  final Map<Symbol, Field<TaigaIssueAPI, dynamic>> fields = const {
    #projectId: _f$projectId,
    #title: _f$title,
    #watchersId: _f$watchersId,
    #assignedToId: _f$assignedToId,
    #blockedNote: _f$blockedNote,
    #description: _f$description,
    #isBlocked: _f$isBlocked,
    #isClosed: _f$isClosed,
    #sprintId: _f$sprintId,
    #priorityId: _f$priorityId,
    #severityId: _f$severityId,
    #statusId: _f$statusId,
    #tags: _f$tags,
    #type: _f$type,
  };

  static TaigaIssueAPI _instantiate(DecodingData data) {
    return TaigaIssueAPI(
        projectId: data.dec(_f$projectId),
        title: data.dec(_f$title),
        watchersId: data.dec(_f$watchersId),
        assignedToId: data.dec(_f$assignedToId),
        blockedNote: data.dec(_f$blockedNote),
        description: data.dec(_f$description),
        isBlocked: data.dec(_f$isBlocked),
        isClosed: data.dec(_f$isClosed),
        sprintId: data.dec(_f$sprintId),
        priorityId: data.dec(_f$priorityId),
        severityId: data.dec(_f$severityId),
        statusId: data.dec(_f$statusId),
        tags: data.dec(_f$tags),
        type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaIssueAPI fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaIssueAPI>(map);
  }

  static TaigaIssueAPI fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaIssueAPI>(json);
  }
}

mixin TaigaIssueAPIMappable {
  String toJson() {
    return TaigaIssueAPIMapper.ensureInitialized()
        .encodeJson<TaigaIssueAPI>(this as TaigaIssueAPI);
  }

  Map<String, dynamic> toMap() {
    return TaigaIssueAPIMapper.ensureInitialized()
        .encodeMap<TaigaIssueAPI>(this as TaigaIssueAPI);
  }

  TaigaIssueAPICopyWith<TaigaIssueAPI, TaigaIssueAPI, TaigaIssueAPI>
      get copyWith => _TaigaIssueAPICopyWithImpl(
          this as TaigaIssueAPI, $identity, $identity);
  @override
  String toString() {
    return TaigaIssueAPIMapper.ensureInitialized()
        .stringifyValue(this as TaigaIssueAPI);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaIssueAPIMapper.ensureInitialized()
                .isValueEqual(this as TaigaIssueAPI, other));
  }

  @override
  int get hashCode {
    return TaigaIssueAPIMapper.ensureInitialized()
        .hashValue(this as TaigaIssueAPI);
  }
}

extension TaigaIssueAPIValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaIssueAPI, $Out> {
  TaigaIssueAPICopyWith<$R, TaigaIssueAPI, $Out> get $asTaigaIssueAPI =>
      $base.as((v, t, t2) => _TaigaIssueAPICopyWithImpl(v, t, t2));
}

abstract class TaigaIssueAPICopyWith<$R, $In extends TaigaIssueAPI, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int?, ObjectCopyWith<$R, int?, int?>?> get watchersId;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get tags;
  $R call(
      {int? projectId,
      String? title,
      List<int?>? watchersId,
      int? assignedToId,
      String? blockedNote,
      String? description,
      bool? isBlocked,
      bool? isClosed,
      int? sprintId,
      int? priorityId,
      int? severityId,
      int? statusId,
      List<String>? tags,
      int? type});
  TaigaIssueAPICopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaIssueAPICopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaIssueAPI, $Out>
    implements TaigaIssueAPICopyWith<$R, TaigaIssueAPI, $Out> {
  _TaigaIssueAPICopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaIssueAPI> $mapper =
      TaigaIssueAPIMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int?, ObjectCopyWith<$R, int?, int?>?> get watchersId =>
      ListCopyWith($value.watchersId, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(watchersId: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get tags =>
      $value.tags != null
          ? ListCopyWith($value.tags!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(tags: v))
          : null;
  @override
  $R call(
          {int? projectId,
          String? title,
          List<int?>? watchersId,
          Object? assignedToId = $none,
          Object? blockedNote = $none,
          Object? description = $none,
          Object? isBlocked = $none,
          Object? isClosed = $none,
          Object? sprintId = $none,
          Object? priorityId = $none,
          Object? severityId = $none,
          Object? statusId = $none,
          Object? tags = $none,
          Object? type = $none}) =>
      $apply(FieldCopyWithData({
        if (projectId != null) #projectId: projectId,
        if (title != null) #title: title,
        if (watchersId != null) #watchersId: watchersId,
        if (assignedToId != $none) #assignedToId: assignedToId,
        if (blockedNote != $none) #blockedNote: blockedNote,
        if (description != $none) #description: description,
        if (isBlocked != $none) #isBlocked: isBlocked,
        if (isClosed != $none) #isClosed: isClosed,
        if (sprintId != $none) #sprintId: sprintId,
        if (priorityId != $none) #priorityId: priorityId,
        if (severityId != $none) #severityId: severityId,
        if (statusId != $none) #statusId: statusId,
        if (tags != $none) #tags: tags,
        if (type != $none) #type: type
      }));
  @override
  TaigaIssueAPI $make(CopyWithData data) => TaigaIssueAPI(
      projectId: data.get(#projectId, or: $value.projectId),
      title: data.get(#title, or: $value.title),
      watchersId: data.get(#watchersId, or: $value.watchersId),
      assignedToId: data.get(#assignedToId, or: $value.assignedToId),
      blockedNote: data.get(#blockedNote, or: $value.blockedNote),
      description: data.get(#description, or: $value.description),
      isBlocked: data.get(#isBlocked, or: $value.isBlocked),
      isClosed: data.get(#isClosed, or: $value.isClosed),
      sprintId: data.get(#sprintId, or: $value.sprintId),
      priorityId: data.get(#priorityId, or: $value.priorityId),
      severityId: data.get(#severityId, or: $value.severityId),
      statusId: data.get(#statusId, or: $value.statusId),
      tags: data.get(#tags, or: $value.tags),
      type: data.get(#type, or: $value.type));

  @override
  TaigaIssueAPICopyWith<$R2, TaigaIssueAPI, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaIssueAPICopyWithImpl($value, $cast, t);
}

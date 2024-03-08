// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'change.dart';

class ChangesMapper extends ClassMapperBase<Changes> {
  ChangesMapper._();

  static ChangesMapper? _instance;
  static ChangesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChangesMapper._());
      FromToMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Changes';

  static FromTo? _$authorId(Changes v) => v.authorId;
  static const Field<Changes, FromTo> _f$authorId =
      Field('authorId', _$authorId, key: 'author_id');
  static FromTo? _$createdAt(Changes v) => v.createdAt;
  static const Field<Changes, FromTo> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static FromTo? _$description(Changes v) => v.description;
  static const Field<Changes, FromTo> _f$description =
      Field('description', _$description);
  static FromTo? _$id(Changes v) => v.id;
  static const Field<Changes, FromTo> _f$id = Field('id', _$id);
  static FromTo? _$internalId(Changes v) => v.internalId;
  static const Field<Changes, FromTo> _f$internalId =
      Field('internalId', _$internalId, key: 'iid');
  static FromTo? _$projectId(Changes v) => v.projectId;
  static const Field<Changes, FromTo> _f$projectId =
      Field('projectId', _$projectId, key: 'project_id');
  static FromTo? _$timeEstimate(Changes v) => v.timeEstimate;
  static const Field<Changes, FromTo> _f$timeEstimate =
      Field('timeEstimate', _$timeEstimate, key: 'time_estimate');
  static FromTo? _$title(Changes v) => v.title;
  static const Field<Changes, FromTo> _f$title = Field('title', _$title);
  static FromTo? _$updatedAt(Changes v) => v.updatedAt;
  static const Field<Changes, FromTo> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');

  @override
  final Map<Symbol, Field<Changes, dynamic>> fields = const {
    #authorId: _f$authorId,
    #createdAt: _f$createdAt,
    #description: _f$description,
    #id: _f$id,
    #internalId: _f$internalId,
    #projectId: _f$projectId,
    #timeEstimate: _f$timeEstimate,
    #title: _f$title,
    #updatedAt: _f$updatedAt,
  };

  static Changes _instantiate(DecodingData data) {
    return Changes(
        authorId: data.dec(_f$authorId),
        createdAt: data.dec(_f$createdAt),
        description: data.dec(_f$description),
        id: data.dec(_f$id),
        internalId: data.dec(_f$internalId),
        projectId: data.dec(_f$projectId),
        timeEstimate: data.dec(_f$timeEstimate),
        title: data.dec(_f$title),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Changes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Changes>(map);
  }

  static Changes fromJson(String json) {
    return ensureInitialized().decodeJson<Changes>(json);
  }
}

mixin ChangesMappable {
  String toJson() {
    return ChangesMapper.ensureInitialized()
        .encodeJson<Changes>(this as Changes);
  }

  Map<String, dynamic> toMap() {
    return ChangesMapper.ensureInitialized()
        .encodeMap<Changes>(this as Changes);
  }

  ChangesCopyWith<Changes, Changes, Changes> get copyWith =>
      _ChangesCopyWithImpl(this as Changes, $identity, $identity);
  @override
  String toString() {
    return ChangesMapper.ensureInitialized().stringifyValue(this as Changes);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ChangesMapper.ensureInitialized()
                .isValueEqual(this as Changes, other));
  }

  @override
  int get hashCode {
    return ChangesMapper.ensureInitialized().hashValue(this as Changes);
  }
}

extension ChangesValueCopy<$R, $Out> on ObjectCopyWith<$R, Changes, $Out> {
  ChangesCopyWith<$R, Changes, $Out> get $asChanges =>
      $base.as((v, t, t2) => _ChangesCopyWithImpl(v, t, t2));
}

abstract class ChangesCopyWith<$R, $In extends Changes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FromToCopyWith<$R, FromTo, FromTo>? get authorId;
  FromToCopyWith<$R, FromTo, FromTo>? get createdAt;
  FromToCopyWith<$R, FromTo, FromTo>? get description;
  FromToCopyWith<$R, FromTo, FromTo>? get id;
  FromToCopyWith<$R, FromTo, FromTo>? get internalId;
  FromToCopyWith<$R, FromTo, FromTo>? get projectId;
  FromToCopyWith<$R, FromTo, FromTo>? get timeEstimate;
  FromToCopyWith<$R, FromTo, FromTo>? get title;
  FromToCopyWith<$R, FromTo, FromTo>? get updatedAt;
  $R call(
      {FromTo? authorId,
      FromTo? createdAt,
      FromTo? description,
      FromTo? id,
      FromTo? internalId,
      FromTo? projectId,
      FromTo? timeEstimate,
      FromTo? title,
      FromTo? updatedAt});
  ChangesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChangesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Changes, $Out>
    implements ChangesCopyWith<$R, Changes, $Out> {
  _ChangesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Changes> $mapper =
      ChangesMapper.ensureInitialized();
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get authorId =>
      $value.authorId?.copyWith.$chain((v) => call(authorId: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get createdAt =>
      $value.createdAt?.copyWith.$chain((v) => call(createdAt: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get description =>
      $value.description?.copyWith.$chain((v) => call(description: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get id =>
      $value.id?.copyWith.$chain((v) => call(id: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get internalId =>
      $value.internalId?.copyWith.$chain((v) => call(internalId: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get projectId =>
      $value.projectId?.copyWith.$chain((v) => call(projectId: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get timeEstimate =>
      $value.timeEstimate?.copyWith.$chain((v) => call(timeEstimate: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get title =>
      $value.title?.copyWith.$chain((v) => call(title: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get updatedAt =>
      $value.updatedAt?.copyWith.$chain((v) => call(updatedAt: v));
  @override
  $R call(
          {Object? authorId = $none,
          Object? createdAt = $none,
          Object? description = $none,
          Object? id = $none,
          Object? internalId = $none,
          Object? projectId = $none,
          Object? timeEstimate = $none,
          Object? title = $none,
          Object? updatedAt = $none}) =>
      $apply(FieldCopyWithData({
        if (authorId != $none) #authorId: authorId,
        if (createdAt != $none) #createdAt: createdAt,
        if (description != $none) #description: description,
        if (id != $none) #id: id,
        if (internalId != $none) #internalId: internalId,
        if (projectId != $none) #projectId: projectId,
        if (timeEstimate != $none) #timeEstimate: timeEstimate,
        if (title != $none) #title: title,
        if (updatedAt != $none) #updatedAt: updatedAt
      }));
  @override
  Changes $make(CopyWithData data) => Changes(
      authorId: data.get(#authorId, or: $value.authorId),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      description: data.get(#description, or: $value.description),
      id: data.get(#id, or: $value.id),
      internalId: data.get(#internalId, or: $value.internalId),
      projectId: data.get(#projectId, or: $value.projectId),
      timeEstimate: data.get(#timeEstimate, or: $value.timeEstimate),
      title: data.get(#title, or: $value.title),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  ChangesCopyWith<$R2, Changes, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChangesCopyWithImpl($value, $cast, t);
}

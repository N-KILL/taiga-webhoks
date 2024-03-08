// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'labels.dart';

class LabelMapper extends ClassMapperBase<Label> {
  LabelMapper._();

  static LabelMapper? _instance;
  static LabelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LabelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Label';

  static int _$id(Label v) => v.id;
  static const Field<Label, int> _f$id = Field('id', _$id);
  static String _$name(Label v) => v.name;
  static const Field<Label, String> _f$name =
      Field('name', _$name, key: 'title');
  static String _$color(Label v) => v.color;
  static const Field<Label, String> _f$color = Field('color', _$color);
  static int _$projectId(Label v) => v.projectId;
  static const Field<Label, int> _f$projectId =
      Field('projectId', _$projectId, key: 'project_id');
  static String _$createdAt(Label v) => v.createdAt;
  static const Field<Label, String> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static String _$lastTimeUpdated(Label v) => v.lastTimeUpdated;
  static const Field<Label, String> _f$lastTimeUpdated =
      Field('lastTimeUpdated', _$lastTimeUpdated, key: 'updated_at');
  static bool _$template(Label v) => v.template;
  static const Field<Label, bool> _f$template = Field('template', _$template);
  static String? _$description(Label v) => v.description;
  static const Field<Label, String> _f$description =
      Field('description', _$description);
  static String _$type(Label v) => v.type;
  static const Field<Label, String> _f$type = Field('type', _$type);
  static int? _$groupId(Label v) => v.groupId;
  static const Field<Label, int> _f$groupId =
      Field('groupId', _$groupId, key: 'group_id');
  static bool _$lockOnMergeStatus(Label v) => v.lockOnMergeStatus;
  static const Field<Label, bool> _f$lockOnMergeStatus =
      Field('lockOnMergeStatus', _$lockOnMergeStatus, key: 'lock_on_merge');

  @override
  final Map<Symbol, Field<Label, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #color: _f$color,
    #projectId: _f$projectId,
    #createdAt: _f$createdAt,
    #lastTimeUpdated: _f$lastTimeUpdated,
    #template: _f$template,
    #description: _f$description,
    #type: _f$type,
    #groupId: _f$groupId,
    #lockOnMergeStatus: _f$lockOnMergeStatus,
  };

  static Label _instantiate(DecodingData data) {
    return Label(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        color: data.dec(_f$color),
        projectId: data.dec(_f$projectId),
        createdAt: data.dec(_f$createdAt),
        lastTimeUpdated: data.dec(_f$lastTimeUpdated),
        template: data.dec(_f$template),
        description: data.dec(_f$description),
        type: data.dec(_f$type),
        groupId: data.dec(_f$groupId),
        lockOnMergeStatus: data.dec(_f$lockOnMergeStatus));
  }

  @override
  final Function instantiate = _instantiate;

  static Label fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Label>(map);
  }

  static Label fromJson(String json) {
    return ensureInitialized().decodeJson<Label>(json);
  }
}

mixin LabelMappable {
  String toJson() {
    return LabelMapper.ensureInitialized().encodeJson<Label>(this as Label);
  }

  Map<String, dynamic> toMap() {
    return LabelMapper.ensureInitialized().encodeMap<Label>(this as Label);
  }

  LabelCopyWith<Label, Label, Label> get copyWith =>
      _LabelCopyWithImpl(this as Label, $identity, $identity);
  @override
  String toString() {
    return LabelMapper.ensureInitialized().stringifyValue(this as Label);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LabelMapper.ensureInitialized().isValueEqual(this as Label, other));
  }

  @override
  int get hashCode {
    return LabelMapper.ensureInitialized().hashValue(this as Label);
  }
}

extension LabelValueCopy<$R, $Out> on ObjectCopyWith<$R, Label, $Out> {
  LabelCopyWith<$R, Label, $Out> get $asLabel =>
      $base.as((v, t, t2) => _LabelCopyWithImpl(v, t, t2));
}

abstract class LabelCopyWith<$R, $In extends Label, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      String? color,
      int? projectId,
      String? createdAt,
      String? lastTimeUpdated,
      bool? template,
      String? description,
      String? type,
      int? groupId,
      bool? lockOnMergeStatus});
  LabelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LabelCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Label, $Out>
    implements LabelCopyWith<$R, Label, $Out> {
  _LabelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Label> $mapper = LabelMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          String? color,
          int? projectId,
          String? createdAt,
          String? lastTimeUpdated,
          bool? template,
          Object? description = $none,
          String? type,
          Object? groupId = $none,
          bool? lockOnMergeStatus}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (color != null) #color: color,
        if (projectId != null) #projectId: projectId,
        if (createdAt != null) #createdAt: createdAt,
        if (lastTimeUpdated != null) #lastTimeUpdated: lastTimeUpdated,
        if (template != null) #template: template,
        if (description != $none) #description: description,
        if (type != null) #type: type,
        if (groupId != $none) #groupId: groupId,
        if (lockOnMergeStatus != null) #lockOnMergeStatus: lockOnMergeStatus
      }));
  @override
  Label $make(CopyWithData data) => Label(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      color: data.get(#color, or: $value.color),
      projectId: data.get(#projectId, or: $value.projectId),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      lastTimeUpdated: data.get(#lastTimeUpdated, or: $value.lastTimeUpdated),
      template: data.get(#template, or: $value.template),
      description: data.get(#description, or: $value.description),
      type: data.get(#type, or: $value.type),
      groupId: data.get(#groupId, or: $value.groupId),
      lockOnMergeStatus:
          data.get(#lockOnMergeStatus, or: $value.lockOnMergeStatus));

  @override
  LabelCopyWith<$R2, Label, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LabelCopyWithImpl($value, $cast, t);
}

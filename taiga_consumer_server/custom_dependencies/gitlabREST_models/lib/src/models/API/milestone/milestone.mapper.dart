// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'milestone.dart';

class MilestoneStatesMapper extends EnumMapper<MilestoneStates> {
  MilestoneStatesMapper._();

  static MilestoneStatesMapper? _instance;
  static MilestoneStatesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MilestoneStatesMapper._());
    }
    return _instance!;
  }

  static MilestoneStates fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MilestoneStates decode(dynamic value) {
    switch (value) {
      case 'active':
        return MilestoneStates.active;
      case 'closed':
        return MilestoneStates.closed;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MilestoneStates self) {
    switch (self) {
      case MilestoneStates.active:
        return 'active';
      case MilestoneStates.closed:
        return 'closed';
    }
  }
}

extension MilestoneStatesMapperExtension on MilestoneStates {
  String toValue() {
    MilestoneStatesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MilestoneStates>(this) as String;
  }
}

class MilestoneAPIMapper extends ClassMapperBase<MilestoneAPI> {
  MilestoneAPIMapper._();

  static MilestoneAPIMapper? _instance;
  static MilestoneAPIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MilestoneAPIMapper._());
      MilestoneStatesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MilestoneAPI';

  static int _$id(MilestoneAPI v) => v.id;
  static const Field<MilestoneAPI, int> _f$id = Field('id', _$id);
  static int _$internalId(MilestoneAPI v) => v.internalId;
  static const Field<MilestoneAPI, int> _f$internalId =
      Field('internalId', _$internalId, key: 'iid');
  static int _$projectId(MilestoneAPI v) => v.projectId;
  static const Field<MilestoneAPI, int> _f$projectId =
      Field('projectId', _$projectId, key: 'project_id');
  static String _$name(MilestoneAPI v) => v.name;
  static const Field<MilestoneAPI, String> _f$name =
      Field('name', _$name, key: 'title');
  static String _$description(MilestoneAPI v) => v.description;
  static const Field<MilestoneAPI, String> _f$description =
      Field('description', _$description);
  static MilestoneStates _$state(MilestoneAPI v) => v.state;
  static const Field<MilestoneAPI, MilestoneStates> _f$state =
      Field('state', _$state);
  static DateTime _$createdAt(MilestoneAPI v) => v.createdAt;
  static const Field<MilestoneAPI, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static DateTime _$updatedAt(MilestoneAPI v) => v.updatedAt;
  static const Field<MilestoneAPI, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static DateTime _$dueDate(MilestoneAPI v) => v.dueDate;
  static const Field<MilestoneAPI, DateTime> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date');
  static DateTime _$startDate(MilestoneAPI v) => v.startDate;
  static const Field<MilestoneAPI, DateTime> _f$startDate =
      Field('startDate', _$startDate, key: 'start_date');
  static bool _$isExpired(MilestoneAPI v) => v.isExpired;
  static const Field<MilestoneAPI, bool> _f$isExpired =
      Field('isExpired', _$isExpired, key: 'expired');
  static String _$milestoneLink(MilestoneAPI v) => v.milestoneLink;
  static const Field<MilestoneAPI, String> _f$milestoneLink =
      Field('milestoneLink', _$milestoneLink, key: 'web_url');

  @override
  final Map<Symbol, Field<MilestoneAPI, dynamic>> fields = const {
    #id: _f$id,
    #internalId: _f$internalId,
    #projectId: _f$projectId,
    #name: _f$name,
    #description: _f$description,
    #state: _f$state,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #dueDate: _f$dueDate,
    #startDate: _f$startDate,
    #isExpired: _f$isExpired,
    #milestoneLink: _f$milestoneLink,
  };

  static MilestoneAPI _instantiate(DecodingData data) {
    return MilestoneAPI(
        id: data.dec(_f$id),
        internalId: data.dec(_f$internalId),
        projectId: data.dec(_f$projectId),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        state: data.dec(_f$state),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        dueDate: data.dec(_f$dueDate),
        startDate: data.dec(_f$startDate),
        isExpired: data.dec(_f$isExpired),
        milestoneLink: data.dec(_f$milestoneLink));
  }

  @override
  final Function instantiate = _instantiate;

  static MilestoneAPI fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MilestoneAPI>(map);
  }

  static MilestoneAPI fromJson(String json) {
    return ensureInitialized().decodeJson<MilestoneAPI>(json);
  }
}

mixin MilestoneAPIMappable {
  String toJson() {
    return MilestoneAPIMapper.ensureInitialized()
        .encodeJson<MilestoneAPI>(this as MilestoneAPI);
  }

  Map<String, dynamic> toMap() {
    return MilestoneAPIMapper.ensureInitialized()
        .encodeMap<MilestoneAPI>(this as MilestoneAPI);
  }

  MilestoneAPICopyWith<MilestoneAPI, MilestoneAPI, MilestoneAPI> get copyWith =>
      _MilestoneAPICopyWithImpl(this as MilestoneAPI, $identity, $identity);
  @override
  String toString() {
    return MilestoneAPIMapper.ensureInitialized()
        .stringifyValue(this as MilestoneAPI);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            MilestoneAPIMapper.ensureInitialized()
                .isValueEqual(this as MilestoneAPI, other));
  }

  @override
  int get hashCode {
    return MilestoneAPIMapper.ensureInitialized()
        .hashValue(this as MilestoneAPI);
  }
}

extension MilestoneAPIValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MilestoneAPI, $Out> {
  MilestoneAPICopyWith<$R, MilestoneAPI, $Out> get $asMilestoneAPI =>
      $base.as((v, t, t2) => _MilestoneAPICopyWithImpl(v, t, t2));
}

abstract class MilestoneAPICopyWith<$R, $In extends MilestoneAPI, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      int? internalId,
      int? projectId,
      String? name,
      String? description,
      MilestoneStates? state,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? dueDate,
      DateTime? startDate,
      bool? isExpired,
      String? milestoneLink});
  MilestoneAPICopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MilestoneAPICopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MilestoneAPI, $Out>
    implements MilestoneAPICopyWith<$R, MilestoneAPI, $Out> {
  _MilestoneAPICopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MilestoneAPI> $mapper =
      MilestoneAPIMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          int? internalId,
          int? projectId,
          String? name,
          String? description,
          MilestoneStates? state,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? dueDate,
          DateTime? startDate,
          bool? isExpired,
          String? milestoneLink}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (internalId != null) #internalId: internalId,
        if (projectId != null) #projectId: projectId,
        if (name != null) #name: name,
        if (description != null) #description: description,
        if (state != null) #state: state,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (dueDate != null) #dueDate: dueDate,
        if (startDate != null) #startDate: startDate,
        if (isExpired != null) #isExpired: isExpired,
        if (milestoneLink != null) #milestoneLink: milestoneLink
      }));
  @override
  MilestoneAPI $make(CopyWithData data) => MilestoneAPI(
      id: data.get(#id, or: $value.id),
      internalId: data.get(#internalId, or: $value.internalId),
      projectId: data.get(#projectId, or: $value.projectId),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      state: data.get(#state, or: $value.state),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      startDate: data.get(#startDate, or: $value.startDate),
      isExpired: data.get(#isExpired, or: $value.isExpired),
      milestoneLink: data.get(#milestoneLink, or: $value.milestoneLink));

  @override
  MilestoneAPICopyWith<$R2, MilestoneAPI, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MilestoneAPICopyWithImpl($value, $cast, t);
}

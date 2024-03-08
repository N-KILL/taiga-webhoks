// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'data_sprint.dart';

class TaigaSprintDataMapper extends ClassMapperBase<TaigaSprintData> {
  TaigaSprintDataMapper._();

  static TaigaSprintDataMapper? _instance;
  static TaigaSprintDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaSprintDataMapper._());
      TaigaProjectMapper.ensureInitialized();
      TaigaUserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaSprintData';

  static int _$sprintId(TaigaSprintData v) => v.sprintId;
  static const Field<TaigaSprintData, int> _f$sprintId =
      Field('sprintId', _$sprintId, key: 'id');
  static String _$sprintName(TaigaSprintData v) => v.sprintName;
  static const Field<TaigaSprintData, String> _f$sprintName =
      Field('sprintName', _$sprintName, key: 'name');
  static String _$sprintSlug(TaigaSprintData v) => v.sprintSlug;
  static const Field<TaigaSprintData, String> _f$sprintSlug =
      Field('sprintSlug', _$sprintSlug, key: 'slug');
  static DateTime _$estimatedStartDate(TaigaSprintData v) =>
      v.estimatedStartDate;
  static const Field<TaigaSprintData, DateTime> _f$estimatedStartDate =
      Field('estimatedStartDate', _$estimatedStartDate, key: 'estimated_start');
  static DateTime _$estimatedFinishDate(TaigaSprintData v) =>
      v.estimatedFinishDate;
  static const Field<TaigaSprintData, DateTime> _f$estimatedFinishDate = Field(
      'estimatedFinishDate', _$estimatedFinishDate,
      key: 'estimated_finish');
  static DateTime _$creationDate(TaigaSprintData v) => v.creationDate;
  static const Field<TaigaSprintData, DateTime> _f$creationDate =
      Field('creationDate', _$creationDate, key: 'created_date');
  static DateTime _$modifiedDate(TaigaSprintData v) => v.modifiedDate;
  static const Field<TaigaSprintData, DateTime> _f$modifiedDate =
      Field('modifiedDate', _$modifiedDate, key: 'modified_date');
  static bool _$sprintClosedStatus(TaigaSprintData v) => v.sprintClosedStatus;
  static const Field<TaigaSprintData, bool> _f$sprintClosedStatus =
      Field('sprintClosedStatus', _$sprintClosedStatus, key: 'closed');
  static int _$disponibility(TaigaSprintData v) => v.disponibility;
  static const Field<TaigaSprintData, int> _f$disponibility =
      Field('disponibility', _$disponibility);
  static String _$sprintPermalink(TaigaSprintData v) => v.sprintPermalink;
  static const Field<TaigaSprintData, String> _f$sprintPermalink =
      Field('sprintPermalink', _$sprintPermalink, key: 'permalink');
  static TaigaProject _$project(TaigaSprintData v) => v.project;
  static const Field<TaigaSprintData, TaigaProject> _f$project =
      Field('project', _$project);
  static TaigaUser _$createdBy(TaigaSprintData v) => v.createdBy;
  static const Field<TaigaSprintData, TaigaUser> _f$createdBy =
      Field('createdBy', _$createdBy, key: 'owner');

  @override
  final Map<Symbol, Field<TaigaSprintData, dynamic>> fields = const {
    #sprintId: _f$sprintId,
    #sprintName: _f$sprintName,
    #sprintSlug: _f$sprintSlug,
    #estimatedStartDate: _f$estimatedStartDate,
    #estimatedFinishDate: _f$estimatedFinishDate,
    #creationDate: _f$creationDate,
    #modifiedDate: _f$modifiedDate,
    #sprintClosedStatus: _f$sprintClosedStatus,
    #disponibility: _f$disponibility,
    #sprintPermalink: _f$sprintPermalink,
    #project: _f$project,
    #createdBy: _f$createdBy,
  };

  static TaigaSprintData _instantiate(DecodingData data) {
    return TaigaSprintData(
        sprintId: data.dec(_f$sprintId),
        sprintName: data.dec(_f$sprintName),
        sprintSlug: data.dec(_f$sprintSlug),
        estimatedStartDate: data.dec(_f$estimatedStartDate),
        estimatedFinishDate: data.dec(_f$estimatedFinishDate),
        creationDate: data.dec(_f$creationDate),
        modifiedDate: data.dec(_f$modifiedDate),
        sprintClosedStatus: data.dec(_f$sprintClosedStatus),
        disponibility: data.dec(_f$disponibility),
        sprintPermalink: data.dec(_f$sprintPermalink),
        project: data.dec(_f$project),
        createdBy: data.dec(_f$createdBy));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaSprintData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaSprintData>(map);
  }

  static TaigaSprintData fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaSprintData>(json);
  }
}

mixin TaigaSprintDataMappable {
  String toJson() {
    return TaigaSprintDataMapper.ensureInitialized()
        .encodeJson<TaigaSprintData>(this as TaigaSprintData);
  }

  Map<String, dynamic> toMap() {
    return TaigaSprintDataMapper.ensureInitialized()
        .encodeMap<TaigaSprintData>(this as TaigaSprintData);
  }

  TaigaSprintDataCopyWith<TaigaSprintData, TaigaSprintData, TaigaSprintData>
      get copyWith => _TaigaSprintDataCopyWithImpl(
          this as TaigaSprintData, $identity, $identity);
  @override
  String toString() {
    return TaigaSprintDataMapper.ensureInitialized()
        .stringifyValue(this as TaigaSprintData);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaSprintDataMapper.ensureInitialized()
                .isValueEqual(this as TaigaSprintData, other));
  }

  @override
  int get hashCode {
    return TaigaSprintDataMapper.ensureInitialized()
        .hashValue(this as TaigaSprintData);
  }
}

extension TaigaSprintDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaSprintData, $Out> {
  TaigaSprintDataCopyWith<$R, TaigaSprintData, $Out> get $asTaigaSprintData =>
      $base.as((v, t, t2) => _TaigaSprintDataCopyWithImpl(v, t, t2));
}

abstract class TaigaSprintDataCopyWith<$R, $In extends TaigaSprintData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get project;
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get createdBy;
  $R call(
      {int? sprintId,
      String? sprintName,
      String? sprintSlug,
      DateTime? estimatedStartDate,
      DateTime? estimatedFinishDate,
      DateTime? creationDate,
      DateTime? modifiedDate,
      bool? sprintClosedStatus,
      int? disponibility,
      String? sprintPermalink,
      TaigaProject? project,
      TaigaUser? createdBy});
  TaigaSprintDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TaigaSprintDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaSprintData, $Out>
    implements TaigaSprintDataCopyWith<$R, TaigaSprintData, $Out> {
  _TaigaSprintDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaSprintData> $mapper =
      TaigaSprintDataMapper.ensureInitialized();
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get project =>
      $value.project.copyWith.$chain((v) => call(project: v));
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get createdBy =>
      $value.createdBy.copyWith.$chain((v) => call(createdBy: v));
  @override
  $R call(
          {int? sprintId,
          String? sprintName,
          String? sprintSlug,
          DateTime? estimatedStartDate,
          DateTime? estimatedFinishDate,
          DateTime? creationDate,
          DateTime? modifiedDate,
          bool? sprintClosedStatus,
          int? disponibility,
          String? sprintPermalink,
          TaigaProject? project,
          TaigaUser? createdBy}) =>
      $apply(FieldCopyWithData({
        if (sprintId != null) #sprintId: sprintId,
        if (sprintName != null) #sprintName: sprintName,
        if (sprintSlug != null) #sprintSlug: sprintSlug,
        if (estimatedStartDate != null) #estimatedStartDate: estimatedStartDate,
        if (estimatedFinishDate != null)
          #estimatedFinishDate: estimatedFinishDate,
        if (creationDate != null) #creationDate: creationDate,
        if (modifiedDate != null) #modifiedDate: modifiedDate,
        if (sprintClosedStatus != null) #sprintClosedStatus: sprintClosedStatus,
        if (disponibility != null) #disponibility: disponibility,
        if (sprintPermalink != null) #sprintPermalink: sprintPermalink,
        if (project != null) #project: project,
        if (createdBy != null) #createdBy: createdBy
      }));
  @override
  TaigaSprintData $make(CopyWithData data) => TaigaSprintData(
      sprintId: data.get(#sprintId, or: $value.sprintId),
      sprintName: data.get(#sprintName, or: $value.sprintName),
      sprintSlug: data.get(#sprintSlug, or: $value.sprintSlug),
      estimatedStartDate:
          data.get(#estimatedStartDate, or: $value.estimatedStartDate),
      estimatedFinishDate:
          data.get(#estimatedFinishDate, or: $value.estimatedFinishDate),
      creationDate: data.get(#creationDate, or: $value.creationDate),
      modifiedDate: data.get(#modifiedDate, or: $value.modifiedDate),
      sprintClosedStatus:
          data.get(#sprintClosedStatus, or: $value.sprintClosedStatus),
      disponibility: data.get(#disponibility, or: $value.disponibility),
      sprintPermalink: data.get(#sprintPermalink, or: $value.sprintPermalink),
      project: data.get(#project, or: $value.project),
      createdBy: data.get(#createdBy, or: $value.createdBy));

  @override
  TaigaSprintDataCopyWith<$R2, TaigaSprintData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaSprintDataCopyWithImpl($value, $cast, t);
}

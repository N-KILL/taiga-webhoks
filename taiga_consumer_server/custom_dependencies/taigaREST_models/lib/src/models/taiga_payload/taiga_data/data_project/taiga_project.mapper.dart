// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'taiga_project.dart';

class TaigaProjectMapper extends ClassMapperBase<TaigaProject> {
  TaigaProjectMapper._();

  static TaigaProjectMapper? _instance;
  static TaigaProjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaProjectMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaProject';

  static int _$projectId(TaigaProject v) => v.projectId;
  static const Field<TaigaProject, int> _f$projectId =
      Field('projectId', _$projectId, key: 'id');
  static String _$projectPermalink(TaigaProject v) => v.projectPermalink;
  static const Field<TaigaProject, String> _f$projectPermalink =
      Field('projectPermalink', _$projectPermalink, key: 'permalink');
  static String _$projectName(TaigaProject v) => v.projectName;
  static const Field<TaigaProject, String> _f$projectName =
      Field('projectName', _$projectName, key: 'name');
  static String? _$projectLogoBigUrl(TaigaProject v) => v.projectLogoBigUrl;
  static const Field<TaigaProject, String> _f$projectLogoBigUrl =
      Field('projectLogoBigUrl', _$projectLogoBigUrl, key: 'logo_big_url');

  @override
  final Map<Symbol, Field<TaigaProject, dynamic>> fields = const {
    #projectId: _f$projectId,
    #projectPermalink: _f$projectPermalink,
    #projectName: _f$projectName,
    #projectLogoBigUrl: _f$projectLogoBigUrl,
  };

  static TaigaProject _instantiate(DecodingData data) {
    return TaigaProject(
        projectId: data.dec(_f$projectId),
        projectPermalink: data.dec(_f$projectPermalink),
        projectName: data.dec(_f$projectName),
        projectLogoBigUrl: data.dec(_f$projectLogoBigUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaProject fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaProject>(map);
  }

  static TaigaProject fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaProject>(json);
  }
}

mixin TaigaProjectMappable {
  String toJson() {
    return TaigaProjectMapper.ensureInitialized()
        .encodeJson<TaigaProject>(this as TaigaProject);
  }

  Map<String, dynamic> toMap() {
    return TaigaProjectMapper.ensureInitialized()
        .encodeMap<TaigaProject>(this as TaigaProject);
  }

  TaigaProjectCopyWith<TaigaProject, TaigaProject, TaigaProject> get copyWith =>
      _TaigaProjectCopyWithImpl(this as TaigaProject, $identity, $identity);
  @override
  String toString() {
    return TaigaProjectMapper.ensureInitialized()
        .stringifyValue(this as TaigaProject);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaProjectMapper.ensureInitialized()
                .isValueEqual(this as TaigaProject, other));
  }

  @override
  int get hashCode {
    return TaigaProjectMapper.ensureInitialized()
        .hashValue(this as TaigaProject);
  }
}

extension TaigaProjectValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaProject, $Out> {
  TaigaProjectCopyWith<$R, TaigaProject, $Out> get $asTaigaProject =>
      $base.as((v, t, t2) => _TaigaProjectCopyWithImpl(v, t, t2));
}

abstract class TaigaProjectCopyWith<$R, $In extends TaigaProject, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? projectId,
      String? projectPermalink,
      String? projectName,
      String? projectLogoBigUrl});
  TaigaProjectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TaigaProjectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaProject, $Out>
    implements TaigaProjectCopyWith<$R, TaigaProject, $Out> {
  _TaigaProjectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaProject> $mapper =
      TaigaProjectMapper.ensureInitialized();
  @override
  $R call(
          {int? projectId,
          String? projectPermalink,
          String? projectName,
          Object? projectLogoBigUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (projectId != null) #projectId: projectId,
        if (projectPermalink != null) #projectPermalink: projectPermalink,
        if (projectName != null) #projectName: projectName,
        if (projectLogoBigUrl != $none) #projectLogoBigUrl: projectLogoBigUrl
      }));
  @override
  TaigaProject $make(CopyWithData data) => TaigaProject(
      projectId: data.get(#projectId, or: $value.projectId),
      projectPermalink:
          data.get(#projectPermalink, or: $value.projectPermalink),
      projectName: data.get(#projectName, or: $value.projectName),
      projectLogoBigUrl:
          data.get(#projectLogoBigUrl, or: $value.projectLogoBigUrl));

  @override
  TaigaProjectCopyWith<$R2, TaigaProject, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaProjectCopyWithImpl($value, $cast, t);
}

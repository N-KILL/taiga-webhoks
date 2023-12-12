// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nidus_issue.dart';

class NidusIssueMapper extends ClassMapperBase<NidusIssue> {
  NidusIssueMapper._();

  static NidusIssueMapper? _instance;
  static NidusIssueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NidusIssueMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NidusIssue';

  static int _$id(NidusIssue v) => v.id;
  static const Field<NidusIssue, int> _f$id = Field('id', _$id);
  static String _$name(NidusIssue v) => v.name;
  static const Field<NidusIssue, String> _f$name = Field('name', _$name);
  static String _$description(NidusIssue v) => v.description;
  static const Field<NidusIssue, String> _f$description =
      Field('description', _$description);
  static List<int> _$assignedNidusUsers(NidusIssue v) => v.assignedNidusUsers;
  static const Field<NidusIssue, List<int>> _f$assignedNidusUsers =
      Field('assignedNidusUsers', _$assignedNidusUsers);
  static int _$gitlabId(NidusIssue v) => v.gitlabId;
  static const Field<NidusIssue, int> _f$gitlabId =
      Field('gitlabId', _$gitlabId);
  static int _$taigaId(NidusIssue v) => v.taigaId;
  static const Field<NidusIssue, int> _f$taigaId = Field('taigaId', _$taigaId);

  @override
  final Map<Symbol, Field<NidusIssue, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #assignedNidusUsers: _f$assignedNidusUsers,
    #gitlabId: _f$gitlabId,
    #taigaId: _f$taigaId,
  };

  static NidusIssue _instantiate(DecodingData data) {
    return NidusIssue(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        assignedNidusUsers: data.dec(_f$assignedNidusUsers),
        gitlabId: data.dec(_f$gitlabId),
        taigaId: data.dec(_f$taigaId));
  }

  @override
  final Function instantiate = _instantiate;

  static NidusIssue fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NidusIssue>(map);
  }

  static NidusIssue fromJson(String json) {
    return ensureInitialized().decodeJson<NidusIssue>(json);
  }
}

mixin NidusIssueMappable {
  String toJson() {
    return NidusIssueMapper.ensureInitialized()
        .encodeJson<NidusIssue>(this as NidusIssue);
  }

  Map<String, dynamic> toMap() {
    return NidusIssueMapper.ensureInitialized()
        .encodeMap<NidusIssue>(this as NidusIssue);
  }

  NidusIssueCopyWith<NidusIssue, NidusIssue, NidusIssue> get copyWith =>
      _NidusIssueCopyWithImpl(this as NidusIssue, $identity, $identity);
  @override
  String toString() {
    return NidusIssueMapper.ensureInitialized()
        .stringifyValue(this as NidusIssue);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NidusIssueMapper.ensureInitialized()
                .isValueEqual(this as NidusIssue, other));
  }

  @override
  int get hashCode {
    return NidusIssueMapper.ensureInitialized().hashValue(this as NidusIssue);
  }
}

extension NidusIssueValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NidusIssue, $Out> {
  NidusIssueCopyWith<$R, NidusIssue, $Out> get $asNidusIssue =>
      $base.as((v, t, t2) => _NidusIssueCopyWithImpl(v, t, t2));
}

abstract class NidusIssueCopyWith<$R, $In extends NidusIssue, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get assignedNidusUsers;
  $R call(
      {int? id,
      String? name,
      String? description,
      List<int>? assignedNidusUsers,
      int? gitlabId,
      int? taigaId});
  NidusIssueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NidusIssueCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NidusIssue, $Out>
    implements NidusIssueCopyWith<$R, NidusIssue, $Out> {
  _NidusIssueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NidusIssue> $mapper =
      NidusIssueMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get assignedNidusUsers =>
      ListCopyWith(
          $value.assignedNidusUsers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(assignedNidusUsers: v));
  @override
  $R call(
          {int? id,
          String? name,
          String? description,
          List<int>? assignedNidusUsers,
          int? gitlabId,
          int? taigaId}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != null) #description: description,
        if (assignedNidusUsers != null) #assignedNidusUsers: assignedNidusUsers,
        if (gitlabId != null) #gitlabId: gitlabId,
        if (taigaId != null) #taigaId: taigaId
      }));
  @override
  NidusIssue $make(CopyWithData data) => NidusIssue(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      assignedNidusUsers:
          data.get(#assignedNidusUsers, or: $value.assignedNidusUsers),
      gitlabId: data.get(#gitlabId, or: $value.gitlabId),
      taigaId: data.get(#taigaId, or: $value.taigaId));

  @override
  NidusIssueCopyWith<$R2, NidusIssue, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NidusIssueCopyWithImpl($value, $cast, t);
}

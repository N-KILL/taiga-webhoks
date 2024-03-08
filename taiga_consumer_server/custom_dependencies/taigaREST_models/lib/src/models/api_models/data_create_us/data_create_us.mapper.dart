// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'data_create_us.dart';

class DataCreateUsMapper extends ClassMapperBase<DataCreateUs> {
  DataCreateUsMapper._();

  static DataCreateUsMapper? _instance;
  static DataCreateUsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DataCreateUsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DataCreateUs';

  static int _$assignedTo(DataCreateUs v) => v.assignedTo;
  static const Field<DataCreateUs, int> _f$assignedTo =
      Field('assignedTo', _$assignedTo, key: 'assigned_to');
  static int _$backlogOrder(DataCreateUs v) => v.backlogOrder;
  static const Field<DataCreateUs, int> _f$backlogOrder =
      Field('backlogOrder', _$backlogOrder, key: 'backlog_order');
  static String _$blockedNote(DataCreateUs v) => v.blockedNote;
  static const Field<DataCreateUs, String> _f$blockedNote =
      Field('blockedNote', _$blockedNote, key: 'blocked_note');
  static bool _$clientRequirement(DataCreateUs v) => v.clientRequirement;
  static const Field<DataCreateUs, bool> _f$clientRequirement = Field(
      'clientRequirement', _$clientRequirement,
      key: 'client_requirement');
  static String _$description(DataCreateUs v) => v.description;
  static const Field<DataCreateUs, String> _f$description =
      Field('description', _$description);
  static bool _$isBlocked(DataCreateUs v) => v.isBlocked;
  static const Field<DataCreateUs, bool> _f$isBlocked =
      Field('isBlocked', _$isBlocked, key: 'is_blocked');
  static bool _$isClosed(DataCreateUs v) => v.isClosed;
  static const Field<DataCreateUs, bool> _f$isClosed =
      Field('isClosed', _$isClosed, key: 'is_closed');
  static int _$kanbanOrder(DataCreateUs v) => v.kanbanOrder;
  static const Field<DataCreateUs, int> _f$kanbanOrder =
      Field('kanbanOrder', _$kanbanOrder, key: 'kanban_order');
  static int _$milestone(DataCreateUs v) => v.milestone;
  static const Field<DataCreateUs, int> _f$milestone =
      Field('milestone', _$milestone);
  static double _$points(DataCreateUs v) => v.points;
  static const Field<DataCreateUs, double> _f$points =
      Field('points', _$points);
  static int _$project(DataCreateUs v) => v.project;
  static const Field<DataCreateUs, int> _f$project =
      Field('project', _$project);
  static int _$sprintOrder(DataCreateUs v) => v.sprintOrder;
  static const Field<DataCreateUs, int> _f$sprintOrder =
      Field('sprintOrder', _$sprintOrder, key: 'sprint_order');
  static int _$status(DataCreateUs v) => v.status;
  static const Field<DataCreateUs, int> _f$status = Field('status', _$status);
  static String _$subject(DataCreateUs v) => v.subject;
  static const Field<DataCreateUs, String> _f$subject =
      Field('subject', _$subject);
  static List<String> _$tags(DataCreateUs v) => v.tags;
  static const Field<DataCreateUs, List<String>> _f$tags =
      Field('tags', _$tags);
  static bool _$teamRequirement(DataCreateUs v) => v.teamRequirement;
  static const Field<DataCreateUs, bool> _f$teamRequirement =
      Field('teamRequirement', _$teamRequirement, key: 'team_requirement');
  static List<int> _$watchers(DataCreateUs v) => v.watchers;
  static const Field<DataCreateUs, List<int>> _f$watchers =
      Field('watchers', _$watchers);

  @override
  final Map<Symbol, Field<DataCreateUs, dynamic>> fields = const {
    #assignedTo: _f$assignedTo,
    #backlogOrder: _f$backlogOrder,
    #blockedNote: _f$blockedNote,
    #clientRequirement: _f$clientRequirement,
    #description: _f$description,
    #isBlocked: _f$isBlocked,
    #isClosed: _f$isClosed,
    #kanbanOrder: _f$kanbanOrder,
    #milestone: _f$milestone,
    #points: _f$points,
    #project: _f$project,
    #sprintOrder: _f$sprintOrder,
    #status: _f$status,
    #subject: _f$subject,
    #tags: _f$tags,
    #teamRequirement: _f$teamRequirement,
    #watchers: _f$watchers,
  };

  static DataCreateUs _instantiate(DecodingData data) {
    return DataCreateUs(
        assignedTo: data.dec(_f$assignedTo),
        backlogOrder: data.dec(_f$backlogOrder),
        blockedNote: data.dec(_f$blockedNote),
        clientRequirement: data.dec(_f$clientRequirement),
        description: data.dec(_f$description),
        isBlocked: data.dec(_f$isBlocked),
        isClosed: data.dec(_f$isClosed),
        kanbanOrder: data.dec(_f$kanbanOrder),
        milestone: data.dec(_f$milestone),
        points: data.dec(_f$points),
        project: data.dec(_f$project),
        sprintOrder: data.dec(_f$sprintOrder),
        status: data.dec(_f$status),
        subject: data.dec(_f$subject),
        tags: data.dec(_f$tags),
        teamRequirement: data.dec(_f$teamRequirement),
        watchers: data.dec(_f$watchers));
  }

  @override
  final Function instantiate = _instantiate;

  static DataCreateUs fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DataCreateUs>(map);
  }

  static DataCreateUs fromJson(String json) {
    return ensureInitialized().decodeJson<DataCreateUs>(json);
  }
}

mixin DataCreateUsMappable {
  String toJson() {
    return DataCreateUsMapper.ensureInitialized()
        .encodeJson<DataCreateUs>(this as DataCreateUs);
  }

  Map<String, dynamic> toMap() {
    return DataCreateUsMapper.ensureInitialized()
        .encodeMap<DataCreateUs>(this as DataCreateUs);
  }

  DataCreateUsCopyWith<DataCreateUs, DataCreateUs, DataCreateUs> get copyWith =>
      _DataCreateUsCopyWithImpl(this as DataCreateUs, $identity, $identity);
  @override
  String toString() {
    return DataCreateUsMapper.ensureInitialized()
        .stringifyValue(this as DataCreateUs);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            DataCreateUsMapper.ensureInitialized()
                .isValueEqual(this as DataCreateUs, other));
  }

  @override
  int get hashCode {
    return DataCreateUsMapper.ensureInitialized()
        .hashValue(this as DataCreateUs);
  }
}

extension DataCreateUsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DataCreateUs, $Out> {
  DataCreateUsCopyWith<$R, DataCreateUs, $Out> get $asDataCreateUs =>
      $base.as((v, t, t2) => _DataCreateUsCopyWithImpl(v, t, t2));
}

abstract class DataCreateUsCopyWith<$R, $In extends DataCreateUs, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get watchers;
  $R call(
      {int? assignedTo,
      int? backlogOrder,
      String? blockedNote,
      bool? clientRequirement,
      String? description,
      bool? isBlocked,
      bool? isClosed,
      int? kanbanOrder,
      int? milestone,
      double? points,
      int? project,
      int? sprintOrder,
      int? status,
      String? subject,
      List<String>? tags,
      bool? teamRequirement,
      List<int>? watchers});
  DataCreateUsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DataCreateUsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DataCreateUs, $Out>
    implements DataCreateUsCopyWith<$R, DataCreateUs, $Out> {
  _DataCreateUsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DataCreateUs> $mapper =
      DataCreateUsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags =>
      ListCopyWith($value.tags, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(tags: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get watchers =>
      ListCopyWith($value.watchers, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(watchers: v));
  @override
  $R call(
          {int? assignedTo,
          int? backlogOrder,
          String? blockedNote,
          bool? clientRequirement,
          String? description,
          bool? isBlocked,
          bool? isClosed,
          int? kanbanOrder,
          int? milestone,
          double? points,
          int? project,
          int? sprintOrder,
          int? status,
          String? subject,
          List<String>? tags,
          bool? teamRequirement,
          List<int>? watchers}) =>
      $apply(FieldCopyWithData({
        if (assignedTo != null) #assignedTo: assignedTo,
        if (backlogOrder != null) #backlogOrder: backlogOrder,
        if (blockedNote != null) #blockedNote: blockedNote,
        if (clientRequirement != null) #clientRequirement: clientRequirement,
        if (description != null) #description: description,
        if (isBlocked != null) #isBlocked: isBlocked,
        if (isClosed != null) #isClosed: isClosed,
        if (kanbanOrder != null) #kanbanOrder: kanbanOrder,
        if (milestone != null) #milestone: milestone,
        if (points != null) #points: points,
        if (project != null) #project: project,
        if (sprintOrder != null) #sprintOrder: sprintOrder,
        if (status != null) #status: status,
        if (subject != null) #subject: subject,
        if (tags != null) #tags: tags,
        if (teamRequirement != null) #teamRequirement: teamRequirement,
        if (watchers != null) #watchers: watchers
      }));
  @override
  DataCreateUs $make(CopyWithData data) => DataCreateUs(
      assignedTo: data.get(#assignedTo, or: $value.assignedTo),
      backlogOrder: data.get(#backlogOrder, or: $value.backlogOrder),
      blockedNote: data.get(#blockedNote, or: $value.blockedNote),
      clientRequirement:
          data.get(#clientRequirement, or: $value.clientRequirement),
      description: data.get(#description, or: $value.description),
      isBlocked: data.get(#isBlocked, or: $value.isBlocked),
      isClosed: data.get(#isClosed, or: $value.isClosed),
      kanbanOrder: data.get(#kanbanOrder, or: $value.kanbanOrder),
      milestone: data.get(#milestone, or: $value.milestone),
      points: data.get(#points, or: $value.points),
      project: data.get(#project, or: $value.project),
      sprintOrder: data.get(#sprintOrder, or: $value.sprintOrder),
      status: data.get(#status, or: $value.status),
      subject: data.get(#subject, or: $value.subject),
      tags: data.get(#tags, or: $value.tags),
      teamRequirement: data.get(#teamRequirement, or: $value.teamRequirement),
      watchers: data.get(#watchers, or: $value.watchers));

  @override
  DataCreateUsCopyWith<$R2, DataCreateUs, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DataCreateUsCopyWithImpl($value, $cast, t);
}

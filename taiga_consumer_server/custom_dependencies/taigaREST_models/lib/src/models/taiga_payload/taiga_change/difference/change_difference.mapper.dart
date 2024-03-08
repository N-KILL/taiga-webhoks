// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'change_difference.dart';

class TaigaChangeDifferenceMapper
    extends ClassMapperBase<TaigaChangeDifference> {
  TaigaChangeDifferenceMapper._();

  static TaigaChangeDifferenceMapper? _instance;
  static TaigaChangeDifferenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaChangeDifferenceMapper._());
      AttachmentsChangeMapper.ensureInitialized();
      FromToMapper.ensureInitialized();
      CustomValuesDataChangeMapper.ensureInitialized();
      PointDifferenceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaChangeDifference';

  static AttachmentsChange? _$attachments(TaigaChangeDifference v) =>
      v.attachments;
  static const Field<TaigaChangeDifference, AttachmentsChange> _f$attachments =
      Field('attachments', _$attachments, opt: true);
  static FromTo? _$assignedToJob(TaigaChangeDifference v) => v.assignedToJob;
  static const Field<TaigaChangeDifference, FromTo> _f$assignedToJob =
      Field('assignedToJob', _$assignedToJob, key: 'assigned_to', opt: true);
  static FromTo? _$assignedToUserStory(TaigaChangeDifference v) =>
      v.assignedToUserStory;
  static const Field<TaigaChangeDifference, FromTo> _f$assignedToUserStory =
      Field('assignedToUserStory', _$assignedToUserStory,
          key: 'assigned_users', opt: true);
  static FromTo? _$dueDate(TaigaChangeDifference v) => v.dueDate;
  static const Field<TaigaChangeDifference, FromTo> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date', opt: true);
  static FromTo? _$status(TaigaChangeDifference v) => v.status;
  static const Field<TaigaChangeDifference, FromTo> _f$status =
      Field('status', _$status, opt: true);
  static FromTo? _$relatedSprint(TaigaChangeDifference v) => v.relatedSprint;
  static const Field<TaigaChangeDifference, FromTo> _f$relatedSprint =
      Field('relatedSprint', _$relatedSprint, key: 'milestone', opt: true);
  static FromTo? _$promotedTo(TaigaChangeDifference v) => v.promotedTo;
  static const Field<TaigaChangeDifference, FromTo> _f$promotedTo =
      Field('promotedTo', _$promotedTo, key: 'promoted_to', opt: true);
  static FromTo? _$changeTags(TaigaChangeDifference v) => v.changeTags;
  static const Field<TaigaChangeDifference, FromTo> _f$changeTags =
      Field('changeTags', _$changeTags, key: 'tags', opt: true);
  static String? _$descriptionDiff(TaigaChangeDifference v) =>
      v.descriptionDiff;
  static const Field<TaigaChangeDifference, String> _f$descriptionDiff = Field(
      'descriptionDiff', _$descriptionDiff,
      key: 'description_diff', opt: true);
  static FromTo? _$kanbanOrder(TaigaChangeDifference v) => v.kanbanOrder;
  static const Field<TaigaChangeDifference, FromTo> _f$kanbanOrder =
      Field('kanbanOrder', _$kanbanOrder, key: 'kanban_order', opt: true);
  static FromTo? _$finishDate(TaigaChangeDifference v) => v.finishDate;
  static const Field<TaigaChangeDifference, FromTo> _f$finishDate =
      Field('finishDate', _$finishDate, key: 'finish_date', opt: true);
  static FromTo? _$blockedNoteDiff(TaigaChangeDifference v) =>
      v.blockedNoteDiff;
  static const Field<TaigaChangeDifference, FromTo> _f$blockedNoteDiff = Field(
      'blockedNoteDiff', _$blockedNoteDiff,
      key: 'blocked_note_diff', opt: true);
  static FromTo? _$blockedNoteHtml(TaigaChangeDifference v) =>
      v.blockedNoteHtml;
  static const Field<TaigaChangeDifference, FromTo> _f$blockedNoteHtml = Field(
      'blockedNoteHtml', _$blockedNoteHtml,
      key: 'blocked_note_html', opt: true);
  static CustomValuesDataChange? _$customAttributes(TaigaChangeDifference v) =>
      v.customAttributes;
  static const Field<TaigaChangeDifference, CustomValuesDataChange>
      _f$customAttributes = Field('customAttributes', _$customAttributes,
          key: 'custom_attributes', opt: true);
  static FromTo? _$isClosedStatus(TaigaChangeDifference v) => v.isClosedStatus;
  static const Field<TaigaChangeDifference, FromTo> _f$isClosedStatus =
      Field('isClosedStatus', _$isClosedStatus, key: 'is_closed', opt: true);
  static FromTo? _$isBlockedStatus(TaigaChangeDifference v) =>
      v.isBlockedStatus;
  static const Field<TaigaChangeDifference, FromTo> _f$isBlockedStatus =
      Field('isBlockedStatus', _$isBlockedStatus, key: 'is_blocked', opt: true);
  static FromTo? _$clientRequirementStatus(TaigaChangeDifference v) =>
      v.clientRequirementStatus;
  static const Field<TaigaChangeDifference, FromTo> _f$clientRequirementStatus =
      Field('clientRequirementStatus', _$clientRequirementStatus,
          key: 'client_requirement', opt: true);
  static FromTo? _$teamRequirementStatus(TaigaChangeDifference v) =>
      v.teamRequirementStatus;
  static const Field<TaigaChangeDifference, FromTo> _f$teamRequirementStatus =
      Field('teamRequirementStatus', _$teamRequirementStatus,
          key: 'team_requirement', opt: true);
  static FromTo? _$isIocaineStatus(TaigaChangeDifference v) =>
      v.isIocaineStatus;
  static const Field<TaigaChangeDifference, FromTo> _f$isIocaineStatus =
      Field('isIocaineStatus', _$isIocaineStatus, key: 'is_iocaine', opt: true);
  static FromTo? _$priorityStatus(TaigaChangeDifference v) => v.priorityStatus;
  static const Field<TaigaChangeDifference, FromTo> _f$priorityStatus =
      Field('priorityStatus', _$priorityStatus, key: 'priority', opt: true);
  static FromTo? _$severityStatus(TaigaChangeDifference v) => v.severityStatus;
  static const Field<TaigaChangeDifference, FromTo> _f$severityStatus =
      Field('severityStatus', _$severityStatus, key: 'severity', opt: true);
  static FromTo? _$typeStatus(TaigaChangeDifference v) => v.typeStatus;
  static const Field<TaigaChangeDifference, FromTo> _f$typeStatus =
      Field('typeStatus', _$typeStatus, key: 'type', opt: true);
  static PointDifference? _$storyPoints(TaigaChangeDifference v) =>
      v.storyPoints;
  static const Field<TaigaChangeDifference, PointDifference> _f$storyPoints =
      Field('storyPoints', _$storyPoints, key: 'points', opt: true);
  static FromTo? _$name(TaigaChangeDifference v) => v.name;
  static const Field<TaigaChangeDifference, FromTo> _f$name =
      Field('name', _$name, key: 'subject', opt: true);
  static FromTo? _$htmlWikiContent(TaigaChangeDifference v) =>
      v.htmlWikiContent;
  static const Field<TaigaChangeDifference, FromTo> _f$htmlWikiContent =
      Field('htmlWikiContent', _$htmlWikiContent, key: 'content_html');
  static FromTo? _$wikiContent(TaigaChangeDifference v) => v.wikiContent;
  static const Field<TaigaChangeDifference, FromTo> _f$wikiContent =
      Field('wikiContent', _$wikiContent, key: 'content_diff');

  @override
  final Map<Symbol, Field<TaigaChangeDifference, dynamic>> fields = const {
    #attachments: _f$attachments,
    #assignedToJob: _f$assignedToJob,
    #assignedToUserStory: _f$assignedToUserStory,
    #dueDate: _f$dueDate,
    #status: _f$status,
    #relatedSprint: _f$relatedSprint,
    #promotedTo: _f$promotedTo,
    #changeTags: _f$changeTags,
    #descriptionDiff: _f$descriptionDiff,
    #kanbanOrder: _f$kanbanOrder,
    #finishDate: _f$finishDate,
    #blockedNoteDiff: _f$blockedNoteDiff,
    #blockedNoteHtml: _f$blockedNoteHtml,
    #customAttributes: _f$customAttributes,
    #isClosedStatus: _f$isClosedStatus,
    #isBlockedStatus: _f$isBlockedStatus,
    #clientRequirementStatus: _f$clientRequirementStatus,
    #teamRequirementStatus: _f$teamRequirementStatus,
    #isIocaineStatus: _f$isIocaineStatus,
    #priorityStatus: _f$priorityStatus,
    #severityStatus: _f$severityStatus,
    #typeStatus: _f$typeStatus,
    #storyPoints: _f$storyPoints,
    #name: _f$name,
    #htmlWikiContent: _f$htmlWikiContent,
    #wikiContent: _f$wikiContent,
  };

  static TaigaChangeDifference _instantiate(DecodingData data) {
    return TaigaChangeDifference(
        attachments: data.dec(_f$attachments),
        assignedToJob: data.dec(_f$assignedToJob),
        assignedToUserStory: data.dec(_f$assignedToUserStory),
        dueDate: data.dec(_f$dueDate),
        status: data.dec(_f$status),
        relatedSprint: data.dec(_f$relatedSprint),
        promotedTo: data.dec(_f$promotedTo),
        changeTags: data.dec(_f$changeTags),
        descriptionDiff: data.dec(_f$descriptionDiff),
        kanbanOrder: data.dec(_f$kanbanOrder),
        finishDate: data.dec(_f$finishDate),
        blockedNoteDiff: data.dec(_f$blockedNoteDiff),
        blockedNoteHtml: data.dec(_f$blockedNoteHtml),
        customAttributes: data.dec(_f$customAttributes),
        isClosedStatus: data.dec(_f$isClosedStatus),
        isBlockedStatus: data.dec(_f$isBlockedStatus),
        clientRequirementStatus: data.dec(_f$clientRequirementStatus),
        teamRequirementStatus: data.dec(_f$teamRequirementStatus),
        isIocaineStatus: data.dec(_f$isIocaineStatus),
        priorityStatus: data.dec(_f$priorityStatus),
        severityStatus: data.dec(_f$severityStatus),
        typeStatus: data.dec(_f$typeStatus),
        storyPoints: data.dec(_f$storyPoints),
        name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaChangeDifference fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaChangeDifference>(map);
  }

  static TaigaChangeDifference fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaChangeDifference>(json);
  }
}

mixin TaigaChangeDifferenceMappable {
  String toJson() {
    return TaigaChangeDifferenceMapper.ensureInitialized()
        .encodeJson<TaigaChangeDifference>(this as TaigaChangeDifference);
  }

  Map<String, dynamic> toMap() {
    return TaigaChangeDifferenceMapper.ensureInitialized()
        .encodeMap<TaigaChangeDifference>(this as TaigaChangeDifference);
  }

  TaigaChangeDifferenceCopyWith<TaigaChangeDifference, TaigaChangeDifference,
          TaigaChangeDifference>
      get copyWith => _TaigaChangeDifferenceCopyWithImpl(
          this as TaigaChangeDifference, $identity, $identity);
  @override
  String toString() {
    return TaigaChangeDifferenceMapper.ensureInitialized()
        .stringifyValue(this as TaigaChangeDifference);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaChangeDifferenceMapper.ensureInitialized()
                .isValueEqual(this as TaigaChangeDifference, other));
  }

  @override
  int get hashCode {
    return TaigaChangeDifferenceMapper.ensureInitialized()
        .hashValue(this as TaigaChangeDifference);
  }
}

extension TaigaChangeDifferenceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaChangeDifference, $Out> {
  TaigaChangeDifferenceCopyWith<$R, TaigaChangeDifference, $Out>
      get $asTaigaChangeDifference =>
          $base.as((v, t, t2) => _TaigaChangeDifferenceCopyWithImpl(v, t, t2));
}

abstract class TaigaChangeDifferenceCopyWith<
    $R,
    $In extends TaigaChangeDifference,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  AttachmentsChangeCopyWith<$R, AttachmentsChange, AttachmentsChange>?
      get attachments;
  FromToCopyWith<$R, FromTo, FromTo>? get assignedToJob;
  FromToCopyWith<$R, FromTo, FromTo>? get assignedToUserStory;
  FromToCopyWith<$R, FromTo, FromTo>? get dueDate;
  FromToCopyWith<$R, FromTo, FromTo>? get status;
  FromToCopyWith<$R, FromTo, FromTo>? get relatedSprint;
  FromToCopyWith<$R, FromTo, FromTo>? get promotedTo;
  FromToCopyWith<$R, FromTo, FromTo>? get changeTags;
  FromToCopyWith<$R, FromTo, FromTo>? get kanbanOrder;
  FromToCopyWith<$R, FromTo, FromTo>? get finishDate;
  FromToCopyWith<$R, FromTo, FromTo>? get blockedNoteDiff;
  FromToCopyWith<$R, FromTo, FromTo>? get blockedNoteHtml;
  CustomValuesDataChangeCopyWith<$R, CustomValuesDataChange,
      CustomValuesDataChange>? get customAttributes;
  FromToCopyWith<$R, FromTo, FromTo>? get isClosedStatus;
  FromToCopyWith<$R, FromTo, FromTo>? get isBlockedStatus;
  FromToCopyWith<$R, FromTo, FromTo>? get clientRequirementStatus;
  FromToCopyWith<$R, FromTo, FromTo>? get teamRequirementStatus;
  FromToCopyWith<$R, FromTo, FromTo>? get isIocaineStatus;
  FromToCopyWith<$R, FromTo, FromTo>? get priorityStatus;
  FromToCopyWith<$R, FromTo, FromTo>? get severityStatus;
  FromToCopyWith<$R, FromTo, FromTo>? get typeStatus;
  PointDifferenceCopyWith<$R, PointDifference, PointDifference>?
      get storyPoints;
  FromToCopyWith<$R, FromTo, FromTo>? get name;
  $R call(
      {AttachmentsChange? attachments,
      FromTo? assignedToJob,
      FromTo? assignedToUserStory,
      FromTo? dueDate,
      FromTo? status,
      FromTo? relatedSprint,
      FromTo? promotedTo,
      FromTo? changeTags,
      String? descriptionDiff,
      FromTo? kanbanOrder,
      FromTo? finishDate,
      FromTo? blockedNoteDiff,
      FromTo? blockedNoteHtml,
      CustomValuesDataChange? customAttributes,
      FromTo? isClosedStatus,
      FromTo? isBlockedStatus,
      FromTo? clientRequirementStatus,
      FromTo? teamRequirementStatus,
      FromTo? isIocaineStatus,
      FromTo? priorityStatus,
      FromTo? severityStatus,
      FromTo? typeStatus,
      PointDifference? storyPoints,
      FromTo? name});
  TaigaChangeDifferenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TaigaChangeDifferenceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaChangeDifference, $Out>
    implements TaigaChangeDifferenceCopyWith<$R, TaigaChangeDifference, $Out> {
  _TaigaChangeDifferenceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaChangeDifference> $mapper =
      TaigaChangeDifferenceMapper.ensureInitialized();
  @override
  AttachmentsChangeCopyWith<$R, AttachmentsChange, AttachmentsChange>?
      get attachments =>
          $value.attachments?.copyWith.$chain((v) => call(attachments: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get assignedToJob =>
      $value.assignedToJob?.copyWith.$chain((v) => call(assignedToJob: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get assignedToUserStory =>
      $value.assignedToUserStory?.copyWith
          .$chain((v) => call(assignedToUserStory: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get dueDate =>
      $value.dueDate?.copyWith.$chain((v) => call(dueDate: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get status =>
      $value.status?.copyWith.$chain((v) => call(status: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get relatedSprint =>
      $value.relatedSprint?.copyWith.$chain((v) => call(relatedSprint: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get promotedTo =>
      $value.promotedTo?.copyWith.$chain((v) => call(promotedTo: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get changeTags =>
      $value.changeTags?.copyWith.$chain((v) => call(changeTags: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get kanbanOrder =>
      $value.kanbanOrder?.copyWith.$chain((v) => call(kanbanOrder: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get finishDate =>
      $value.finishDate?.copyWith.$chain((v) => call(finishDate: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get blockedNoteDiff =>
      $value.blockedNoteDiff?.copyWith.$chain((v) => call(blockedNoteDiff: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get blockedNoteHtml =>
      $value.blockedNoteHtml?.copyWith.$chain((v) => call(blockedNoteHtml: v));
  @override
  CustomValuesDataChangeCopyWith<$R, CustomValuesDataChange,
          CustomValuesDataChange>?
      get customAttributes => $value.customAttributes?.copyWith
          .$chain((v) => call(customAttributes: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get isClosedStatus =>
      $value.isClosedStatus?.copyWith.$chain((v) => call(isClosedStatus: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get isBlockedStatus =>
      $value.isBlockedStatus?.copyWith.$chain((v) => call(isBlockedStatus: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get clientRequirementStatus =>
      $value.clientRequirementStatus?.copyWith
          .$chain((v) => call(clientRequirementStatus: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get teamRequirementStatus =>
      $value.teamRequirementStatus?.copyWith
          .$chain((v) => call(teamRequirementStatus: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get isIocaineStatus =>
      $value.isIocaineStatus?.copyWith.$chain((v) => call(isIocaineStatus: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get priorityStatus =>
      $value.priorityStatus?.copyWith.$chain((v) => call(priorityStatus: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get severityStatus =>
      $value.severityStatus?.copyWith.$chain((v) => call(severityStatus: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get typeStatus =>
      $value.typeStatus?.copyWith.$chain((v) => call(typeStatus: v));
  @override
  PointDifferenceCopyWith<$R, PointDifference, PointDifference>?
      get storyPoints =>
          $value.storyPoints?.copyWith.$chain((v) => call(storyPoints: v));
  @override
  FromToCopyWith<$R, FromTo, FromTo>? get name =>
      $value.name?.copyWith.$chain((v) => call(name: v));
  @override
  $R call(
          {Object? attachments = $none,
          Object? assignedToJob = $none,
          Object? assignedToUserStory = $none,
          Object? dueDate = $none,
          Object? status = $none,
          Object? relatedSprint = $none,
          Object? promotedTo = $none,
          Object? changeTags = $none,
          Object? descriptionDiff = $none,
          Object? kanbanOrder = $none,
          Object? finishDate = $none,
          Object? blockedNoteDiff = $none,
          Object? blockedNoteHtml = $none,
          Object? customAttributes = $none,
          Object? isClosedStatus = $none,
          Object? isBlockedStatus = $none,
          Object? clientRequirementStatus = $none,
          Object? teamRequirementStatus = $none,
          Object? isIocaineStatus = $none,
          Object? priorityStatus = $none,
          Object? severityStatus = $none,
          Object? typeStatus = $none,
          Object? storyPoints = $none,
          Object? name = $none}) =>
      $apply(FieldCopyWithData({
        if (attachments != $none) #attachments: attachments,
        if (assignedToJob != $none) #assignedToJob: assignedToJob,
        if (assignedToUserStory != $none)
          #assignedToUserStory: assignedToUserStory,
        if (dueDate != $none) #dueDate: dueDate,
        if (status != $none) #status: status,
        if (relatedSprint != $none) #relatedSprint: relatedSprint,
        if (promotedTo != $none) #promotedTo: promotedTo,
        if (changeTags != $none) #changeTags: changeTags,
        if (descriptionDiff != $none) #descriptionDiff: descriptionDiff,
        if (kanbanOrder != $none) #kanbanOrder: kanbanOrder,
        if (finishDate != $none) #finishDate: finishDate,
        if (blockedNoteDiff != $none) #blockedNoteDiff: blockedNoteDiff,
        if (blockedNoteHtml != $none) #blockedNoteHtml: blockedNoteHtml,
        if (customAttributes != $none) #customAttributes: customAttributes,
        if (isClosedStatus != $none) #isClosedStatus: isClosedStatus,
        if (isBlockedStatus != $none) #isBlockedStatus: isBlockedStatus,
        if (clientRequirementStatus != $none)
          #clientRequirementStatus: clientRequirementStatus,
        if (teamRequirementStatus != $none)
          #teamRequirementStatus: teamRequirementStatus,
        if (isIocaineStatus != $none) #isIocaineStatus: isIocaineStatus,
        if (priorityStatus != $none) #priorityStatus: priorityStatus,
        if (severityStatus != $none) #severityStatus: severityStatus,
        if (typeStatus != $none) #typeStatus: typeStatus,
        if (storyPoints != $none) #storyPoints: storyPoints,
        if (name != $none) #name: name
      }));
  @override
  TaigaChangeDifference $make(CopyWithData data) => TaigaChangeDifference(
      attachments: data.get(#attachments, or: $value.attachments),
      assignedToJob: data.get(#assignedToJob, or: $value.assignedToJob),
      assignedToUserStory:
          data.get(#assignedToUserStory, or: $value.assignedToUserStory),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      status: data.get(#status, or: $value.status),
      relatedSprint: data.get(#relatedSprint, or: $value.relatedSprint),
      promotedTo: data.get(#promotedTo, or: $value.promotedTo),
      changeTags: data.get(#changeTags, or: $value.changeTags),
      descriptionDiff: data.get(#descriptionDiff, or: $value.descriptionDiff),
      kanbanOrder: data.get(#kanbanOrder, or: $value.kanbanOrder),
      finishDate: data.get(#finishDate, or: $value.finishDate),
      blockedNoteDiff: data.get(#blockedNoteDiff, or: $value.blockedNoteDiff),
      blockedNoteHtml: data.get(#blockedNoteHtml, or: $value.blockedNoteHtml),
      customAttributes:
          data.get(#customAttributes, or: $value.customAttributes),
      isClosedStatus: data.get(#isClosedStatus, or: $value.isClosedStatus),
      isBlockedStatus: data.get(#isBlockedStatus, or: $value.isBlockedStatus),
      clientRequirementStatus: data.get(#clientRequirementStatus,
          or: $value.clientRequirementStatus),
      teamRequirementStatus:
          data.get(#teamRequirementStatus, or: $value.teamRequirementStatus),
      isIocaineStatus: data.get(#isIocaineStatus, or: $value.isIocaineStatus),
      priorityStatus: data.get(#priorityStatus, or: $value.priorityStatus),
      severityStatus: data.get(#severityStatus, or: $value.severityStatus),
      typeStatus: data.get(#typeStatus, or: $value.typeStatus),
      storyPoints: data.get(#storyPoints, or: $value.storyPoints),
      name: data.get(#name, or: $value.name));

  @override
  TaigaChangeDifferenceCopyWith<$R2, TaigaChangeDifference, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TaigaChangeDifferenceCopyWithImpl($value, $cast, t);
}

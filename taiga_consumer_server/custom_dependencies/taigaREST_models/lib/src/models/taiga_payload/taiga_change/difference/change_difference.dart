import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/diff_attachments/attachments_change.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/diff_custom_values/diff_custom_fields.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/from_to/from_to.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/point_difference/point_difference.dart';

part 'change_difference.mapper.dart';

/// When a change is committed, will be storage in this class. Can be any type
/// of change made inside of a Taiga project
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaChangeDifference with TaigaChangeDifferenceMappable {
  /// Constructor of the TaigaChangeDifference class
  TaigaChangeDifference({
    this.attachments,
    this.assignedToJob,
    this.assignedToUserStory,
    this.dueDate,
    this.status,
    this.relatedSprint,
    this.promotedTo,
    this.changeTags,
    this.descriptionDiff,
    this.kanbanOrder,
    this.finishDate,
    this.blockedNoteDiff,
    this.blockedNoteHtml,
    this.customAttributes,
    this.isClosedStatus,
    this.isBlockedStatus,
    this.clientRequirementStatus,
    this.teamRequirementStatus,
    this.isIocaineStatus,
    this.priorityStatus,
    this.severityStatus,
    this.typeStatus,
    this.storyPoints,
    this.name,
  });

  /// `attachments:` Storage changes made to the attachments. It has his custom
  /// class to storage the changes, divided on sections, new, deleted and
  /// changed. Its an [AttachmentsChange] instance.
  AttachmentsChange? attachments;

  /// [FromTo] Instance. <br>
  /// `assignedTo:` Storage changes made on the guy assigned to the job, will
  /// storage the old value that can came as null or `full name` and the new 
  /// one, also can be null or `full name`.
  @MappableField(key: 'assigned_to')
  FromTo? assignedToJob;

  /// [FromTo] Instance. <br>
  /// `assignedUserStory:` Storage changes made on the guy assigned to and 
  /// `userStory`, this will storage the old value that can came as null or 
  /// userId and the new one,
  /// also can be null or userId.
  @MappableField(key: 'assigned_users')
  FromTo? assignedToUserStory;

  /// [FromTo] Instance. <br>
  /// `dueDate:` Storage changes made into the due date of the job, will storage
  /// the old value and the new one. Both cases can be a `null` value, or type
  /// `DateTime`.
  FromTo? dueDate;

  /// [FromTo] Instance. <br>
  /// `status:` Storage changes made into the status of the job, will storage
  /// the old value and the new one.
  FromTo? status;

  /// [FromTo] Instance. <br>
  /// `relatedSprint:` Storage changes made into the sprint of the job, will
  /// storage the old value and the new one. Both cases can be null, or type
  /// sprintId.
  @MappableField(key: 'milestone')
  FromTo? relatedSprint;

  /// [FromTo] Instance. <br>
  /// `promotedTo` Will If this is promoted into a new userStory for example
  /// this will have the old values can be others 'userStory' ids, or `null`,
  /// and the new ones will be an `id` from a `userStory`.
  FromTo? promotedTo;

  /// [FromTo] Instance. <br>
  /// `changeTags:` Storage the changes made into the `Tags` of one job, this
  /// will storage all the tags and the change committed, saving the old Tag
  /// List, and the new one after the change.
  @MappableField(key: 'tags')
  FromTo? changeTags;

  /// `descriptionDiff:` Storage the changes made into the description of a job.
  /// <br>
  /// This value can't be saved because always came as 'Check the history API
  /// for the exact diff' there is no useful data actually.
  String? descriptionDiff;

  /// [FromTo] Instance. <br>
  /// `isClosedStatus:` Storage the changes made into the `isClosed` bool status
  /// . This will storage the old and the new value, in this case both values
  /// will be a `Bool`, so can be `True` or `False`.
  @MappableField(key: 'is_closed')
  FromTo? isClosedStatus;

  /// [FromTo] Instance. <br>
  /// `isBlockedStatus:` Storage the changes made into blocked status. <br>
  /// This will storage the old and the new value, in this case both values will
  /// be a `Bool`, so can be `True` or `False`.
  @MappableField(key: 'is_blocked')
  FromTo? isBlockedStatus;

  /// [FromTo] Instance. <br>
  /// `blockedNoteDiff:` Storage the changes made into the blocked note, will
  /// receive the old value, and the new one on a [FromTo] object type.
  FromTo? blockedNoteDiff;

  /// [FromTo] Instance. <br>
  /// `blockedNoteHtml:` Storage the changes made into the blockedNote on html
  /// format.<br>
  /// <h4> Example: </h4>
  /// Blocked Note: Its blocked because we don't need this now <br>
  /// Blocked NoteHTML: < p> Its blocked because we don't need this now < /p>

  FromTo? blockedNoteHtml;

  /// [FromTo] Instance. <br>
  /// `finishDate:` Storage the changes made into the finish date of the job,
  /// will storage the old value and the new one. Both cases can be `null`, or
  /// type `DateTime`.
  FromTo? finishDate;

  /// [FromTo] Instance. <br>
  /// `kanbanOrder:` Change made into the kanban board order. will storage the
  /// old value and the new one.
  FromTo? kanbanOrder;

  /// [FromTo] Instance. <br>
  /// `clientRequirementStatus:` Storage the change made into the status of
  /// Client Requirement. This will storage the old and the new value, in this
  /// case both values will be a `Bool`, so it can be /// `True` or `False`.
  @MappableField(key: 'client_requirement')
  FromTo? clientRequirementStatus;

  /// [FromTo] Instance. <br>
  /// `teamRequirementStatus:` Storage the changes made into the status of
  /// Team Requirement. This will storage the old and the new value, in this
  /// case both values will be a `Bool`, so can be `True` or `False`.
  @MappableField(key: 'team_requirement')
  FromTo? teamRequirementStatus;

  /// [FromTo] Instance. <br>
  /// Change made into Iocaine status. This will storage the
  /// old and the new value, in this case both values will be a [bool], so can
  /// be `True` or `False`
  @MappableField(key: 'is_iocaine')
  FromTo? isIocaineStatus;

  /// [FromTo] Instance. <br>
  /// `priorityStatus:` Storage the changes made into the `priority`. <br>
  /// This will storage the old and the new value. This are customizable values
  /// that are [String] type.
  @MappableField(key: 'priority')
  FromTo? priorityStatus;

  /// [FromTo] Instance. <br>
  /// `severityStatus:` Storage the changes made into the `severity`. <br>
  /// This will storage the old and the new value. This are customizable values
  /// that are [String] type.
  @MappableField(key: 'severity')
  FromTo? severityStatus;

  /// [FromTo] Instance. <br>
  /// `typeStatus:` Storage the changes made into the `type`. <br>
  /// This will storage the old and the new value. This are customizable values
  /// that are [String] type.
  @MappableField(key: 'type')
  FromTo? typeStatus;

  /// [FromTo] Instance. <br>
  /// `name:` Storage the changes made into the name of the job. This will
  /// storage the old value of the name of one job, and the new one.
  @MappableField(key: 'subject')
  FromTo? name;

  /// [CustomValuesDataChange] Instance. <br>
  /// `customAttributes:` Storage the changes made into a custom attributes,
  /// this is divided on three, new, deleted and changed. If a change is
  /// committed, will storage the difference. <br>
  /// I recommend to see the [CustomValuesDataChange] object, for more info.
  CustomValuesDataChange? customAttributes;

  /// [PointDifference] Instance. <br>
  /// Change made into the story points of an UserStory, this will be divided
  /// into Design, Back, Front, and Project Manager points, and will be saved
  /// the old value, and the new one. <br>
  /// I recommend to see the [PointDifference] object, for more info.
  @MappableField(key: 'points')
  PointDifference? storyPoints;

  /// [FromTo] Instance. <br>
  /// `htmlWikiContent:` Storage the changes made into the content of a wikipage
  /// on HTML format. This will storage the old and the new value. <br>
  /// Usually came with `< p>` tags
  @MappableField(key: 'content_html')
  FromTo? htmlWikiContent;

  /// [FromTo] Instance. <br>
  /// `wikiContent:` Storage the changes made into the content of a wikipage,
  /// this will storage the old and the new value. <br>
  /// This came as [String] but in HTML format, with custom styles, etc.
  @MappableField(key: 'content_diff')
  FromTo? wikiContent;

  /// FromJson method, convert a json type object into this
  /// TaigaChangeDifference object
  static const fromJson = TaigaChangeDifferenceMapper.fromJson;
}

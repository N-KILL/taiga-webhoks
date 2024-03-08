
import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/change_comment_version/taiga_comment_version.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/difference/change_difference.dart';

part 'taiga_change.mapper.dart';

/// This is the part of the payload which include all the changes has been made
/// if the action type is not 'change', it will came as a null value. Also
/// manage all the comment information 
@MappableClass()
class TaigaChange with TaigaChangeMappable{
  /// Constructor of the TaigaChange class
  TaigaChange({
    required this.comment,
    required this.commentHtml,
    required this.deleteCommentDate,
    required this.commentVersions,
    required this.editCommentDate,
    required this.difference,
  });

  /// `comment:` If a change was made into a comment, it will be here. 
  /// When a new comment appears it also came here. 
  String? comment;

  /// `commentHtml:` Its same as 'comment', but it came with html tags
  String? commentHtml;

  /// `deleteCommentDate:` This will have the date of deletion of a comment
  DateTime? deleteCommentDate;

  /// `commentVersions:` When you modify a comment this will storage the olds
  ///  version of the comment, and the details about
  List<TaigaCommentVersion>? commentVersions;

  /// `editCommentDate:` This will have the date of the last time someone edit a
  /// comment
  DateTime? editCommentDate;

  /// `difference:` is used to save all the differences made on this "change"
  /// type payload. Storage all types of diff. Came from `Taiga` as `diff`, and 
  /// its converted into a [TaigaChangeDifference] instance.
  @MappableField(key: 'diff')
  TaigaChangeDifference? difference;

  /// FromJson method, convert a json type object into this TaigaChange object
  static const fromJson = TaigaChangeMapper.fromJson;
}

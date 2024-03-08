import 'package:dart_mappable/dart_mappable.dart';

part 'taiga_comment_version.mapper.dart';

/// This class will storage all the changes made on a comment of taiga
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaCommentVersion with TaigaCommentVersionMappable {
  /// Construct of of the CommentVersion class
  TaigaCommentVersion({
    required this.modificationDate,
    required this.comment,
    required this.commentHtml,
    required this.userOwner,
  });

  /// Date of when the change was committed
  @MappableField(key: 'date')
  DateTime modificationDate;

  /// The comment itself
  @MappableField(key: 'date')
  String comment;

  /// The comment, but it have html tags on it
  String commentHtml;

  /// User id from the owner of the comment
  @MappableField(key: 'user')
  int? userOwner;

  /// FromJson method, convert a json type object into this
  /// TaigaCommentVersion object
  static const fromJson = TaigaCommentVersionMapper.fromJson;
}

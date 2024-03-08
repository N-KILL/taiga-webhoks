import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/models/author/author.dart';

part 'commit.mapper.dart';

/// This mappable model GitLabCommit is used to map a gitlab webhook commit 
/// information
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabCommit with GitLabCommitMappable{
  /// GitLabCommit class constructor
  GitLabCommit({
    required this.id,
    required this.message,
    required this.title,
    required this.dateOfCommit,
    required this.url,
    required this.author,
    required this.addedFiles,
    required this.modifiedFiles,
    required this.removedFiles,
  });

  /// Commit id is used to identify this commit
  String id;

  /// Its the message the author give it when he made the commit
  String message;

  /// Its the first line of a commit message
  String title;

  /// Its the date when the commit was done
  @MappableField(key: 'timestamp')
  DateTime dateOfCommit;

  /// Url to the commit on gitlab
  String url;

  /// The author of the commit is the person who did the commit
  Author author;

  /// Its a list with the name of the files who was added in this commit
  @MappableField(key: 'added')
  List<String> addedFiles;

  /// Its a list with the name of the files who was modified in this commit
  @MappableField(key: 'modified')
  List<String> modifiedFiles;

  /// Its a list with the name of the files who was removed in this commit
  @MappableField(key: 'removed')
  List<String> removedFiles;

  /// FromJson method, convert a json type object into this GitLabCommit Object
  static const fromJson = GitLabCommitMapper.fromJson;
}

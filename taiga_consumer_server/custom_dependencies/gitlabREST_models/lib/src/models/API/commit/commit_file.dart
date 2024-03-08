import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/gitlab_endpoints/gitlab_commit_manager.dart';

part 'commit_file.mapper.dart';

// TODO(Nacho): Create doc

/// This [CommitFileAPI] class, is a model used to map data for the function
/// [GitLabCommitManager.getGitLabCommitFiles] 

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CommitFileAPI with CommitFileAPIMappable {
  ///
  CommitFileAPI({
    required this.diff,
    required this.newPath,
    required this.oldPath,
    required this.aMode,
    required this.bMode,
    required this.newFile,
    required this.renamedFile,
    required this.deletedFile,
  });

  ///
  String diff;

  ///
  @MappableField(key: 'new_path')
  String newPath;

  ///
  @MappableField(key: 'old_path')
  String oldPath;

  ///
  @MappableField(key: 'a_mode')
  String aMode;

  ///
  @MappableField(key: 'b_mode')
  String bMode;

  ///
  @MappableField(key: 'new_file')
  bool newFile;

  ///
  @MappableField(key: 'renamed_file')
  bool renamedFile;

  ///
  @MappableField(key: 'deleted_file')
  bool deletedFile;

  /// FromJson method, convert a json type object into this [CommitFileAPI]
  /// Object
  static const fromJson = CommitFileAPIMapper.fromJson;
}

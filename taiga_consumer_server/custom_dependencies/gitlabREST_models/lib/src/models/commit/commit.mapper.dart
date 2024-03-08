// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'commit.dart';

class GitLabCommitMapper extends ClassMapperBase<GitLabCommit> {
  GitLabCommitMapper._();

  static GitLabCommitMapper? _instance;
  static GitLabCommitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitLabCommitMapper._());
      AuthorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GitLabCommit';

  static String _$id(GitLabCommit v) => v.id;
  static const Field<GitLabCommit, String> _f$id = Field('id', _$id);
  static String _$message(GitLabCommit v) => v.message;
  static const Field<GitLabCommit, String> _f$message =
      Field('message', _$message);
  static String _$title(GitLabCommit v) => v.title;
  static const Field<GitLabCommit, String> _f$title = Field('title', _$title);
  static DateTime _$dateOfCommit(GitLabCommit v) => v.dateOfCommit;
  static const Field<GitLabCommit, DateTime> _f$dateOfCommit =
      Field('dateOfCommit', _$dateOfCommit, key: 'timestamp');
  static String _$url(GitLabCommit v) => v.url;
  static const Field<GitLabCommit, String> _f$url = Field('url', _$url);
  static Author _$author(GitLabCommit v) => v.author;
  static const Field<GitLabCommit, Author> _f$author =
      Field('author', _$author);
  static List<String> _$addedFiles(GitLabCommit v) => v.addedFiles;
  static const Field<GitLabCommit, List<String>> _f$addedFiles =
      Field('addedFiles', _$addedFiles, key: 'added');
  static List<String> _$modifiedFiles(GitLabCommit v) => v.modifiedFiles;
  static const Field<GitLabCommit, List<String>> _f$modifiedFiles =
      Field('modifiedFiles', _$modifiedFiles, key: 'modified');
  static List<String> _$removedFiles(GitLabCommit v) => v.removedFiles;
  static const Field<GitLabCommit, List<String>> _f$removedFiles =
      Field('removedFiles', _$removedFiles, key: 'removed');

  @override
  final Map<Symbol, Field<GitLabCommit, dynamic>> fields = const {
    #id: _f$id,
    #message: _f$message,
    #title: _f$title,
    #dateOfCommit: _f$dateOfCommit,
    #url: _f$url,
    #author: _f$author,
    #addedFiles: _f$addedFiles,
    #modifiedFiles: _f$modifiedFiles,
    #removedFiles: _f$removedFiles,
  };

  static GitLabCommit _instantiate(DecodingData data) {
    return GitLabCommit(
        id: data.dec(_f$id),
        message: data.dec(_f$message),
        title: data.dec(_f$title),
        dateOfCommit: data.dec(_f$dateOfCommit),
        url: data.dec(_f$url),
        author: data.dec(_f$author),
        addedFiles: data.dec(_f$addedFiles),
        modifiedFiles: data.dec(_f$modifiedFiles),
        removedFiles: data.dec(_f$removedFiles));
  }

  @override
  final Function instantiate = _instantiate;

  static GitLabCommit fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitLabCommit>(map);
  }

  static GitLabCommit fromJson(String json) {
    return ensureInitialized().decodeJson<GitLabCommit>(json);
  }
}

mixin GitLabCommitMappable {
  String toJson() {
    return GitLabCommitMapper.ensureInitialized()
        .encodeJson<GitLabCommit>(this as GitLabCommit);
  }

  Map<String, dynamic> toMap() {
    return GitLabCommitMapper.ensureInitialized()
        .encodeMap<GitLabCommit>(this as GitLabCommit);
  }

  GitLabCommitCopyWith<GitLabCommit, GitLabCommit, GitLabCommit> get copyWith =>
      _GitLabCommitCopyWithImpl(this as GitLabCommit, $identity, $identity);
  @override
  String toString() {
    return GitLabCommitMapper.ensureInitialized()
        .stringifyValue(this as GitLabCommit);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GitLabCommitMapper.ensureInitialized()
                .isValueEqual(this as GitLabCommit, other));
  }

  @override
  int get hashCode {
    return GitLabCommitMapper.ensureInitialized()
        .hashValue(this as GitLabCommit);
  }
}

extension GitLabCommitValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GitLabCommit, $Out> {
  GitLabCommitCopyWith<$R, GitLabCommit, $Out> get $asGitLabCommit =>
      $base.as((v, t, t2) => _GitLabCommitCopyWithImpl(v, t, t2));
}

abstract class GitLabCommitCopyWith<$R, $In extends GitLabCommit, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  AuthorCopyWith<$R, Author, Author> get author;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get addedFiles;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get modifiedFiles;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get removedFiles;
  $R call(
      {String? id,
      String? message,
      String? title,
      DateTime? dateOfCommit,
      String? url,
      Author? author,
      List<String>? addedFiles,
      List<String>? modifiedFiles,
      List<String>? removedFiles});
  GitLabCommitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GitLabCommitCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GitLabCommit, $Out>
    implements GitLabCommitCopyWith<$R, GitLabCommit, $Out> {
  _GitLabCommitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GitLabCommit> $mapper =
      GitLabCommitMapper.ensureInitialized();
  @override
  AuthorCopyWith<$R, Author, Author> get author =>
      $value.author.copyWith.$chain((v) => call(author: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get addedFiles =>
      ListCopyWith($value.addedFiles, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(addedFiles: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get modifiedFiles => ListCopyWith(
          $value.modifiedFiles,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(modifiedFiles: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get removedFiles => ListCopyWith(
          $value.removedFiles,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(removedFiles: v));
  @override
  $R call(
          {String? id,
          String? message,
          String? title,
          DateTime? dateOfCommit,
          String? url,
          Author? author,
          List<String>? addedFiles,
          List<String>? modifiedFiles,
          List<String>? removedFiles}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (message != null) #message: message,
        if (title != null) #title: title,
        if (dateOfCommit != null) #dateOfCommit: dateOfCommit,
        if (url != null) #url: url,
        if (author != null) #author: author,
        if (addedFiles != null) #addedFiles: addedFiles,
        if (modifiedFiles != null) #modifiedFiles: modifiedFiles,
        if (removedFiles != null) #removedFiles: removedFiles
      }));
  @override
  GitLabCommit $make(CopyWithData data) => GitLabCommit(
      id: data.get(#id, or: $value.id),
      message: data.get(#message, or: $value.message),
      title: data.get(#title, or: $value.title),
      dateOfCommit: data.get(#dateOfCommit, or: $value.dateOfCommit),
      url: data.get(#url, or: $value.url),
      author: data.get(#author, or: $value.author),
      addedFiles: data.get(#addedFiles, or: $value.addedFiles),
      modifiedFiles: data.get(#modifiedFiles, or: $value.modifiedFiles),
      removedFiles: data.get(#removedFiles, or: $value.removedFiles));

  @override
  GitLabCommitCopyWith<$R2, GitLabCommit, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GitLabCommitCopyWithImpl($value, $cast, t);
}

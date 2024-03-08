// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'commit_file.dart';

class CommitFileAPIMapper extends ClassMapperBase<CommitFileAPI> {
  CommitFileAPIMapper._();

  static CommitFileAPIMapper? _instance;
  static CommitFileAPIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CommitFileAPIMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CommitFileAPI';

  static String _$diff(CommitFileAPI v) => v.diff;
  static const Field<CommitFileAPI, String> _f$diff = Field('diff', _$diff);
  static String _$newPath(CommitFileAPI v) => v.newPath;
  static const Field<CommitFileAPI, String> _f$newPath =
      Field('newPath', _$newPath, key: 'new_path');
  static String _$oldPath(CommitFileAPI v) => v.oldPath;
  static const Field<CommitFileAPI, String> _f$oldPath =
      Field('oldPath', _$oldPath, key: 'old_path');
  static String _$aMode(CommitFileAPI v) => v.aMode;
  static const Field<CommitFileAPI, String> _f$aMode =
      Field('aMode', _$aMode, key: 'a_mode');
  static String _$bMode(CommitFileAPI v) => v.bMode;
  static const Field<CommitFileAPI, String> _f$bMode =
      Field('bMode', _$bMode, key: 'b_mode');
  static bool _$newFile(CommitFileAPI v) => v.newFile;
  static const Field<CommitFileAPI, bool> _f$newFile =
      Field('newFile', _$newFile, key: 'new_file');
  static bool _$renamedFile(CommitFileAPI v) => v.renamedFile;
  static const Field<CommitFileAPI, bool> _f$renamedFile =
      Field('renamedFile', _$renamedFile, key: 'renamed_file');
  static bool _$deletedFile(CommitFileAPI v) => v.deletedFile;
  static const Field<CommitFileAPI, bool> _f$deletedFile =
      Field('deletedFile', _$deletedFile, key: 'deleted_file');

  @override
  final Map<Symbol, Field<CommitFileAPI, dynamic>> fields = const {
    #diff: _f$diff,
    #newPath: _f$newPath,
    #oldPath: _f$oldPath,
    #aMode: _f$aMode,
    #bMode: _f$bMode,
    #newFile: _f$newFile,
    #renamedFile: _f$renamedFile,
    #deletedFile: _f$deletedFile,
  };

  static CommitFileAPI _instantiate(DecodingData data) {
    return CommitFileAPI(
        diff: data.dec(_f$diff),
        newPath: data.dec(_f$newPath),
        oldPath: data.dec(_f$oldPath),
        aMode: data.dec(_f$aMode),
        bMode: data.dec(_f$bMode),
        newFile: data.dec(_f$newFile),
        renamedFile: data.dec(_f$renamedFile),
        deletedFile: data.dec(_f$deletedFile));
  }

  @override
  final Function instantiate = _instantiate;

  static CommitFileAPI fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CommitFileAPI>(map);
  }

  static CommitFileAPI fromJson(String json) {
    return ensureInitialized().decodeJson<CommitFileAPI>(json);
  }
}

mixin CommitFileAPIMappable {
  String toJson() {
    return CommitFileAPIMapper.ensureInitialized()
        .encodeJson<CommitFileAPI>(this as CommitFileAPI);
  }

  Map<String, dynamic> toMap() {
    return CommitFileAPIMapper.ensureInitialized()
        .encodeMap<CommitFileAPI>(this as CommitFileAPI);
  }

  CommitFileAPICopyWith<CommitFileAPI, CommitFileAPI, CommitFileAPI>
      get copyWith => _CommitFileAPICopyWithImpl(
          this as CommitFileAPI, $identity, $identity);
  @override
  String toString() {
    return CommitFileAPIMapper.ensureInitialized()
        .stringifyValue(this as CommitFileAPI);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CommitFileAPIMapper.ensureInitialized()
                .isValueEqual(this as CommitFileAPI, other));
  }

  @override
  int get hashCode {
    return CommitFileAPIMapper.ensureInitialized()
        .hashValue(this as CommitFileAPI);
  }
}

extension CommitFileAPIValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CommitFileAPI, $Out> {
  CommitFileAPICopyWith<$R, CommitFileAPI, $Out> get $asCommitFileAPI =>
      $base.as((v, t, t2) => _CommitFileAPICopyWithImpl(v, t, t2));
}

abstract class CommitFileAPICopyWith<$R, $In extends CommitFileAPI, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? diff,
      String? newPath,
      String? oldPath,
      String? aMode,
      String? bMode,
      bool? newFile,
      bool? renamedFile,
      bool? deletedFile});
  CommitFileAPICopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CommitFileAPICopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CommitFileAPI, $Out>
    implements CommitFileAPICopyWith<$R, CommitFileAPI, $Out> {
  _CommitFileAPICopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CommitFileAPI> $mapper =
      CommitFileAPIMapper.ensureInitialized();
  @override
  $R call(
          {String? diff,
          String? newPath,
          String? oldPath,
          String? aMode,
          String? bMode,
          bool? newFile,
          bool? renamedFile,
          bool? deletedFile}) =>
      $apply(FieldCopyWithData({
        if (diff != null) #diff: diff,
        if (newPath != null) #newPath: newPath,
        if (oldPath != null) #oldPath: oldPath,
        if (aMode != null) #aMode: aMode,
        if (bMode != null) #bMode: bMode,
        if (newFile != null) #newFile: newFile,
        if (renamedFile != null) #renamedFile: renamedFile,
        if (deletedFile != null) #deletedFile: deletedFile
      }));
  @override
  CommitFileAPI $make(CopyWithData data) => CommitFileAPI(
      diff: data.get(#diff, or: $value.diff),
      newPath: data.get(#newPath, or: $value.newPath),
      oldPath: data.get(#oldPath, or: $value.oldPath),
      aMode: data.get(#aMode, or: $value.aMode),
      bMode: data.get(#bMode, or: $value.bMode),
      newFile: data.get(#newFile, or: $value.newFile),
      renamedFile: data.get(#renamedFile, or: $value.renamedFile),
      deletedFile: data.get(#deletedFile, or: $value.deletedFile));

  @override
  CommitFileAPICopyWith<$R2, CommitFileAPI, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CommitFileAPICopyWithImpl($value, $cast, t);
}

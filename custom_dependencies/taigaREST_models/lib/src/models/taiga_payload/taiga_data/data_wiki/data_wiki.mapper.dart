// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'data_wiki.dart';

class TaigaWikiPageDataMapper extends ClassMapperBase<TaigaWikiPageData> {
  TaigaWikiPageDataMapper._();

  static TaigaWikiPageDataMapper? _instance;
  static TaigaWikiPageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TaigaWikiPageDataMapper._());
      TaigaProjectMapper.ensureInitialized();
      TaigaUserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TaigaWikiPageData';

  static int _$id(TaigaWikiPageData v) => v.id;
  static const Field<TaigaWikiPageData, int> _f$id = Field('id', _$id);
  static String _$wikiSlug(TaigaWikiPageData v) => v.wikiSlug;
  static const Field<TaigaWikiPageData, String> _f$wikiSlug =
      Field('wikiSlug', _$wikiSlug, key: 'slug');
  static String _$content(TaigaWikiPageData v) => v.content;
  static const Field<TaigaWikiPageData, String> _f$content =
      Field('content', _$content);
  static String _$creationDate(TaigaWikiPageData v) => v.creationDate;
  static const Field<TaigaWikiPageData, String> _f$creationDate =
      Field('creationDate', _$creationDate, key: 'created_date');
  static String _$modifiedDate(TaigaWikiPageData v) => v.modifiedDate;
  static const Field<TaigaWikiPageData, String> _f$modifiedDate =
      Field('modifiedDate', _$modifiedDate, key: 'modified_date');
  static String _$permalink(TaigaWikiPageData v) => v.permalink;
  static const Field<TaigaWikiPageData, String> _f$permalink =
      Field('permalink', _$permalink);
  static TaigaProject _$relatedProject(TaigaWikiPageData v) => v.relatedProject;
  static const Field<TaigaWikiPageData, TaigaProject> _f$relatedProject =
      Field('relatedProject', _$relatedProject, key: 'project');
  static TaigaUser _$userOwner(TaigaWikiPageData v) => v.userOwner;
  static const Field<TaigaWikiPageData, TaigaUser> _f$userOwner =
      Field('userOwner', _$userOwner, key: 'owner');
  static TaigaUser _$lastUserModifier(TaigaWikiPageData v) =>
      v.lastUserModifier;
  static const Field<TaigaWikiPageData, TaigaUser> _f$lastUserModifier =
      Field('lastUserModifier', _$lastUserModifier, key: 'last_modifier');

  @override
  final Map<Symbol, Field<TaigaWikiPageData, dynamic>> fields = const {
    #id: _f$id,
    #wikiSlug: _f$wikiSlug,
    #content: _f$content,
    #creationDate: _f$creationDate,
    #modifiedDate: _f$modifiedDate,
    #permalink: _f$permalink,
    #relatedProject: _f$relatedProject,
    #userOwner: _f$userOwner,
    #lastUserModifier: _f$lastUserModifier,
  };

  static TaigaWikiPageData _instantiate(DecodingData data) {
    return TaigaWikiPageData(
        id: data.dec(_f$id),
        wikiSlug: data.dec(_f$wikiSlug),
        content: data.dec(_f$content),
        creationDate: data.dec(_f$creationDate),
        modifiedDate: data.dec(_f$modifiedDate),
        permalink: data.dec(_f$permalink),
        relatedProject: data.dec(_f$relatedProject),
        userOwner: data.dec(_f$userOwner),
        lastUserModifier: data.dec(_f$lastUserModifier));
  }

  @override
  final Function instantiate = _instantiate;

  static TaigaWikiPageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TaigaWikiPageData>(map);
  }

  static TaigaWikiPageData fromJson(String json) {
    return ensureInitialized().decodeJson<TaigaWikiPageData>(json);
  }
}

mixin TaigaWikiPageDataMappable {
  String toJson() {
    return TaigaWikiPageDataMapper.ensureInitialized()
        .encodeJson<TaigaWikiPageData>(this as TaigaWikiPageData);
  }

  Map<String, dynamic> toMap() {
    return TaigaWikiPageDataMapper.ensureInitialized()
        .encodeMap<TaigaWikiPageData>(this as TaigaWikiPageData);
  }

  TaigaWikiPageDataCopyWith<TaigaWikiPageData, TaigaWikiPageData,
          TaigaWikiPageData>
      get copyWith => _TaigaWikiPageDataCopyWithImpl(
          this as TaigaWikiPageData, $identity, $identity);
  @override
  String toString() {
    return TaigaWikiPageDataMapper.ensureInitialized()
        .stringifyValue(this as TaigaWikiPageData);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TaigaWikiPageDataMapper.ensureInitialized()
                .isValueEqual(this as TaigaWikiPageData, other));
  }

  @override
  int get hashCode {
    return TaigaWikiPageDataMapper.ensureInitialized()
        .hashValue(this as TaigaWikiPageData);
  }
}

extension TaigaWikiPageDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TaigaWikiPageData, $Out> {
  TaigaWikiPageDataCopyWith<$R, TaigaWikiPageData, $Out>
      get $asTaigaWikiPageData =>
          $base.as((v, t, t2) => _TaigaWikiPageDataCopyWithImpl(v, t, t2));
}

abstract class TaigaWikiPageDataCopyWith<$R, $In extends TaigaWikiPageData,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get relatedProject;
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get userOwner;
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get lastUserModifier;
  $R call(
      {int? id,
      String? wikiSlug,
      String? content,
      String? creationDate,
      String? modifiedDate,
      String? permalink,
      TaigaProject? relatedProject,
      TaigaUser? userOwner,
      TaigaUser? lastUserModifier});
  TaigaWikiPageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TaigaWikiPageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TaigaWikiPageData, $Out>
    implements TaigaWikiPageDataCopyWith<$R, TaigaWikiPageData, $Out> {
  _TaigaWikiPageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TaigaWikiPageData> $mapper =
      TaigaWikiPageDataMapper.ensureInitialized();
  @override
  TaigaProjectCopyWith<$R, TaigaProject, TaigaProject> get relatedProject =>
      $value.relatedProject.copyWith.$chain((v) => call(relatedProject: v));
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get userOwner =>
      $value.userOwner.copyWith.$chain((v) => call(userOwner: v));
  @override
  TaigaUserCopyWith<$R, TaigaUser, TaigaUser> get lastUserModifier =>
      $value.lastUserModifier.copyWith.$chain((v) => call(lastUserModifier: v));
  @override
  $R call(
          {int? id,
          String? wikiSlug,
          String? content,
          String? creationDate,
          String? modifiedDate,
          String? permalink,
          TaigaProject? relatedProject,
          TaigaUser? userOwner,
          TaigaUser? lastUserModifier}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (wikiSlug != null) #wikiSlug: wikiSlug,
        if (content != null) #content: content,
        if (creationDate != null) #creationDate: creationDate,
        if (modifiedDate != null) #modifiedDate: modifiedDate,
        if (permalink != null) #permalink: permalink,
        if (relatedProject != null) #relatedProject: relatedProject,
        if (userOwner != null) #userOwner: userOwner,
        if (lastUserModifier != null) #lastUserModifier: lastUserModifier
      }));
  @override
  TaigaWikiPageData $make(CopyWithData data) => TaigaWikiPageData(
      id: data.get(#id, or: $value.id),
      wikiSlug: data.get(#wikiSlug, or: $value.wikiSlug),
      content: data.get(#content, or: $value.content),
      creationDate: data.get(#creationDate, or: $value.creationDate),
      modifiedDate: data.get(#modifiedDate, or: $value.modifiedDate),
      permalink: data.get(#permalink, or: $value.permalink),
      relatedProject: data.get(#relatedProject, or: $value.relatedProject),
      userOwner: data.get(#userOwner, or: $value.userOwner),
      lastUserModifier:
          data.get(#lastUserModifier, or: $value.lastUserModifier));

  @override
  TaigaWikiPageDataCopyWith<$R2, TaigaWikiPageData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TaigaWikiPageDataCopyWithImpl($value, $cast, t);
}

import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_project/taiga_project.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_user/taiga_user.dart';

part 'data_wiki.mapper.dart';

/// This class is used to map the wiki of Taiga which is used to create
/// documentation of all the project.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaWikiPageData with TaigaWikiPageDataMappable {
  /// Constructor of DataWikiPage Class
  TaigaWikiPageData({
    required this.id,
    required this.wikiSlug,
    required this.content,
    required this.creationDate,
    required this.modifiedDate,
    required this.permalink,
    required this.relatedProject,
    required this.userOwner,
    required this.lastUserModifier,
  });

  /// `id:` This is the Id of the Wikipage, from `Taiga`
  int id;

  /// `wikiSlug:` `slug` it's a human-readable part of a URL that identifies a 
  /// particular resource, are usually created by converting text into a 
  /// URL-friendly format, often by replacing spaces and special characters 
  /// with dashes or underscores, removing accents, and converting the text to 
  /// lowercase. <br>
  /// <h4>In this case its means the las part of the url of Taiga. Example: </h4>
  /// `https://tree.taiga.io/project/<project-name>/wiki/<slug>`
  @MappableField(key: 'slug')
  String wikiSlug;

  /// `content:` This is the content of the `wiki`, it includes all the text 
  /// that the `wiki` has written. If the content is empty, this can came as an 
  /// string: `""`
  String content;

  /// `creationDate:` This is the date when the wiki was created
  @MappableField(key: 'created_date')
  String creationDate;

  /// `modifiedDate:` This is the date when the wiki receive a modification 
  /// last time
  String modifiedDate;

  /// `permalink:` This is the permanent link to the `Taiga` page of this `wiki`
  String permalink;

  /// `relatedProject:` This is the details of the project related to this 
  /// `wiki`
  @MappableField(key: 'project')
  TaigaProject relatedProject;

  /// `userOwner:` This is the owner of the `wiki`
  @MappableField(key: 'owner')
  TaigaUser userOwner;

  /// `lastUserModifier:` This is the last user who perform a modification into 
  /// the `wiki`
  @MappableField(key: 'last_modifier')
  TaigaUser lastUserModifier;

  /// FromJson method, convert a json type object into this DataWikiPage
  /// object
  static const fromJson = TaigaWikiPageDataMapper.fromJson;
}

import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_change/taiga_change.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_sprint/data_sprint.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/data_wiki/data_wiki.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_data/taiga_data.dart';
import 'package:taiga_rest_models/src/models/taiga_payload/taiga_user/taiga_user.dart';

part 'taiga_payload.mapper.dart';

/// This Class is for grabbing the data which came on a Taiga Payload, and turn
/// it into an usable Dart object, with all the data it has. <br><br>
/// In this case this model includes all the basic stuff, like the type of 
/// action which has been made on Taiga, the type of Job related to the action,
/// the user who made the action, the date when the action has been done,
/// all the data related to the action (This is custom for each jobType), also
/// if the type of action is "change", will receive the information in the
/// "change" variable. <br><br>
/// For more info about, check Taiga webhooks official doc: <br>
/// https://docs.taiga.io/webhooks.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaPayload with TaigaPayloadMappable {
  /// This is the Constructor of TaigaPayload
  TaigaPayload({
    required this.actionType,
    required this.jobType,
    required this.performer,
    required this.date,
    required this.data,
    required this.change,
  }) {
    // This will generate the dataType correct for data based on the jobType
    // reading the data as Map<String, dynamic> first, then encode the data
    // into a json and calling the fromJson method inside of each dataType.
    switch (jobType) {
      case 'issue':
        data = TaigaIssueData.fromJson(jsonEncode(data));
      case 'userstory':
        data = TaigaUserStoryData.fromJson(jsonEncode(data));
      case 'task':
        data = TaigaTaskData.fromJson(jsonEncode(data));
      case 'epic':
        data = TaigaEpicData.fromJson(jsonEncode(data));
      case 'milestone':
        data = TaigaSprintData.fromJson(jsonEncode(data));
      case 'wikipage':
        data = TaigaWikiPageData.fromJson(jsonEncode(data));
    }
  }

  /// `actionType:` It is the type of action that was carried out in Taiga,
  /// this can be of type: Create, Delete or Change for each `jobType`
  @MappableField(key: 'action')
  String actionType;

  /// `jobType:` It is the type of work related to Taiga, it can and can be of 
  /// the following types: `Issue`, `UserStory`, `Task`, `Epics`, `Milestone 
  /// (Sprint)` and `WikiPage`.
  @MappableField(key: 'type')
  String jobType;

  /// `performer:` Is the user who made the action related to this payload. <br>
  /// Came as `by` from taiga, and its converted into a `TaigaUser` object type.
  @MappableField(key: 'by')
  TaigaUser performer;

  /// `Date:` This is the date when the action of this payload was performed
  DateTime date;

  /// `data:` Is the most important part of the Payload, this include all the
  /// information of the action made, and its a different object based on his
  /// `jobType`. <br>
  /// The types of object can be the next: <br>
  /// [TaigaIssueData] <br>
  /// [TaigaUserStoryData] <br>
  /// [TaigaTaskData] <br>
  /// [TaigaEpicData] <br>
  /// [TaigaSprintData] <br>
  /// [TaigaWikiPageData] <br>
  dynamic data;

  /// This is the changes that were made on this payload, this only exist if the
  /// `actionType` is `change`, otherwise it will be null. <br>
  /// This is converted into a `TaigaChange` object. And map all the types off 
  /// changes in that one object
  TaigaChange? change;

  /// FromJson method, convert a json type object into this TaigaPayload
  /// object
  static const fromJson = TaigaPayloadMapper.fromJson;
}

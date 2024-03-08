import 'package:dart_mappable/dart_mappable.dart';

part 'taiga_status.mapper.dart';

/// This class is for save an status record of the job in the payload, according
/// to your project configuration.
/// <h4> If you need more info about hot to customize status on a taiga
/// project:</h4>
/// https://taiga.pm/status/
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TaigaStatus with TaigaStatusMappable {
  /// Constructor for the class Status
  TaigaStatus({
    required this.statusId,
    required this.statusName,
    required this.statusSlug,
    required this.statusColor,
    required this.isClosedStatus,
  });

  /// `statusId:` This is the `Id` of the `Status` on `Taiga`. <Br>
  /// <h4> If you need more info about hot to customize status on a taiga
  /// project:</h4>
  /// https://taiga.pm/status/
  @MappableField(key: 'id')
  int statusId;

  /// `statusName:` Its the assigned name to the `Status` on Taiga<Br>
  /// <h4> If you need more info about hot to customize status on a taiga
  /// project:</h4>
  /// https://taiga.pm/status/
  @MappableField(key: 'name')
  String statusName;

  /// "slug" it's a human-readable part of a URL that identifies a particular
  /// resource, are usually created by converting text into a URL-friendly
  /// format, often by replacing spaces and special characters with dashes or
  /// underscores, removing accents, and converting the text to lowercase. <br>
  /// <br>
  /// In this case its the name with hyphens and lowercase, Example: <br>
  /// Normal name: Status NEW
  /// Slug name: status-new
  @MappableField(key: 'slug')
  String statusSlug;

  /// `statusColor:` Is the color assigned to the `Status` on Taiga <Br>
  /// <h4> If you need more info about hot to customize status on a taiga
  /// project:</h4>
  /// https://taiga.pm/status/
  @MappableField(key: 'color')
  String statusColor;

  /// `isClosedStatus:` Its a bool indicating if the Job is Closed or not, this
  /// value depend on the configuration you give to the status in your project.
  /// <Br>
  /// <h4> If you need more info about hot to customize status on a taiga
  /// project:</h4>
  /// https://taiga.pm/status/
  @MappableField(key: 'is_closed')
  bool isClosedStatus;

  /// FromJson method, convert a json type object into this TaigaStatus Object
  static const fromJson = TaigaStatusMapper.fromJson;
}

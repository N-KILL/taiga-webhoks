import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/models/change/change.dart';
import 'package:gitlab_rest_models/src/models/issue_details/issue_details.dart';
import 'package:gitlab_rest_models/src/models/labels/labels.dart';
import 'package:gitlab_rest_models/src/models/project/project.dart';
import 'package:gitlab_rest_models/src/models/repository/repository.dart';
import 'package:gitlab_rest_models/src/models/user/gitlab_user.dart';

part 'gitlab_issue.mapper.dart';

/// This class is used to map the data which comes from GitLab Webhook related
/// to an issue, for more info, follow the links:
/// https://docs.gitlab.com/ee/user/project/integrations/webhooks.html
/// https://docs.gitlab.com/ee/user/project/integrations/webhook_events.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabIssuePayload with GitLabIssuePayloadMappable {
  /// GitLabIssuePayload class constructor 
  GitLabIssuePayload({
    required this.operationType,
    required this.eventType,
    required this.performer,
    required this.projectDetails,
    required this.issueDetails,
    required this.labels,
    required this.changes,
    required this.relatedRepository,
  });

  ///
  @MappableField(key: 'object_kind')
  String operationType;

  /// Event type given from gitlab, in most of the cases it will be the same as
  /// the operationType
  String eventType;

  /// This is a user instance, will grab the info about who triggered the
  /// webhook
  @MappableField(key: 'user')
  GitLabUser performer;

  /// Details of the project related to this webhook payload
  @MappableField(key: 'project')
  GitLabProject projectDetails;

  /// This brings all the data  related to th issue
  @MappableField(key: 'object_attributes')
  IssueDetails issueDetails;

  /// Labels related to the issue
  List<Label> labels;

  /// Every time you do an action related to an issue, the GitLab webhook will
  /// give you all the generated data on this change data. In all cases this 
  /// will only save the changes that were made, with the old and the new value
  /// in case of creation it will came with the "old value" as null.   
  Changes changes;

  /// This have all the information of the repository related to this issue 
  @MappableField(key: 'repository')
  GitLabRepository relatedRepository;

  /// FromJson method, convert a json type object into this GitLabPayload Object
  static const fromJson = GitLabIssuePayloadMapper.fromJson;
}

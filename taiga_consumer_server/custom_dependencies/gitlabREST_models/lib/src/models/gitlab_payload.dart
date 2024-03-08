import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/models/commit/commit.dart';
import 'package:gitlab_rest_models/src/models/project/project.dart';
import 'package:gitlab_rest_models/src/models/repository/repository.dart';

part 'gitlab_payload.mapper.dart';

/// This class is used to map the data which comes from GitLab Webhook, for more
/// info, follow the links:
/// https://docs.gitlab.com/ee/user/project/integrations/webhooks.html
/// https://docs.gitlab.com/ee/user/project/integrations/webhook_events.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabPayload with GitLabPayloadMappable {
  ///
  GitLabPayload({
    required this.operationType,
    required this.eventType,
    required this.beforeCommitSHA,
    required this.afterCommitSHA,
    required this.branchRefName,
    required this.isRefBranchProtected,
    required this.checkoutSha,
    required this.message,
    required this.performerUserId,
    required this.performerUserAvatar,
    required this.performerUserEmail,
    required this.performerUserName,
    required this.performerUserUsername,
    required this.relatedProjectId,
    required this.projectDetails,
    required this.commitsDetails,
    required this.commitAmount,
    //required this.pushOptions,
    required this.repositoryDetails,
  });

  /// Is the type of operation has been made, it can be:
  /// "Push","Tag","Issue","Comment","Merge" "request","Wiki page","Pipeline",
  /// "Job event","Deployment","Feature flag","Release", "Emoji"
  @MappableField(key: 'object_kind')
  String operationType;

  /// Event type given from gitlab, in most of the cases it will be the same as 
  /// the operationType
  @MappableField(key: 'event_name')
  String eventType;

  /// Its the SHA code before this commit was done
  @MappableField(key: 'before')
  String beforeCommitSHA;

  /// Its the SHA code after this commit
  @MappableField(key: 'after')
  String afterCommitSHA;

  /// This value indicates where the commit is pointing at. 
  /// Example: refs/heads/main
  @MappableField(key: 'ref')
  String branchRefName;

  /// Bool value that indicate if the branch is protected of not according to
  /// the configuration on the project
  @MappableField(key: 'ref_protected')
  bool isRefBranchProtected;

  /// Its the SHA code after this commit
  String checkoutSha;

  // TODO(Nacho): Test message and then create the doc
  ///
  String? message;

  /// User id from who triggered the webhook
  @MappableField(key: 'user_id')
  int performerUserId;

  /// User name from who triggered the webhook
  @MappableField(key: 'user_name')
  String performerUserName;

  /// Username from who triggered the webhook
  @MappableField(key: 'user_username')
  String performerUserUsername;

  /// User email from who triggered the webhook
  @MappableField(key: 'user_email')
  String? performerUserEmail;

  /// User avatar url from who triggered the webhook
  @MappableField(key: 'user_avatar')
  String performerUserAvatar;

  /// Id of the project related to this webhook payload
  @MappableField(key: 'project_id')
  int relatedProjectId;

  /// Details of the project related to this webhook payload
  @MappableField(key: 'project')
  GitLabProject projectDetails;

  /// Details of the commits  related to this webhook payload
  /// (Can be more than one in one payload)
  @MappableField(key: 'commits')
  List<GitLabCommit> commitsDetails;

  /// Int value thats indicate the amount of commits related to this payload
  @MappableField(key: 'total_commits_count')
  int commitAmount;

  // TODO(Nacho): What is this value?

  ///
  // PushOptions pushOptions;

  /// Details of the repository related to this payload
  @MappableField(key: 'repository')
  GitLabRepository repositoryDetails;

  /// FromJson method, convert a json type object into this GitLabPayload Object
  static const fromJson = GitLabPayloadMapper.fromJson;
}

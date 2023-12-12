import 'dart:convert';

import 'package:gitlab_rest_models/gitlab_rest_models.dart';
// TODO(Nacho): Fix print custom values, import issue, on RailWay
//import 'package:taiga_consumer_server/src/models/taiga/nidus_custom_fields.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() async {
  // GITLAB STUFF
  const gitlabApiUrl = 'https://gitlab.com/api/v4';
  const projectId = '51929660';
  const accessToken = 'glpat-yqXm2jRtyFZsfTsszRS-';

  // Data receive stuff
  final payload = TaigaPayload.fromJson(jsonEncode(body));
  print('FullName of performer:${payload.performer.fullName}');
  print('actionType:${payload.actionType}');
  print('jobType:${payload.jobType}');
  print('date:${payload.date}');
  if (payload.jobType == 'epic') {
    TaigaEpicData printData = payload.data as TaigaEpicData;
    print('THIS IS DATA: type EPIC');
    print('EPIC creationDate:${printData.creationDate}');
    print('EPIC customValues:${printData.customValues}');
    print('EPIC fromProject:${printData.fromProject}');
    print('EPIC jobDescription:${printData.jobDescription}');
    print('EPIC jobId:${printData.jobId}');
    print('EPIC jobName:${printData.jobName}');
    print('EPIC jobOwner:${printData.jobOwner}');
    print('EPIC jobStatus:${printData.jobStatus}');
    print('EPIC jobWatchers:${printData.jobWatchers}');
    print('EPIC modifiedDate:${printData.modifiedDate}');
    print('EPIC permalink:${printData.jobPermalink}');
    print('EPIC referenceNumber:${printData.referenceNumber}');
    print('EPIC tags:${printData.jobTags}');
    print('EPIC userAssigned:${printData.userAssigned}');
    print('EPIC clientRequirement:${printData.clientRequirementStatus}');
    print('EPIC color:${printData.color}');
    print('EPIC epicsOrder:${printData.epicsOrder}');
    print('EPIC teamRequirement:${printData.teamRequirementStatus}');
  }
  if (payload.jobType == 'task') {
    TaigaTaskData printData = payload.data as TaigaTaskData;
    print('THIS IS DATA: type TASK');
    print('TASK dueDate:${printData.dueDate}');
    print('TASK dueDateReason:${printData.dueDateReason}');
    print('TASK finishedDate:${printData.finishedDate}');
    print('TASK promotedTo:${printData.promotedToList}');
    print('TASK creationDate:${printData.creationDate}');
    print('TASK fromProject:${printData.fromProject}');
    print('TASK jobDescription:${printData.jobDescription}');
    print('TASK jobId:${printData.jobId}');
    print('TASK jobName:${printData.jobName}');
    print('TASK jobOwner:${printData.jobOwner}');
    print('TASK jobStatus:${printData.jobStatus}');
    print('TASK jobWatchers:${printData.jobWatchers}');
    print('TASK modifiedDate:${printData.modifiedDate}');
    print('TASK permalink:${printData.jobPermalink}');
    print('TASK referenceNumber:${printData.referenceNumber}');
    print('TASK tags:${printData.jobTags}');
    print('TASK userAssigned:${printData.userAssigned}');
    print('TASK isBlocked:${printData.isBlockedStatus}');
    print('TASK blockedNote:${printData.blockedNote}');
    print('TASK isIocaine:${printData.isIocaineStatus}');
    print('TASK promotedTo:${printData.promotedToList}');
    print('TASK relatedSprint:${printData.relatedSprint}');
    print('TASK taskboardOrder:${printData.taskboardOrder}');
    print('TASK usOrder:${printData.usOrder}');
    print('TASK userStory:${printData.userStory}');
    if (printData.customValues!.isNotEmpty) {
      //print(NidusCustomFields.fromJson(jsonEncode(printData.customValues)));
    }
  }
  if (payload.jobType == 'issue') {
    TaigaIssueData printData = payload.data as TaigaIssueData;
    print('ISSUE THIS IS DATA: type ISSUE');
    print('ISSUE dueDate:${printData.dueDate}');
    print('ISSUE dueDateReason:${printData.dueDateReason}');
    print('ISSUE finishedDate:${printData.finishedDate}');
    print('ISSUE priority:${printData.issuePriority}');
    print('ISSUE promotedTo:${printData.promotedToList}');
    print('ISSUE severity:${printData.issueSeverity}');
    print('ISSUE sprint:${printData.issueRelatedSprint}');
    print('ISSUE type:${printData.issueType}');
    print('ISSUE creationDate:${printData.creationDate}');
    print('ISSUE customValues:${printData.customValues}');
    print('ISSUE fromProject:${printData.fromProject}');
    print('ISSUE jobDescription:${printData.jobDescription}');
    print('ISSUE jobId:${printData.jobId}');
    print('ISSUE jobName:${printData.jobName}');
    print('ISSUE jobOwner:${printData.jobOwner}');
    print('ISSUE jobStatus:${printData.jobStatus}');
    print('ISSUE jobWatchers:${printData.jobWatchers}');
    print('ISSUE modifiedDate:${printData.modifiedDate}');
    print('ISSUE permalink:${printData.jobPermalink}');
    print('ISSUE referenceNumber:${printData.referenceNumber}');
    print('ISSUE tags:${printData.dueDate}');
    print('ISSUE userAssigned:${printData.userAssigned}');
    print('Creating GITLAB ISSUE');
    if (payload.actionType == 'create') {
      // TODO (Nacho): Se deberia crear un modelo de usuario en el cual se guardan los usuarios con id de taiga y git
      final gitlabIssueBody = IssueAPIRequestModel(
        issueTitle: printData.jobName,
        assignedToId: null,
        description: printData.jobDescription,
        dueDate: printData.dueDate == null ? null : printData.dueDate as String,
        isConfidential: false,
        issueLabels: printData.jobTags,
        issueType: IssueTypes.issue,
      );
      print('Creating a Issue on GITLAB from this Issue');
      // Create Issue
      final issueData = await createGitLabIssue(
          gitlabApiUrl: gitlabApiUrl,
          projectId: projectId,
          accessToken: accessToken,
          body: gitlabIssueBody);

      // Create MR y Branch
      if (issueData != null) {
        print('Creating Merge Request and Branch on GITLAB from this Issue');

        await createGitLabBranchAndMRFromIssue(
          gitlabApiUrl: gitlabApiUrl,
          projectId: projectId,
          accessToken: accessToken,
          issue: issueData,
          createBranchFromRefBranch: 'main',
          mergeReqTargetBranch: 'main',
        );
      }
    }
  }
  if (payload.jobType == 'userstory') {
    TaigaUserStoryData printData = payload.data as TaigaUserStoryData;
    print('THIS IS DATA: type USERSTORY');
    print('USERSTORY assignedUsers:${printData.assignedUsers}');
    print('USERSTORY blockedNote:${printData.blockedNote}');
    print('USERSTORY clientRequirement:${printData.clientRequirementStatus}');
    print('USERSTORY dueDate:${printData.dueDate}');
    print('USERSTORY dueDateReason:${printData.dueDateReason}');
    print('USERSTORY finishDate:${printData.finishDate}');
    print('USERSTORY fromTaskRef:${printData.taskReference}');
    print('USERSTORY generatedFromIssue:${printData.issueReference}');
    print('USERSTORY isBlocked:${printData.isBlockedStatus}');
    print('USERSTORY isClosed:${printData.isClosedStatus}');
    print('USERSTORY sprint:${printData.relatedSprint}');
    print('USERSTORY points:${printData.storyPoints}');
    print('USERSTORY teamRequirement:${printData.teamRequirementStatus}');
    print('USERSTORY assignedTo:${printData.assignedUsers}');
    print('USERSTORY createdDate:${printData.creationDate}');
    print('USERSTORY description:${printData.jobDescription}');
    print('USERSTORY id:${printData.jobId}');
    print('USERSTORY modifiedDate:${printData.modifiedDate}');
    print('USERSTORY owner FullName:${printData.jobOwner.fullName}');
    print('USERSTORY permalink:${printData.jobPermalink}');
    print('USERSTORY project:${printData.fromProject}');
    print('USERSTORY ref:${printData.referenceNumber}');
    print('USERSTORY status:${printData.jobStatus}');
    print('USERSTORY subject:${printData.jobName}');
    print('USERSTORY tags:${printData.taskReference}');
    print('USERSTORY watchers:${printData.jobWatchers}');
    if (printData.storyPoints.isNotEmpty) {
      for (var element in printData.storyPoints) {
        print('STORY POINTS:');
        print('Name:${element.pointName}');
        print('Role ${element.pointAssignedRole}');
        print('Value: ${element.pointAmount}');
      }
    }
    if (printData.customValues!.isNotEmpty) {
      // print(NidusCustomFields.fromJson(jsonEncode(printData.customValues)));
    }
  }
  if (payload.jobType == 'milestone') {
    TaigaSprintData printData = payload.data as TaigaSprintData;
    print('THIS IS DATA: type SPRINT');
    print('SPRINT createdBy:${printData.createdBy}');
    print('SPRINT createdDate:${printData.creationDate}');
    print('SPRINT disponibility:${printData.disponibility}');
    print('SPRINT estimatedFinishDate:${printData.estimatedFinishDate}');
    print('SPRINT estimatedStartDate:${printData.estimatedStartDate}');
    print('SPRINT isClosed:${printData.sprintClosedStatus}');
    print('SPRINT modifiedDate:${printData.modifiedDate}');
    print('SPRINT permalink:${printData.sprintPermalink}');
    print('SPRINT project:${printData.project}');
    print('SPRINT slug:${printData.sprintSlug}');
    print('SPRINT sprintId:${printData.sprintId}');
    print('SPRINT sprintName:${printData.sprintName}');
  }
  if (payload.jobType == 'wikipage') {
    TaigaWikiPageData printData = payload.data as TaigaWikiPageData;
    print('THIS IS DATA: type WIKIPAGE');
    print('WIKIPAGE id:${printData.id}');
    print('WIKIPAGE content:${printData.content}');
    print('WIKIPAGE creationDate:${printData.creationDate}');
    print('WIKIPAGE lastUserModifier:${printData.lastUserModifier}');
    print('WIKIPAGE modifiedDate:${printData.modifiedDate}');
    print('WIKIPAGE permalink:${printData.permalink}');
    print('WIKIPAGE relatedProject:${printData.relatedProject}');
    print('WIKIPAGE slug:${printData.wikiSlug}');
    print('WIKIPAGE userOwner:${printData.userOwner}');
  }
  if (payload.actionType == "change") {
    print('THIS IS CHANGE:');
    if (payload.change?.comment != '') {
      print('Comment:${payload.change?.comment}');
    }
    if (payload.change?.commentHtml != null) {
      print('Comment:${payload.change?.commentHtml}');
    }
    print('difference:');
    if (payload.change?.difference?.attachments != null) {
      print(payload.change?.difference?.attachments);
    }
    if (payload.change?.difference?.assignedToJob != null) {
      print('Change on assignedTo');
      print(payload.change?.difference?.assignedToJob);
    }
    if (payload.change?.difference?.assignedToUserStory != null) {
      print('Change on assignedTo');
      print(payload.change?.difference?.assignedToUserStory);
    }
    if (payload.change?.difference?.dueDate != null) {
      print(payload.change?.difference?.dueDate);
    }
    if (payload.change?.difference?.status != null) {
      print(payload.change?.difference?.status);
    }
    if (payload.change?.difference?.relatedSprint != null) {
      print(payload.change?.difference?.relatedSprint);
    }
    if (payload.change?.difference?.promotedTo != null) {
      print(payload.change?.difference?.promotedTo);
    }
    if (payload.change?.difference?.changeTags != null) {
      print(payload.change?.difference?.changeTags);
    }
    if (payload.change?.difference?.descriptionDiff != null) {
      print('There is a change on the description:');
      print(payload.change?.difference?.descriptionDiff);
    }
    if (payload.change?.difference?.isClosedStatus != null) {
      print(payload.change?.difference?.isClosedStatus);
    }
    if (payload.change?.difference?.kanbanOrder != null) {
      print(payload.change?.difference?.kanbanOrder);
    }
    if (payload.change?.difference?.finishDate != null) {
      print(payload.change?.difference?.finishDate);
    }
    if (payload.change?.difference?.isBlockedStatus != null) {
      print(payload.change?.difference?.isBlockedStatus);
    }
    if (payload.change?.difference?.blockedNoteDiff != null) {
      print(payload.change?.difference?.blockedNoteDiff);
    }
    if (payload.change?.difference?.blockedNoteHtml != null) {
      print(payload.change?.difference?.blockedNoteHtml);
    }
    if (payload.change?.difference?.clientRequirementStatus != null) {
      print(payload.change?.difference?.clientRequirementStatus);
    }
    if (payload.change?.difference?.teamRequirementStatus != null) {
      print(payload.change?.difference?.teamRequirementStatus);
    }
    if (payload.change?.difference?.customAttributes != null) {
      print(payload.change?.difference?.customAttributes);
    }
    if (payload.change?.difference?.isIocaineStatus != null) {
      print(payload.change?.difference?.isIocaineStatus);
    }
    if (payload.change?.difference?.storyPoints != null) {
      print(payload.change?.difference?.storyPoints);
    }
    if (payload.change?.difference?.priorityStatus != null) {
      print(payload.change?.difference?.priorityStatus);
    }
    if (payload.change?.difference?.severityStatus != null) {
      print(payload.change?.difference?.severityStatus);
    }
    if (payload.change?.difference?.typeStatus != null) {
      print(payload.change?.difference?.typeStatus);
    }
    if (payload.change?.difference?.name != null) {
      print(payload.change?.difference?.name);
    }
  }
}

final body = {
  "by": {
    "id": 588936,
    "photo":
        "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZXHfGA%3ANZJ5xvn0Rn1FLSfbBomcLABG9IkQ15OvNu7jEovoTsEWmj3BK6Qy7ybJnimnjsO724rF7ArLY0kLP-yPDa_jOQ",
    "username": "CardozoIgnacio",
    "full_name": "Ignacio Cardozo",
    "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
    "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
  },
  "data": {
    "id": 1696738,
    "ref": 78,
    "tags": [],
    "type": {"id": 3547927, "name": "Enhancement", "color": "#40E4CE"},
    "owner": {
      "id": 588936,
      "photo":
          "https://media-protected.taiga.io/user/5/6/0/2/b85f41f01daeddef3079d6fa357dd0b1bbbb6d334a977dfdbd8af58080c3/new-logo-500x500.jpg.80x80_q85_crop.jpg?token=ZXHfGA%3ANZJ5xvn0Rn1FLSfbBomcLABG9IkQ15OvNu7jEovoTsEWmj3BK6Qy7ybJnimnjsO724rF7ArLY0kLP-yPDa_jOQ",
      "username": "CardozoIgnacio",
      "full_name": "Ignacio Cardozo",
      "permalink": "https://tree.taiga.io/profile/CardozoIgnacio",
      "gravatar_id": "7f9c05563bd05a1b2b7aa88e0abf9bcf"
    },
    "status": {
      "id": 8259988,
      "name": "New",
      "slug": "new",
      "color": "#70728F",
      "is_closed": false
    },
    "project": {
      "id": 1179467,
      "name": "Esteban se la come",
      "permalink": "https://tree.taiga.io/project/rodsevich-esteban-se-la-come",
      "logo_big_url": null
    },
    "subject": "Issue with new dependency test",
    "due_date": null,
    "priority": {"id": 3541292, "name": "Relevante", "color": "#E4CE40"},
    "severity": {"id": 5894934, "name": "N/A", "color": "#A9AABC"},
    "watchers": [],
    "milestone": null,
    "permalink":
        "https://tree.taiga.io/project/rodsevich-esteban-se-la-come/issue/78",
    "assigned_to": null,
    "description": "ddasdsadsadsaasd",
    "promoted_to": [],
    "created_date": "2023-12-07T15:04:56.246Z",
    "finished_date": null,
    "modified_date": "2023-12-07T15:04:56.263Z",
    "due_date_reason": "",
    "external_reference": null,
    "custom_attributes_values": {}
  },
  "date": "2023-12-07T15:04:56.345Z",
  "type": "issue",
  "action": "create"
};

import 'dart:convert';
import 'dart:io';

import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';
import 'package:serverpod/serverpod.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

class RouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    final decodedBody = await utf8.decodeStream(request);
    final body = json.decode(decodedBody);
    Map<String, dynamic> jsonData = json.decode(decodedBody);
    print('Webhook received:');
    print('DecodedBody: $decodedBody');
    final data = TaigaPayload.fromJson(body);
    print('FullName of by:${data.by.fullName}');
    print('Action:${data.action}');
    print('Action:${data.type}');
    print('Action:${data.action}');
    if (data.action == 'change') {
      print(':${data.change?.comment}');
      print(':${data.change?.commentHtml}');
      print('DIFF:');
      print('assignedTo:${data.change?.diff?.assignedTo}');
      print('attachments:${data.change?.diff?.attachments}');
      print('descriptionDiff:${data.change?.diff?.descriptionDiff}');
      print('dueDate:${data.change?.diff?.dueDate}');
      print('finishDate:${data.change?.diff?.finishDate}');
      print('isClosed:${data.change?.diff?.isClosed}');
      print('kanbanOrder:${data.change?.diff?.kanbanOrder}');
      print('milestone:${data.change?.diff?.milestone}');
      print('promotedTo:${data.change?.diff?.promotedTo}');
      print('status:${data.change?.diff?.status}');
      print('tags:${data.change?.diff?.tags}');
    }
    if (data.type == 'userstory') {
      TaigaUserStoryData printData = data.data as TaigaUserStoryData;
      print('assignedUsers:${printData.assignedUsers}');
      print('blockedNote:${printData.blockedNote}');
      print('clientRequirement:${printData.clientRequirement}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('finishDate:${printData.finishDate}');
      print('fromTaskRef:${printData.fromTaskRef}');
      print('generatedFromIssue:${printData.generatedFromIssue}');
      print('generatedFromTask:${printData.generatedFromTask}');
      print('isBlocked:${printData.isBlocked}');
      print('isClosed:${printData.isClosed}');
      print('milestone:${printData.milestone}');
      print('points:${printData.points}');
      print('teamRequirement:${printData.teamRequirement}');
      print('tribeGig:${printData.tribeGig}');
      print('assignedTo:${printData.assignedTo}');
      print('createdDate:${printData.createdDate}');
      print('customAttributesValues:${printData.customAttributesValues}');
      print('description:${printData.description}');
      print('id:${printData.id}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner:${printData.owner}');
      print('permalink:${printData.permalink}');
      print('project:${printData.project}');
      print('ref:${printData.ref}');
      print('status:${printData.status}');
      print('subject:${printData.subject}');
      print('tags:${printData.tags}');
      print('watchers:${printData.watchers}');
    }
    if (data.type == 'task') {
      TaigaTaskData printData = data.data as TaigaTaskData;
      print('blockedNote:${printData.blockedNote}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('isBlocked:${printData.isBlocked}');
      print('milestone:${printData.milestone}');
      print('assignedTo:${printData.assignedTo}');
      print('createdDate:${printData.createdDate}');
      print('customAttributesValues:${printData.customAttributesValues}');
      print('description:${printData.description}');
      print('id:${printData.id}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner:${printData.owner}');
      print('permalink:${printData.permalink}');
      print('project:${printData.project}');
      print('ref:${printData.ref}');
      print('status:${printData.status}');
      print('subject:${printData.subject}');
      print('tags:${printData.tags}');
      print('watchers:${printData.watchers}');
      print('blockedNote:${printData.blockedNote}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('finishedDate:${printData.finishedDate}');
      print('isBlocked:${printData.isBlocked}');
      print('isIocaine:${printData.isIocaine}');
      print('milestone:${printData.milestone}');
      print('promotedTo:${printData.promotedTo}');
      print('taskboardOrder:${printData.taskboardOrder}');
      print('usOrder:${printData.usOrder}');
      print('userStory:${printData.userStory}');
    }
    if (data.type == 'issue') {
      TaigaIssueData printData = data.data as TaigaIssueData;
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('milestone:${printData.milestone}');
      print('assignedTo:${printData.assignedTo}');
      print('createdDate:${printData.createdDate}');
      print('customAttributesValues:${printData.customAttributesValues}');
      print('description:${printData.description}');
      print('id:${printData.id}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner:${printData.owner}');
      print('permalink:${printData.permalink}');
      print('project:${printData.project}');
      print('ref:${printData.ref}');
      print('status:${printData.status}');
      print('subject:${printData.subject}');
      print('tags:${printData.tags}');
      print('dueDate:${printData.dueDate}');
      print('dueDateReason:${printData.dueDateReason}');
      print('externalReference:${printData.externalReference}');
      print('finishedDate:${printData.finishedDate}');
      print('milestone:${printData.milestone}');
      print('promotedTo:${printData.promotedTo}');
    }
    if (data.type == 'epic') {
      TaigaEpicData printData = data.data as TaigaEpicData;
      print('assignedTo:${printData.assignedTo}');
      print('createdDate:${printData.createdDate}');
      print('customAttributesValues:${printData.customAttributesValues}');
      print('description:${printData.description}');
      print('id:${printData.id}');
      print('modifiedDate:${printData.modifiedDate}');
      print('owner:${printData.owner}');
      print('permalink:${printData.permalink}');
      print('project:${printData.project}');
      print('ref:${printData.ref}');
      print('status:${printData.status}');
      print('subject:${printData.subject}');
      print('tags:${printData.tags}');
      print('clientRequirement:${printData.clientRequirement}');
      print('color:${printData.color}');
      print('epicsOrder:${printData.epicsOrder}');
      print('teamRequirement:${printData.teamRequirement}');
    }


    return WebHooksView(webhookData: body);
  }
}

class DefaultRouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    return DefaultPageWidget();
  }
}

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
    print('Webhook received:');
    print('DecodedBody: $decodedBody');
    final data = TaigaPayload.fromJson(body);
    print('FullName of by:${data.by.fullName}');
    print('Action:${data.action}');
    print('type:${data.type}');
    if (data.action == 'change') {
      print(':${data.change?.comment}');
      print(':${data.change?.commentHtml}');
      print('DIFF:');
      if (data.change!.diff!.assignedTo != null) {
        print('assignedTo:${data.change?.diff?.assignedTo?.from}');
        print('assignedTo:${data.change?.diff?.assignedTo?.to}');
      }
      if (data.change!.diff!.attachments != null) {
        print('assignedTo:${data.change?.diff?.attachments}');
      }
      if (data.change!.diff!.blockedNoteDiff!= null) {
        print('blockedNoteDiff:${data.change?.diff?.blockedNoteDiff?.from}');
        print('blockedNoteDiff:${data.change?.diff?.blockedNoteDiff?.to}');
      }
      if (data.change!.diff!.blockedNoteHtml != null) {
        print('blockedNoteHtml:${data.change?.diff?.blockedNoteHtml?.from}');
        print('blockedNoteHtml:${data.change?.diff?.blockedNoteHtml?.to}');
      }
      if (data.change!.diff!.clientRequirement != null) {
        print('clientRequirement:${data.change?.diff?.clientRequirement?.from}');
        print('clientRequirement:${data.change?.diff?.clientRequirement?.to}');
      }
      if (data.change!.diff!.descriptionDiff != null) {
        print('descriptionDiff:${data.change?.diff?.descriptionDiff}');
      }
      if (data.change!.diff!.dueDate != null) {
        print('dueDate:${data.change?.diff?.dueDate?.from}');
        print('dueDate:${data.change?.diff?.dueDate?.to}');
      }
      if (data.change!.diff!.finishDate != null) {
        print('finishDate:${data.change?.diff?.finishDate?.from}');
        print('finishDate:${data.change?.diff?.finishDate?.to}');
      }
      if (data.change!.diff!.isBlocked != null) {
        print('isBlocked:${data.change?.diff?.isBlocked?.from}');
        print('isBlocked:${data.change?.diff?.isBlocked?.to}');
      }
      if (data.change!.diff!.isClosed != null) {
        print('isClosed:${data.change?.diff?.isClosed?.from}');
        print('isClosed:${data.change?.diff?.isClosed?.to}');
      }
      if (data.change!.diff!.kanbanOrder != null) {
        print('kanbanOrder:${data.change?.diff?.kanbanOrder?.from}');
        print('kanbanOrder:${data.change?.diff?.kanbanOrder?.to}');
      }
      if (data.change!.diff!.milestone != null) {
        print('milestone:${data.change?.diff?.milestone?.from}');
        print('milestone:${data.change?.diff?.milestone?.to}');
      }
      if (data.change!.diff!.promotedTo != null) {
        print('promotedTo:${data.change?.diff?.promotedTo?.from}');
        print('promotedTo:${data.change?.diff?.promotedTo?.to}');
      }
      if (data.change!.diff!.status != null) {
        print('status:${data.change?.diff?.status?.from}');
        print('status:${data.change?.diff?.status?.to}');
      }
      if (data.change!.diff!.tags != null) {
        print('tags:${data.change?.diff?.tags?.from}');
        print('tags:${data.change?.diff?.tags?.to}');
      }
      if (data.change!.diff!.customAttributes != null) {
        print('attributesNew:${data.change?.diff?.customAttributes?.attributesNew}');
        print('attributesChanged:${data.change?.diff?.customAttributes?.attributesChanged}');
        print('attributesDeleted:${data.change?.diff?.customAttributes?.attributesDeleted}');
      }
    
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
      print('owner FullName:${printData.owner.fullName}');
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
      print('owner FullName:${printData.owner.fullName}');
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
      print('owner FullName:${printData.owner.fullName}');
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
      print('owner FullName:${printData.owner.fullName}');
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

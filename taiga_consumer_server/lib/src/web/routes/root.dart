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
    final data = taigaObjectGenerator(decodedBody);
    print(data);
    if (data.runtimeType == TaigaIssue) {
      TaigaIssue dataDos = data;
      print('PAYLOAD TYPE TaigaIssue');
      print('DATA OF THE PAYLOAD:');
      print('This is the payload: $dataDos');
      print('This is the action: ${dataDos.action}');
      print('This is the type: ${dataDos.type}');
      print('This is the Date: ${dataDos.date}');
      print('This is the By: ${dataDos.by}');
      print('This is the By(fullName): ${dataDos.by.fullName}');
      print('This is the By(gravatarId): ${dataDos.by.gravatarId}');
      print('This is the By(id): ${dataDos.by.id}');
      print('This is the By(permalink): ${dataDos.by.permalink}');
      print('This is the By(photo): ${dataDos.by.photo}');
      print('This is the By(username): ${dataDos.by.username}');
      print(
          'This is the Change (If type != change, all change data = null): ${dataDos.change}');
      print('This is the Change(comment): ${dataDos.change?.comment}');
      print('This is the Change(commentHtml): ${dataDos.change?.commentHtml}');
      print(
          'This is the Change(commentVersions): ${dataDos.change?.commentVersions}');
      print(
          'This is the Change(editCommentDate): ${dataDos.change?.editCommentDate}');
      print(
          'This is the Change(diff(descriptionDiff)): ${dataDos.change?.diff?.descriptionDiff}');
      print(
          'This is the Change(diff(attachments.new)): ${dataDos.change?.diff?.attachments?.attachmentsNew}');
      print(
          'This is the Change(diff(attachments.changed)): ${dataDos.change?.diff?.attachments?.changed}');
      print(
          'This is the Change(diff(attachments.deleted)): ${dataDos.change?.diff?.attachments?.deleted}');
      print(
          'This is the Change(diff(tags.from)): ${dataDos.change?.diff?.tags?.from}');
      print(
          'This is the Change(diff(tags.to)): ${dataDos.change?.diff?.tags?.to}');
      print(
          'This is the Change(diff(assignedTo.from)): ${dataDos.change?.diff?.assignedTo?.from}');
      print(
          'This is the Change(diff(assignedTo.to)): ${dataDos.change?.diff?.assignedTo?.to}');
      print(
          'This is the Change(diff(dueDate.from)): ${dataDos.change?.diff?.dueDate?.from}');
      print(
          'This is the Change(diff(dueDate.to)): ${dataDos.change?.diff?.dueDate?.to}');
      print(
          'This is the Change(diff(milestone.from)): ${dataDos.change?.diff?.milestone?.from}');
      print(
          'This is the Change(diff(milestone.to)): ${dataDos.change?.diff?.milestone?.to}');
      print(
          'This is the Change(diff(promotedTo.from)): ${dataDos.change?.diff?.promotedTo?.from}');
      print(
          'This is the Change(diff(promotedTo.to)): ${dataDos.change?.diff?.promotedTo?.to}');
      print(
          'This is the Change(diff(status.from)): ${dataDos.change?.diff?.status?.from}');
      print(
          'This is the Change(diff(status.to)): ${dataDos.change?.diff?.status?.from}');
      print('This is the Data: ${dataDos.data}');
      print('This is the Data(id): ${dataDos.data.id}');
      print('This is the Data(ref): ${dataDos.data.ref}');
      print('This is the Data(createdDate): ${dataDos.data.createdDate}');
      print('This is the Data(modifiedDate): ${dataDos.data.modifiedDate}');
      print('This is the Data(finishedDate): ${dataDos.data.finishedDate}');
      print('This is the Data(dueDate): ${dataDos.data.dueDate}');
      print('This is the Data(subject): ${dataDos.data.subject}');
      print(
          'This is the Data(externalReference): ${dataDos.data.externalReference}');
      print('This is the Data(watchers): ${dataDos.data.watchers}');
      print('This is the Data(description): ${dataDos.data.description}');
      print('This is the Data(tags): ${dataDos.data.tags}');
      print('This is the Data(permalink): ${dataDos.data.permalink}');
      print('This is the Data(project): ${dataDos.data.project}');
      print('This is the Data(milestone): ${dataDos.data.milestone}');
      print('This is the Data(owner): ${dataDos.data.owner}');
      print('This is the Data(owner): ${dataDos.data.owner.fullName}');
      print('This is the Data(owner): ${dataDos.data.owner.gravatarId}');
      print('This is the Data(owner): ${dataDos.data.owner.id}');
      print('This is the Data(owner): ${dataDos.data.owner.permalink}');
      print('This is the Data(owner): ${dataDos.data.owner.photo}');
      print('This is the Data(owner): ${dataDos.data.owner.username}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.fullName}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.gravatarId}');
      print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.id}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.permalink}');
      print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.photo}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.username}');
      print('This is the Data(status): ${dataDos.data.status}');
      print('This is the Data(type): ${dataDos.data.type}');
      print('This is the Data(type): ${dataDos.data.type.color}');
      print('This is the Data(type): ${dataDos.data.type.id}');
      print('This is the Data(type): ${dataDos.data.type.name}');
      print('This is the Data(priority): ${dataDos.data.priority}');
      print('This is the Data(priority): ${dataDos.data.priority.color}');
      print('This is the Data(priority): ${dataDos.data.priority.id}');
      print('This is the Data(priority): ${dataDos.data.priority.name}');
      print('This is the Data(severity): ${dataDos.data.severity}');
      print('This is the Data(severity): ${dataDos.data.severity.color}');
      print('This is the Data(severity): ${dataDos.data.severity.id}');
      print('This is the Data(severity): ${dataDos.data.severity.name}');
      print('This is the Data(promotedTo): ${dataDos.data.promotedTo}');
    }
    if (data.runtimeType == TaigaUserStory) {
      TaigaUserStory dataDos = data;
      print('PAYLOAD TYPE TaigaIssue');
      print('DATA OF THE PAYLOAD:');
      print('This is the payload: $dataDos');
      print('This is the action: ${dataDos.action}');
      print('This is the type: ${dataDos.type}');
      print('This is the Date: ${dataDos.date}');
      print('This is the By: ${dataDos.by}');
      print('This is the By(fullName): ${dataDos.by.fullName}');
      print('This is the By(gravatarId): ${dataDos.by.gravatarId}');
      print('This is the By(id): ${dataDos.by.id}');
      print('This is the By(permalink): ${dataDos.by.permalink}');
      print('This is the By(photo): ${dataDos.by.photo}');
      print('This is the By(username): ${dataDos.by.username}');
      print(
          'This is the Change (If type != change, all change data = null): ${dataDos.change}');
      print('This is the Change(comment): ${dataDos.change?.comment}');
      print('This is the Change(commentHtml): ${dataDos.change?.commentHtml}');
      print(
          'This is the Change(commentVersions): ${dataDos.change?.commentVersions}');
      print(
          'This is the Change(editCommentDate): ${dataDos.change?.editCommentDate}');
      print(
          'This is the Change(diff(descriptionDiff)): ${dataDos.change?.diff?.descriptionDiff}');
      print(
          'This is the Change(diff(attachments.new)): ${dataDos.change?.diff?.attachments?.attachmentsNew}');
      print(
          'This is the Change(diff(attachments.changed)): ${dataDos.change?.diff?.attachments?.changed}');
      print(
          'This is the Change(diff(attachments.deleted)): ${dataDos.change?.diff?.attachments?.deleted}');
      print(
          'This is the Change(diff(tags.from)): ${dataDos.change?.diff?.tags?.from}');
      print(
          'This is the Change(diff(tags.to)): ${dataDos.change?.diff?.tags?.to}');
      print(
          'This is the Change(diff(assignedTo.from)): ${dataDos.change?.diff?.assignedTo?.from}');
      print(
          'This is the Change(diff(assignedTo.to)): ${dataDos.change?.diff?.assignedTo?.to}');
      print(
          'This is the Change(diff(dueDate.from)): ${dataDos.change?.diff?.dueDate?.from}');
      print(
          'This is the Change(diff(dueDate.to)): ${dataDos.change?.diff?.dueDate?.to}');
      print(
          'This is the Change(diff(milestone.from)): ${dataDos.change?.diff?.milestone?.from}');
      print(
          'This is the Change(diff(milestone.to)): ${dataDos.change?.diff?.milestone?.to}');
      print(
          'This is the Change(diff(promotedTo.from)): ${dataDos.change?.diff?.promotedTo?.from}');
      print(
          'This is the Change(diff(promotedTo.to)): ${dataDos.change?.diff?.promotedTo?.to}');
      print(
          'This is the Change(diff(status.from)): ${dataDos.change?.diff?.status?.from}');
      print(
          'This is the Change(diff(status.to)): ${dataDos.change?.diff?.status?.from}');
      print('This is the Data: ${dataDos.data}');
      print('This is the Data(id): ${dataDos.data.id}');
      print('This is the Data(ref): ${dataDos.data.ref}');
      print('This is the Data(createdDate): ${dataDos.data.createdDate}');
      print('This is the Data(modifiedDate): ${dataDos.data.modifiedDate}');
      print('This is the Data(dueDate): ${dataDos.data.dueDate}');
      print('This is the Data(subject): ${dataDos.data.subject}');
      print(
          'This is the Data(externalReference): ${dataDos.data.externalReference}');
      print('This is the Data(watchers): ${dataDos.data.watchers}');
      print('This is the Data(description): ${dataDos.data.description}');
      print('This is the Data(tags): ${dataDos.data.tags}');
      print('This is the Data(permalink): ${dataDos.data.permalink}');
      print('This is the Data(project): ${dataDos.data.project}');
      print('This is the Data(milestone): ${dataDos.data.milestone}');
      print('This is the Data(owner): ${dataDos.data.owner}');
      print('This is the Data(owner): ${dataDos.data.owner.fullName}');
      print('This is the Data(owner): ${dataDos.data.owner.gravatarId}');
      print('This is the Data(owner): ${dataDos.data.owner.id}');
      print('This is the Data(owner): ${dataDos.data.owner.permalink}');
      print('This is the Data(owner): ${dataDos.data.owner.photo}');
      print('This is the Data(owner): ${dataDos.data.owner.username}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.fullName}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.gravatarId}');
      print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.id}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.permalink}');
      print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.photo}');
      print(
          'This is the Data(assignedTo): ${dataDos.data.assignedTo?.username}');
      print('This is the Data(status): ${dataDos.data.status}');
      print('This is the Data(points): ${dataDos.data.points}');
      print('This is the Data(isClosed): ${dataDos.data.isClosed}');
      print('This is the Data(isBlocked): ${dataDos.data.isBlocked}');
      print('This is the Data(blockedNote): ${dataDos.data.blockedNote}');
      print('This is the Data(assignedUsers): ${dataDos.data.assignedUsers}');
      print('This is the Data(teamRequirement): ${dataDos.data.teamRequirement}');
      print('This is the Data(clientRequirement): ${dataDos.data.clientRequirement}');
      print('This is the Data(generatedFromIssue): ${dataDos.data.generatedFromIssue}');
    }
    if (data.runtimeType == TaigaTask) {
    TaigaTask dataDos = data;
    print('PAYLOAD TYPE TaigaIssue');
    print('DATA OF THE PAYLOAD:');
    print('This is the payload: $dataDos');
    print('This is the action: ${dataDos.action}');
    print('This is the type: ${dataDos.type}');
    print('This is the Date: ${dataDos.date}');
    print('This is the By: ${dataDos.by}');
    print('This is the By(fullName): ${dataDos.by.fullName}');
    print('This is the By(gravatarId): ${dataDos.by.gravatarId}');
    print('This is the By(id): ${dataDos.by.id}');
    print('This is the By(permalink): ${dataDos.by.permalink}');
    print('This is the By(photo): ${dataDos.by.photo}');
    print('This is the By(username): ${dataDos.by.username}');
    print(
        'This is the Change (If type != change, all change data = null): ${dataDos.change}');
    print('This is the Change(comment): ${dataDos.change?.comment}');
    print('This is the Change(commentHtml): ${dataDos.change?.commentHtml}');
    print(
        'This is the Change(commentVersions): ${dataDos.change?.commentVersions}');
    print(
        'This is the Change(editCommentDate): ${dataDos.change?.editCommentDate}');
    print(
        'This is the Change(diff(descriptionDiff)): ${dataDos.change?.diff?.descriptionDiff}');
    print(
        'This is the Change(diff(attachments.new)): ${dataDos.change?.diff?.attachments?.attachmentsNew}');
    print(
        'This is the Change(diff(attachments.changed)): ${dataDos.change?.diff?.attachments?.changed}');
    print(
        'This is the Change(diff(attachments.deleted)): ${dataDos.change?.diff?.attachments?.deleted}');
    print(
        'This is the Change(diff(tags.from)): ${dataDos.change?.diff?.tags?.from}');
    print(
        'This is the Change(diff(tags.to)): ${dataDos.change?.diff?.tags?.to}');
    print(
        'This is the Change(diff(assignedTo.from)): ${dataDos.change?.diff?.assignedTo?.from}');
    print(
        'This is the Change(diff(assignedTo.to)): ${dataDos.change?.diff?.assignedTo?.to}');
    print(
        'This is the Change(diff(dueDate.from)): ${dataDos.change?.diff?.dueDate?.from}');
    print(
        'This is the Change(diff(dueDate.to)): ${dataDos.change?.diff?.dueDate?.to}');
    print(
        'This is the Change(diff(milestone.from)): ${dataDos.change?.diff?.milestone?.from}');
    print(
        'This is the Change(diff(milestone.to)): ${dataDos.change?.diff?.milestone?.to}');
    print(
        'This is the Change(diff(promotedTo.from)): ${dataDos.change?.diff?.promotedTo?.from}');
    print(
        'This is the Change(diff(promotedTo.to)): ${dataDos.change?.diff?.promotedTo?.to}');
    print(
        'This is the Change(diff(status.from)): ${dataDos.change?.diff?.status?.from}');
    print(
        'This is the Change(diff(status.to)): ${dataDos.change?.diff?.status?.from}');
    print('This is the Data: ${dataDos.data}');
    print('This is the Data(id): ${dataDos.data.id}');
    print('This is the Data(ref): ${dataDos.data.ref}');
    print('This is the Data(createdDate): ${dataDos.data.createdDate}');
    print('This is the Data(modifiedDate): ${dataDos.data.modifiedDate}');
    print('This is the Data(dueDate): ${dataDos.data.dueDate}');
    print('This is the Data(subject): ${dataDos.data.subject}');
    print(
        'This is the Data(externalReference): ${dataDos.data.externalReference}');
    print('This is the Data(watchers): ${dataDos.data.watchers}');
    print('This is the Data(description): ${dataDos.data.description}');
    print('This is the Data(tags): ${dataDos.data.tags}');
    print('This is the Data(permalink): ${dataDos.data.permalink}');
    print('This is the Data(project): ${dataDos.data.project}');
    print('This is the Data(milestone): ${dataDos.data.milestone}');
    print('This is the Data(owner): ${dataDos.data.owner}');
    print('This is the Data(owner): ${dataDos.data.owner.fullName}');
    print('This is the Data(owner): ${dataDos.data.owner.gravatarId}');
    print('This is the Data(owner): ${dataDos.data.owner.id}');
    print('This is the Data(owner): ${dataDos.data.owner.permalink}');
    print('This is the Data(owner): ${dataDos.data.owner.photo}');
    print('This is the Data(owner): ${dataDos.data.owner.username}');
    print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.fullName}');
    print(
        'This is the Data(assignedTo): ${dataDos.data.assignedTo?.gravatarId}');
    print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.id}');
    print(
        'This is the Data(assignedTo): ${dataDos.data.assignedTo?.permalink}');
    print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.photo}');
    print('This is the Data(assignedTo): ${dataDos.data.assignedTo?.username}');
    print('This is the Data(status): ${dataDos.data.status}');
    print('This is the Data(isBlocked): ${dataDos.data.isBlocked}');
    print('This is the Data(blockedNote): ${dataDos.data.blockedNote}');
    print('This is the Data(taskboardOrder): ${dataDos.data.taskboardOrder}');
    print('This is the Data(isIocaine): ${dataDos.data.isIocaine}');
    print('This is the Data(isBlocked): ${dataDos.data.isBlocked}');
    print('This is the Data(usOrder): ${dataDos.data.usOrder}');
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

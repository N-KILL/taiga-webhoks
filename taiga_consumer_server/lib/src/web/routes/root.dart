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
    print('This is jsonData: $jsonData');
    final payload = TaigaPayload.fromJson(jsonData);
    print('This is the payload: $payload');
    print('This is the action: ${payload.action}');
    print('This is the type: ${payload.type}');
    print('This is the Date: ${payload.date}');
    print('This is the By: ${payload.by}');
    print('This is the By(fullName): ${payload.by.fullName}');
    print('This is the By(gravatarId): ${payload.by.gravatarId}');
    print('This is the By(id): ${payload.by.id}');
    print('This is the By(permalink): ${payload.by.permalink}');
    print('This is the By(photo): ${payload.by.photo}');
    print('This is the By(username): ${payload.by.username}');
    print('This is the Change (If type != change, all change data = null): ${payload.change}');
    print('This is the Change(comment): ${payload.change?.comment}');
    print('This is the Change(commentHtml): ${payload.change?.commentHtml}');
    print('This is the Change(commentVersions): ${payload.change?.commentVersions}');
    print('This is the Change(editCommentDate): ${payload.change?.editCommentDate}');
    print('This is the Change(diff(descriptionDiff)): ${payload.change?.diff?.descriptionDiff}');
    print('This is the Change(diff(attachments.new)): ${payload.change?.diff?.attachments?.attachmentsNew}');
    print('This is the Change(diff(attachments.changed)): ${payload.change?.diff?.attachments?.changed}');
    print('This is the Change(diff(attachments.deleted)): ${payload.change?.diff?.attachments?.deleted}');
    print('This is the Change(diff(tags.from)): ${payload.change?.diff?.tags?.from}');
    print('This is the Change(diff(tags.to)): ${payload.change?.diff?.tags?.to}');
    print('This is the Change(diff(assignedTo.from)): ${payload.change?.diff?.assignedTo?.from}');
    print('This is the Change(diff(assignedTo.to)): ${payload.change?.diff?.assignedTo?.to}');
    print('This is the Change(diff(dueDate.from)): ${payload.change?.diff?.dueDate?.from}');
    print('This is the Change(diff(dueDate.to)): ${payload.change?.diff?.dueDate?.to}');
    print('This is the Change(diff(milestone.from)): ${payload.change?.diff?.milestone?.from}');
    print('This is the Change(diff(milestone.to)): ${payload.change?.diff?.milestone?.to}');
    print('This is the Change(diff(promotedTo.from)): ${payload.change?.diff?.promotedTo?.from}');
    print('This is the Change(diff(promotedTo.to)): ${payload.change?.diff?.promotedTo?.to}');
    print('This is the Change(diff(status.from)): ${payload.change?.diff?.status?.from}');
    print('This is the Change(diff(status.to)): ${payload.change?.diff?.status?.from}');
    print('This is the Data: ${payload.data}');
    print('This is the Data(id): ${payload.data.id}');
    print('This is the Data(ref): ${payload.data.ref}');
    print('This is the Data(createdDate): ${payload.data.createdDate}');
    print('This is the Data(modifiedDate): ${payload.data.modifiedDate}');
    print('This is the Data(finishedDate): ${payload.data.finishedDate}');
    print('This is the Data(dueDate): ${payload.data.dueDate}');
    print('This is the Data(subject): ${payload.data.subject}');
    print('This is the Data(externalReference): ${payload.data.externalReference}');
    print('This is the Data(watchers): ${payload.data.watchers}');
    print('This is the Data(description): ${payload.data.description}');
    print('This is the Data(tags): ${payload.data.tags}');
    print('This is the Data(permalink): ${payload.data.permalink}');
    print('This is the Data(project): ${payload.data.project}');
    print('This is the Data(milestone): ${payload.data.milestone}');
    print('This is the Data(owner): ${payload.data.owner}');
    print('This is the Data(owner): ${payload.data.owner.fullName}');
    print('This is the Data(owner): ${payload.data.owner.gravatarId}');
    print('This is the Data(owner): ${payload.data.owner.id}');
    print('This is the Data(owner): ${payload.data.owner.permalink}');
    print('This is the Data(owner): ${payload.data.owner.photo}');
    print('This is the Data(owner): ${payload.data.owner.username}');
     print('This is the Data(assignedTo): ${payload.data.assignedTo?.fullName}');
    print('This is the Data(assignedTo): ${payload.data.assignedTo?.gravatarId}');
    print('This is the Data(assignedTo): ${payload.data.assignedTo?.id}');
    print('This is the Data(assignedTo): ${payload.data.assignedTo?.permalink}');
    print('This is the Data(assignedTo): ${payload.data.assignedTo?.photo}');
    print('This is the Data(assignedTo): ${payload.data.assignedTo?.username}');
    print('This is the Data(status): ${payload.data.status}');
    print('This is the Data(type): ${payload.data.type}');
    print('This is the Data(type): ${payload.data.type.color}');
    print('This is the Data(type): ${payload.data.type.id}');
    print('This is the Data(type): ${payload.data.type.name}');
    print('This is the Data(priority): ${payload.data.priority}');
    print('This is the Data(priority): ${payload.data.priority.color}');
    print('This is the Data(priority): ${payload.data.priority.id}');
    print('This is the Data(priority): ${payload.data.priority.name}');
    print('This is the Data(severity): ${payload.data.severity}');
    print('This is the Data(severity): ${payload.data.severity.color}');
    print('This is the Data(severity): ${payload.data.severity.id}');
    print('This is the Data(severity): ${payload.data.severity.name}');
    print('This is the Data(promotedTo): ${payload.data.promotedTo}');
    return WebHooksView(webhookData: body);
  }
}

class DefaultRouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    return DefaultPageWidget();
  }
}

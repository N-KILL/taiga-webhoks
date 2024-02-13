import 'dart:convert';
import 'dart:io';

import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/endpoints/figma_endpoints.dart';
import 'package:taiga_consumer_server/src/endpoints/user_endpoints.dart';
import 'package:taiga_consumer_server/src/helpers/date_formatter.dart';
import 'package:taiga_consumer_server/src/helpers/figma/figma_status_converter.dart';
import 'package:taiga_consumer_server/src/web/widgets/default_page_widget.dart';

import 'package:taiga_rest_models/taiga_rest_models.dart';

import 'package:taiga_consumer_server/src/generated/protocol.dart';
import 'package:taiga_consumer_server/src/helpers/mail/detail_generator.dart';
import 'package:taiga_consumer_server/src/endpoints/project_endpoint.dart';
import 'package:taiga_consumer_server/src/endpoints/taiga_job_endpoints.dart';

// TODO(Nacho): Remind the user of the commentaries is hardcoded.
// Because by the moment we don't register any user, we re using the id: 1, to
// record all the commentaries made into a job on Taiga.

// TODO(Nacho): Replace all important data with .env vars
// On the code are many stuff which have to be replaced with environment vars
// by now, is not that sensible, but need to support .env

class TaigaRoute extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    final decodedBody = await utf8.decodeStream(request);
    final body = json.decode(decodedBody);
    session.log('Taiga webhook received:');
    try {
      // Convert the data of the webhook into a TaigaPayload model
      final payload = TaigaPayload.fromJson(decodedBody);

      // session.log to show info
      session.log('Nueva accion en Taiga de: ${payload.performer.fullName}');
      session.log('Tipo de accion: ${payload.actionType}');
      session.log('Tipo de trabajo: ${payload.jobType}');
      session.log('Fecha de la accion :${payload.date}');

      // Convert the data of the payload into an instance of TaigaData
      //? TaigaData has different type of data, based on the type of job
      final payloadTaigaData = payload.data as TaigaData;

      // Print the info of the project
      session.log('Project details: ${payloadTaigaData.fromProject}');

      // Get the project Id if exist
      var getProjectById =
          await TaigaProjectEndpoint().projectReadByTaigaProjectId(
        session,
        id: payloadTaigaData.fromProject.projectId,
      );

      // If cant get the project details, means that the project its not register
      // in the database, so we re going to register
      if (getProjectById == null) {
        getProjectById = await TaigaProjectEndpoint().projectCreate(
          session,
          taigaProject: TaigaProject(
            title: payloadTaigaData.fromProject.projectName,
            taigaId: payloadTaigaData.fromProject.projectId,
          ),
        );
      }

      // If the type of action made on Taiga is Create and we can get the project
      if (payload.actionType == 'create' && getProjectById != null) {
        //Create a TaigaJob Instance
        final job = TaigaJob(
          type: payload.jobType,
          title: payloadTaigaData.jobName,
          description: payloadTaigaData.jobDescription != null
              ? payloadTaigaData.jobDescription!
              : ' ',
          status: payloadTaigaData.jobStatus.statusName,
          projectId: getProjectById.id!,
          taigaRefNumber: payloadTaigaData.referenceNumber,
        );

        // Create the item in the database
        final canCreate = await TaigaJobEndpoint().taigaJobCreate(
          session,
          taigaJob: job,
        );

        // If can create the taiga job instance on the db, we re going to
        // create an taiga job update instance on db
        if (canCreate != null) {
          // Create a new job update register
          await TaigaJobEndpoint().taigaJobUpdatesCreate(
            session,
            taigaJobUpdates: TaigaJobUpdates(
              jobId: canCreate.id!,
              type: canCreate.type + ' ' + payload.actionType,
              status: canCreate.status,
              details: 'Se creo un nuevo ${canCreate.type}',
              dateTimeEpoch: DateTime.now().millisecondsSinceEpoch ~/ 1000,
            ),
          );
        }
      }

      // If the type of action made on Taiga is Change
      if (payload.actionType == 'change' && getProjectById != null) {
        final detail = DetailGenerator(
          payload: payload,
        );

        // If detail have data, mean its important data. Otherwise, this doesn't
        // need to be executed
        if (detail != '') {
          // If can get the project related to the job
          // Create a TaigaJob instance with the data
          final job = TaigaJob(
            type: payload.jobType,
            title: payloadTaigaData.jobName,
            description: payloadTaigaData.jobDescription != null
                ? payloadTaigaData.jobDescription!
                : ' ',
            status: payloadTaigaData.jobStatus.statusName,
            projectId: getProjectById.id!,
            taigaRefNumber: payloadTaigaData.referenceNumber,
          );

          // Verify if the job already exist
          final readJob =
              await TaigaJobEndpoint().taigaJobReadByProjectIdAndRefNumber(
            session,
            projectId: getProjectById.id!,
            taigaRefNumber: payloadTaigaData.referenceNumber,
          );

          // If the job already exist on the database
          if (readJob != null) {
            // Update the values with the new detected on
            final canUpdate = await TaigaJobEndpoint().taigaJobUpdateById(
              session,
              id: readJob.id!,
              taigaJob: job,
            );

            // If can update the values will return a taigaJob instance,
            // with an id
            if (canUpdate != null && canUpdate.id != null) {
              //  Verify if the change made was a new comment, and store it as
              // a commentary instance on database
              if (payload.change!.comment != '') {
                final commentDetails =
                    await TaigaJobEndpoint().taigaJobCommentariesCreate(
                  session,
                  taigaJobCommentaries: TaigaJobCommentaries(
                    userId: 1,
                    jobIdId: canUpdate.id!,
                    details: payload.change!.comment!,
                    dateTime: DateTime.now(),
                  ),
                );

                // If can create the comment details on the database, create the
                // register of the Update, with the comment id
                if (commentDetails != null) {
                  // Create a new job update register
                  await TaigaJobEndpoint().taigaJobUpdatesCreate(
                    session,
                    taigaJobUpdates: TaigaJobUpdates(
                      jobId: canUpdate.id!,
                      type: canUpdate.type + ' ' + payload.actionType,
                      status: canUpdate.status,
                      details: detail,
                      dateTimeEpoch:
                          DateTime.now().millisecondsSinceEpoch ~/ 1000,
                      commentId: commentDetails.id,
                    ),
                  );
                }
              } // If the change made wasn't a commentary
              else {
                // Create a new job update register
                await TaigaJobEndpoint().taigaJobUpdatesCreate(
                  session,
                  taigaJobUpdates: TaigaJobUpdates(
                    jobId: canUpdate.id!,
                    type: canUpdate.type + ' ' + payload.actionType,
                    status: canUpdate.status,
                    details: detail,
                    dateTimeEpoch:
                        DateTime.now().millisecondsSinceEpoch ~/ 1000,
                  ),
                );
              }
            }
          } // If the job do not exist on the database
          else {
            // Create the item in the database
            final canCreate = await TaigaJobEndpoint().taigaJobCreate(
              session,
              taigaJob: job,
            );

            // If can create the item
            if (canCreate != null && canCreate.id != null) {
              // Create a new job update register
              await TaigaJobEndpoint().taigaJobUpdatesCreate(
                session,
                taigaJobUpdates: TaigaJobUpdates(
                  jobId: canCreate.id!,
                  type: canCreate.type + ' ' + payload.actionType,
                  status: canCreate.status,
                  details: detail,
                  dateTimeEpoch: DateTime.now().millisecondsSinceEpoch ~/ 1000,
                ),
              );

              //  Verify if the change made was a new comment, and store it
              if (payload.change!.comment != '') {
                TaigaJobEndpoint().taigaJobCommentariesCreate(
                  session,
                  taigaJobCommentaries: TaigaJobCommentaries(
                    userId: 1,
                    jobIdId: canCreate.id!,
                    details: payload.change!.comment!,
                    dateTime: DateTime.now(),
                  ),
                );
              }
            }
          }
        }
      }

      // This is the part of the function which interact to the figma plugin
      if (payload.jobType == 'userstory' && getProjectById != null) {
        // Turn the payload.data into a TaigaUserStoryData instance
        final payloadUsData = payload.data as TaigaUserStoryData;

        // Aux to manage the ReadyForDev status
        var readyForDevAux = false;

        // If the new status is 'lista'
        if (figmaStatusConverter(huStatus:payloadUsData.jobStatus.statusName) == HuStatus.LISTA) {
          // Set the ReadyForDev on True
          readyForDevAux = true;
        }

        // If have a new user story
        if (payload.actionType == 'create') {
          // Create a HuData Instance
          final huDetails = HuData(
            name: payloadUsData.jobName,
            refNum: payloadUsData.referenceNumber,
            status: figmaStatusConverter(
              huStatus: payloadUsData.jobStatus.statusName,
            ),
            readyForDev: false,
            projectId: getProjectById.id!,
            lastStatusUpdate: DateTime.now(),
          );

          // Register a new HUData
          final huDataInfo = await FigmaEndpoint().createNewHUData(
            session,
            huData: huDetails,
          );

          // Register a new action
          FigmaEndpoint().createNewAction(
            session,
            figmaAction: FigmaAction(
              action: ActionType.create_hu,
              isActive: true,
              creationDate: DateTime.now(),
              inactiveSince: null,
              projectId: getProjectById.id!,
              huDataId: huDataInfo.id!,
            ),
          );
        } else if (payload.actionType == 'change') {
          // Create an aux to store huDataInfo
          var huDataInfo = await FigmaEndpoint().getHUDataByTaigaInfo(
            session,
            projectId: getProjectById.id!,
            huDataRefNum: payloadUsData.referenceNumber,
          );

          // If can get the Hu Data from the database
          if (huDataInfo == null) {
            // Generate a new HuData with basic information
            final huDetails = HuData(
              name: payloadUsData.jobName,
              refNum: payloadUsData.referenceNumber,
              status: figmaStatusConverter(
                huStatus: payloadUsData.jobStatus.statusName,
              ),
              readyForDev: false,
              projectId: getProjectById.id!,
              lastStatusUpdate: DateTime.now(),
            );

            // and then register that on the database
            huDataInfo = await FigmaEndpoint().createNewHUData(
              session,
              huData: huDetails,
            );
          }

          // If the sprint has been modified
          if (payload.change?.difference?.relatedSprint != null &&
              payloadUsData.relatedSprint != null) {
            // Try to get the sprint information
            var sprintInfo = await FigmaEndpoint().getSprintDataByTaigaId(
              session,
              taigaId: payloadUsData.relatedSprint?.sprintId,
            );

            // If the sprint is not registered on the database
            if (sprintInfo == null) {
              // Register the sprint
              sprintInfo = await FigmaEndpoint().createSprint(
                session,
                taigaId: payloadUsData.relatedSprint!.sprintId,
                name: payloadUsData.relatedSprint!.sprintName,
              );
            }

            // Once we have sprintInfo
            if (sprintInfo != null) {
              // Create a HuData Instance with the sprint
              final huDetails = huDataInfo;
              huDetails.sprintId = sprintInfo.id;

              // Update theHuData
              await FigmaEndpoint().updateHuData(
                session,
                huData: huDetails,
              );

              // Register a new action
              FigmaEndpoint().createNewAction(
                session,
                figmaAction: FigmaAction(
                  action: ActionType.attach_to_sprint,
                  isActive: true,
                  creationDate: DateTime.now(),
                  inactiveSince: null,
                  projectId: getProjectById.id!,
                  huDataId: huDataInfo.id!,
                ),
              );
            }
          }

          // Manage the Status Change
          if (payload.change?.difference?.status != null) {
            // Modify the status card status
            final huDetails = huDataInfo;
            huDetails.status = figmaStatusConverter(
              huStatus: payloadUsData.jobStatus.statusName,
            );

            // Register a new action
            FigmaEndpoint().createNewAction(
              session,
              figmaAction: FigmaAction(
                action: ActionType.update_hu_status,
                isActive: true,
                creationDate: DateTime.now(),
                inactiveSince: null,
                projectId: getProjectById.id!,
                huDataId: huDataInfo.id!,
              ),
            );

            // This part of the code is used to handle the information of the
            // status card

            // Get the new status into an HuStatus enum value
            final statusNewValue = figmaStatusConverter(
              huStatus: payload.change?.difference?.status?.newValue,
            );

            // Get the old status into an HuStatus enum value
            final statusOldValue = figmaStatusConverter(
              huStatus: payload.change?.difference?.status?.oldValue,
            );

            // This is used to handle the status card members
            if (statusNewValue == HuStatus.LISTA ||
                statusNewValue == HuStatus.DESARROLLANDOSE ||
                statusNewValue == HuStatus.TESTEANDOSE ||
                statusNewValue == HuStatus.UAT) {
              // Get the info if the person who move the kanban
              final performer = await UserEndpoint().getUserByTaigaId(
                session,
                taigaId: payload.performer.id,
              );

              // If can get the info of the performer
              if (performer != null) {
                // Generate a StatusCard instance with the data
                final statusCardDetails =
                    await FigmaEndpoint().createStatusDetails(
                  session,
                  statusCardDetails: StatusCardDetails(
                    date: dateFormatter(
                      date: DateTime.now(),
                    ),
                    byUserId: performer.id,
                  ),
                );

                // This is just a validation to prevent errors
                if (huDataInfo.id != null) {
                  // Get the status card based on the user story id
                  var statusCardInfo =
                      await FigmaEndpoint().getStatusCardByUserStoryId(
                    session,
                    huDataId: huDataInfo.id!,
                  );

                  // If can get the status card
                  if (statusCardInfo != null) {
                    // Update the status card of the User story
                    await FigmaEndpoint().updateStatusCard(
                      session,
                      statusCardId: statusCardInfo.id!,
                      updateValue: statusNewValue,
                      statusCardDetails: statusCardDetails,
                    );
                  } else {
                    // Then update the data based on the type
                    final statusCard = StatusCard();

                    // Update the data of the status card
                    switch (statusNewValue) {
                      case HuStatus.LISTA:
                        statusCard.approvedId = statusCardDetails.id;
                        break;
                      case HuStatus.DESARROLLANDOSE:
                        statusCard.developmentId = statusCardDetails.id;
                        break;
                      case HuStatus.TESTEANDOSE:
                        statusCard.internalTestId = statusCardDetails.id;
                        break;
                      case HuStatus.UAT:
                        statusCard.externalTestId = statusCardDetails.id;
                        break;
                      default:
                    }
                    statusCardInfo = await FigmaEndpoint().createStatusCard(
                      session,
                      statusCard: statusCard,
                    );
                  }

                  // Update the status card id. This will be made at the end of
                  // the function
                  huDetails.statusCardId = statusCardInfo.id;

                  // Register a new action 'update_hu_status_card'
                  await FigmaEndpoint().createNewAction(
                    session,
                    figmaAction: FigmaAction(
                      action: ActionType.update_hu_status_card,
                      isActive: true,
                      creationDate: DateTime.now(),
                      projectId: getProjectById.id!,
                      huDataId: huDataInfo.id!,
                    ),
                  );
                } else {
                  throw ('Error: Was not possible to get information of the user story');
                }
              } else {
                if (performer == null) {
                  throw ('Error: The performer of the action is not register on the database');
                }
              }
            }

            // This is used to handle the status card amount of days

            // This is for reset the value of a user story, we cant count the
            // days the user story spend on new, because nobody is taking care
            // of it, so, once the user story, move from new, to any other
            // start the counter
            if (statusOldValue == HuStatus.NUEVA) {
              huDetails.lastStatusUpdate = DateTime.now();
            }

            // If the status is 'APROBANDOSE'
            if (statusNewValue == HuStatus.APROBANDOSE) {
              if (huDataInfo.id != null) {
                // Get the status card based on the user story id
                var statusCardInfo =
                    await FigmaEndpoint().getStatusCardByUserStoryId(
                  session,
                  huDataId: huDataInfo.id!,
                );

                if (statusCardInfo != null && statusCardInfo.id != null) {
                  await FigmaEndpoint().updateStatusCard(
                    session,
                    statusCardId: statusCardInfo.id!,
                    updateValue: statusNewValue,
                    updateAmountOfDays: true,
                  );

                  // And for last Update the date
                  huDetails.lastStatusUpdate = DateTime.now();
                }
              }
            }

            // If the status is 'LISTA'
            if (statusNewValue == HuStatus.LISTA) {
              if (huDataInfo.id != null) {
                // Get the status card based on the user story id
                var statusCardInfo =
                    await FigmaEndpoint().getStatusCardByUserStoryId(
                  session,
                  huDataId: huDataInfo.id!,
                );

                if (statusCardInfo != null && statusCardInfo.id != null) {
                  await FigmaEndpoint().updateStatusCard(
                    session,
                    statusCardId: statusCardInfo.id!,
                    updateValue: statusNewValue,
                    updateAmountOfDays: true,
                  );

                  // And for last Update the date
                  huDetails.lastStatusUpdate = DateTime.now();
                }
              }
            }
            // If the status is 'TESTEANDOSE'
            if (statusNewValue == HuStatus.TESTEANDOSE) {
              // Get the status card based on the user story id
              var statusCardInfo =
                  await FigmaEndpoint().getStatusCardByUserStoryId(
                session,
                huDataId: huDataInfo.id!,
              );

              if (statusCardInfo != null && statusCardInfo.id != null) {
                await FigmaEndpoint().updateStatusCard(
                  session,
                  statusCardId: statusCardInfo.id!,
                  updateValue: statusNewValue,
                  updateAmountOfDays: true,
                );

                // And for last Update the date
                huDetails.lastStatusUpdate = DateTime.now();
              }
            }
            // If the status is 'CERRADA' and old value is 'UAT'
            if (statusNewValue == HuStatus.CERRADA &&
                statusOldValue == HuStatus.UAT) {
              // Get the status card based on the user story id
              var statusCardInfo =
                  await FigmaEndpoint().getStatusCardByUserStoryId(
                session,
                huDataId: huDataInfo.id!,
              );

              if (statusCardInfo != null && statusCardInfo.id != null) {
                await FigmaEndpoint().updateStatusCard(
                  session,
                  statusCardId: statusCardInfo.id!,
                  updateValue: statusNewValue,
                  updateAmountOfDays: true,
                );

                // And for last Update the date
                huDetails.lastStatusUpdate = DateTime.now();
              }
            }
            // Once all the things has been done, update the HuData in the
            // database
            await FigmaEndpoint().updateHuData(
              session,
              huData: huDetails,
            );
          }

          // If the status of the US is 'Lista', put it on ReadyForDev
          if (readyForDevAux) {
            // Read the info of the HuData, and then add the new data
            final huDetails = huDataInfo;
            huDetails.readyForDev = true;

            // Try to update theHuData
            await FigmaEndpoint().updateHuData(
              session,
              huData: huDetails,
            );

            // Register a new action
            FigmaEndpoint().createNewAction(
              session,
              figmaAction: FigmaAction(
                action: ActionType.update_ready_for_dev_status,
                isActive: true,
                creationDate: DateTime.now(),
                inactiveSince: null,
                projectId: getProjectById.id!,
                huDataId: huDataInfo.id!,
              ),
            );
          }
        }
      }
    } catch (e, st) {
      session.log('Fail at mapping the webhook $e $st');
    }

    return WebHooksView(webhookData: body);
  }
}

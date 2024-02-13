import 'package:serverpod/serverpod.dart';
import 'package:taiga_consumer_server/src/generated/protocol.dart';
import 'package:taiga_consumer_server/src/helpers/figma/amount_of_day_quality_parser.dart';
import 'package:taiga_consumer_server/src/helpers/figma/date_difference_counter.dart';

// TODO(Nacho): Create documentation for all the endpoints, and the class
// Separated by models

// TODO(Nacho): Upgrate endpoints

// TODO(Nacho): Modify the sprint model, to have taiga projectId

/// This class [FigmaEndpoint] is used to send information to the figma plugin
/// https://github.com/N-KILL/Nidus-Figma-Plugin
///
/// Those are the models relates to this endpoint:
/// <ul>

/// </ul>
class FigmaEndpoint extends Endpoint {
  /// This [figmaResponse] method, is the one who's called, by the figma plugin
  /// this have the parameter [projectName], which is used to filter the details
  /// of the projects
  Future<List<FigmaAction>?> figmaResponse(
    Session session, {
    required String projectName,
  }) async {
    // Create a log saying the endpoint is running
    session.log(
      'Running: figmaResponse endpoint',
    );

    // Get info about the project, based on the name
    final project = await TaigaProject.db.findFirstRow(
      session,
      where: (t) => t.title.equals(projectName),
    );

    // If can find the project details
    if (project != null) {
      // Filter all the FigmaActions related
      final response = await FigmaAction.db.find(
        session,
        where: (t) => t.projectId.equals(project.id) & t.isActive.equals(true),
        include: FigmaAction.include(
          huData: HuData.include(
            sprint: Sprint.include(),
            statusCard: StatusCard.include(
              approved: StatusCardDetails.include(
                byUser: User.include(),
              ),
              development: StatusCardDetails.include(
                byUser: User.include(),
              ),
              externalTest: StatusCardDetails.include(
                byUser: User.include(),
              ),
              internalTest: StatusCardDetails.include(
                byUser: User.include(),
              ),
              amountOfDays: AmountOfDays.include(),
            ),
          ),
        ),
      );

      // And return the actions
      return response;
    }

    // If cant find the project details, return null
    return null;
  }

  /// This [createNewAction] endpoint is for create a new action into the db
  /// create. And if already exist any action of the same type, and its active
  /// in this case, don't do any. Because it will works anyway
  Future<FigmaAction> createNewAction(
    Session session, {
    required FigmaAction figmaAction,
  }) async {
    // Verify first if already exist an active action of the same type.
    final verification = await FigmaAction.db.findFirstRow(
      session,
      where: (t) =>
          t.isActive.equals(true) &
          t.action.equals(figmaAction.action) &
          t.huDataId.equals(figmaAction.huDataId),
    );

    // If not exist any other active action of the same type
    if (verification == null) {
      // Create one
      final response = await FigmaAction.db.insertRow(
        session,
        figmaAction,
      );
      return response;
    } else {
      // Return the one who already exist
      return verification;
    }
  }

  Future<HuData> createNewHUData(
    Session session, {
    required HuData huData,
  }) async {
    final emptyStatusCard = await createStatusCard(
      session,
      statusCard: StatusCard(),
    );

    huData.statusCardId = emptyStatusCard.id;
    
    final response = await HuData.db.insertRow(
      session,
      huData,
    );
    return response;
  }

  Future<HuData?> updateHuData(
    Session session, {
    required HuData huData,
  }) async {
    session.log(
      'Este es huDetails en el endpoint de update huData: $huData',
    );
    // Find the HuData with that id
    final modify = await HuData.db.findFirstRow(
      session,
      where: (t) => t.refNum.equals(huData.refNum),
    );

    // If can find the HuData with that id
    if (modify != null) {
      // Modify the data of the HuData, with the data on the parameters
      modify.name = huData.name;
      modify.sprintId = huData.sprintId;
      modify.status = huData.status;
      modify.statusCardId = huData.statusCardId;
      modify.readyForDev = huData.readyForDev;
      modify.lastStatusUpdate = huData.lastStatusUpdate;

      // Try to update the HuData data on the database
      final response = await HuData.db.updateRow(
        session,
        modify,
      );

      // Create a session.log with the response data
      session.log(
        'FigmaEndpoints updateHuData Response: \n $response',
      );

      // If can update the HuData return the response data
      return response;
    }

    // Create a session.log saying an error ocurred, returning null
    session.log(
      '''FigmaEndpoints updateHuData Failed... Cannot found any HuData with 
      that RefNum Returning null''',
      level: LogLevel.warning,
    );

    // If can't modify the HuData return null
    return null;
  }

  Future<Sprint?> getSprintDataByTaigaId(
    Session session, {
    required taigaId,
  }) async {
    final sprint = await Sprint.db.findFirstRow(
      session,
      where: (t) => t.taigaId.equals(taigaId),
    );
    return sprint;
  }

  Future<Sprint?> getSprintDataBySprintName(
    Session session, {
    required String name,
  }) async {
    final sprint = await Sprint.db.findFirstRow(
      session,
      where: (t) => t.name.equals(name),
    );

    return sprint;
  }

  Future<Sprint?> createSprint(
    Session session, {
    required int taigaId,
    required String name,
  }) async {
    // Create an Sprint instance with the data
    final sprintData = Sprint(
      name: name,
      taigaId: taigaId,
    );

    //
    final sprint = await Sprint.db.insertRow(
      session,
      sprintData,
    );

    return sprint;
  }

  Future<HuData?> getHUDataByTaigaInfo(
    Session session, {
    required int projectId,
    required int huDataRefNum,
  }) async {
    final response = await HuData.db.findFirstRow(
      session,
      where: (t) =>
          t.refNum.equals(huDataRefNum) & t.projectId.equals(projectId),
    );

    return response;
  }

  Future<HuData?> getHUDataByStatusCard(
    Session session, {
    required int statusCardId,
  }) async {
    final response = await HuData.db.findFirstRow(
      session,
      where: (t) => t.statusCardId.equals(statusCardId),
    );

    return response;
  }

  // CRUD STATUS CARD STUFF

  // TODO(Nacho): Add logger

  Future<StatusCard> createStatusCard(
    Session session, {
    required StatusCard statusCard,
  }) async {
    // Create an empty register of amount of days
    final amountOfDays = await createAmountOfDays(
      session,
      amountOfDays: AmountOfDays(
          preparation: '0',
          development: '0',
          approbation: '0',
          finalApprobation: '0',
          quality: '0+0'),
    );

    // Update the status card amount of days id
    statusCard.amountOfDaysId = amountOfDays.id;

    // This is used to generate dummies, if any of those values is null
    // This will replace with a dummy details, like this:
    //
    // StatusCardDetails(
    //   date: N/A,
    //   byUser: User(
    //     username: not defined,
    //     fullName: not defined,
    //   ),
    // );

    if (statusCard.approvedId == null) {
      statusCard.approvedId = 1;
    }
    if (statusCard.developmentId == null) {
      statusCard.developmentId = 1;
    }
    if (statusCard.externalTestId == null) {
      statusCard.externalTestId = 1;
    }
    if (statusCard.internalTestId == null) {
      statusCard.internalTestId = 1;
    }

    // Insert the status card into the database
    final response = await StatusCard.db.insertRow(
      session,
      statusCard,
    );

    // And return the details
    return response;
  }

  Future<StatusCard?> getStatusCardByUserStoryId(
    Session session, {
    required int huDataId,
  }) async {
    final response = await HuData.db.findFirstRow(
      session,
      where: (t) => t.id.equals(huDataId),
      include: HuData.include(
        statusCard: StatusCard.include(),
      ),
    );
    if (response?.statusCard != null) {
      return response!.statusCard;
    }
    return null;
  }

  // TODO(Nacho): Add logger, upgrade this base code

  Future<StatusCard?> getStatusCardById(
    Session session, {
    required int statusCardId,
  }) async {
    final response = await StatusCard.db.findById(
      session,
      statusCardId,
    );

    return response;
  }

  /// This endpoint [updateStatusCard] is used to update the status card of an
  /// user story.
  ///
  /// <h4> Required values when updating details</h4>
  ///
  /// <ul>
  /// <li> [statusCardId] : [int] is the status card we re going to update </li>
  /// <li> [statusCardDetails] : [StatusCardDetails] are the details of the
  /// value we re going to update </li>
  /// <li> [updateValue] : [HuStatus] is the value we re going to update </li>
  /// <h4> Note: [updateValue] Only can be type: </h4>
  /// <ul>
  /// <li> [HuStatus.LISTA] </li>
  /// <li> [HuStatus.DESARROLLANDOSE] </li>
  /// <li> [HuStatus.TESTEANDOSE] </li>
  /// <li> [HuStatus.UAT] </li>
  /// </ul>
  /// </ul>
  ///
  /// Any other value will return an <strong>error</strong>
  ///
  ///
  /// <h4> Required values when updating amount of days</h4>
  ///
  /// <ul>
  /// <li> [statusCardId] : [int] is the status card we re going to update </li>
  /// <li> [updateAmountOfDays] : [bool] Its a bool indicating you want to
  /// modify the amount of days </li>
  /// <li> [updateValue] : [HuStatus] is the value we re going to update </li>
  /// <h4> Note: [updateValue] Only can be type: </h4>
  /// <ul>
  /// <li> [HuStatus.APROBANDOSE] </li>
  /// <li> [HuStatus.DESARROLLANDOSE] </li>
  /// <li> [HuStatus.TESTEANDOSE] </li>
  /// <li> [HuStatus.CERRADA] </li>
  /// </ul>
  /// </ul>
  ///
  /// Any other value will return an <strong>error</strong>
  Future<StatusCard> updateStatusCard(
    Session session, {
    // This is the status card we re going to update
    required int statusCardId,

    // This is the value we re going to update
    required HuStatus updateValue,

    // This are the details of the value we re going to update
    StatusCardDetails? statusCardDetails,

    // This is an option value used to handle the Amount of day value
    bool updateAmountOfDays = false,

    // This is the old status value, used to update the days, can be ignored
    HuStatus oldStatusValue = HuStatus.NUEVA,
  }) async {
    /// Get the record of the status card based on his ID
    final statusCardData = await StatusCard.db.findById(
      session,
      statusCardId,
    );

    // If already have an status card, update the values
    if (statusCardData != null) {
      try {
        /// If the boolean updateAmountOfDays is true
        if (updateAmountOfDays) {
          switch (updateValue) {
            case HuStatus.APROBANDOSE:
              // Get information of the Hu Data
              final huDataInformation = await getHUDataByStatusCard(
                session,
                statusCardId: statusCardId,
              );

              // If can get the info
              if (huDataInformation != null) {
                // Get the detail of the amountOfDays related
                final amountOfDays = await getAmountOfDaysById(
                  session,
                  amountOfDaysId: statusCardData.amountOfDaysId!,
                );

                // Generate the difference value based on the lastStatusUpdate
                // Value
                final value = dateDifferenceCounter(
                  baseDate: huDataInformation.lastStatusUpdate,
                );

                // Modify the preparation time into the generated one
                amountOfDays.preparation = value;

                // Then update the data on the database
                await updateAmountOfDaysById(
                  session,
                  amountOfDaysId: statusCardData.amountOfDaysId!,
                  amountOfDays: amountOfDays,
                );
              }
              break;

            case HuStatus.LISTA:
              // Get information of the Hu Data
              final huDataInformation = await getHUDataByStatusCard(
                session,
                statusCardId: statusCardId,
              );

              // If can get the info
              if (huDataInformation != null) {
                // Get the detail of the amountOfDays related
                final amountOfDays = await getAmountOfDaysById(
                  session,
                  amountOfDaysId: statusCardData.amountOfDaysId!,
                );

                // Generate the difference value based on the lastStatusUpdate
                // Value
                final value = dateDifferenceCounter(
                  baseDate: huDataInformation.lastStatusUpdate,
                );

                // Modify the approbation time into the generated one
                amountOfDays.approbation = value;

                // Then update the data on the database
                await updateAmountOfDaysById(
                  session,
                  amountOfDaysId: statusCardData.amountOfDaysId!,
                  amountOfDays: amountOfDays,
                );
              }
              break;

            case HuStatus.TESTEANDOSE:
              // Get information of the Hu Data
              final huDataInformation = await getHUDataByStatusCard(
                session,
                statusCardId: statusCardId,
              );

              // If can get the info
              if (huDataInformation != null) {
                // Get the detail of the amountOfDays related
                final amountOfDays = await getAmountOfDaysById(
                  session,
                  amountOfDaysId: statusCardData.amountOfDaysId!,
                );

                // Generate the difference value based on the lastStatusUpdate
                // Value
                final value = dateDifferenceCounter(
                  baseDate: huDataInformation.lastStatusUpdate,
                );

                // Modify the development time into the generated one
                amountOfDays.development = value;

                // Then update the data on the database
                await updateAmountOfDaysById(
                  session,
                  amountOfDaysId: statusCardData.amountOfDaysId!,
                  amountOfDays: amountOfDays,
                );
              }
              break;

            case HuStatus.CERRADA:
              // Get information of the Hu Data
              final huDataInformation = await getHUDataByStatusCard(
                session,
                statusCardId: statusCardId,
              );

              // If can get the info
              if (huDataInformation != null) {
                // Get the detail of the amountOfDays related
                final amountOfDays = await getAmountOfDaysById(
                  session,
                  amountOfDaysId: statusCardData.amountOfDaysId!,
                );

                // Generate the difference value based on the lastStatusUpdate
                // Value
                final value = dateDifferenceCounter(
                  baseDate: huDataInformation.lastStatusUpdate,
                );

                // Modify the development time into the generated one
                amountOfDays.development = value;

                // Then update the data on the database
                await updateAmountOfDaysById(
                  session,
                  amountOfDaysId: statusCardData.amountOfDaysId!,
                  amountOfDays: amountOfDays,
                );
              }
              break;

            // If you are using this with any status
            default:
              // If you call this endpoint with any other HuStatus, throw an error
              throw (
                'Status card, is made to work with other values, pls read the doc',
                LogLevel.error
              );
          }
          return statusCardData;
        } else {
          if (statusCardDetails != null) {
            // Then update the data based on the type
            switch (updateValue) {
              case HuStatus.LISTA:
                // If the statusCard already have a related data, remove it
                // (Ignoring the dummy :D)
                if (statusCardData.approvedId != null &&
                    statusCardData.approvedId != 1) {
                  await deleteStatusCardDetails(
                    session,
                    statusCardDetailsId: statusCardData.approvedId!,
                  );
                }

                // Then modify the value
                statusCardData.approvedId = statusCardDetails.id;
                break;

              case HuStatus.DESARROLLANDOSE:
                // If the statusCard already have a related data, remove it
                // (Ignoring the dummy :D)
                if (statusCardData.developmentId != null &&
                    statusCardData.developmentId != 1) {
                  await deleteStatusCardDetails(
                    session,
                    statusCardDetailsId: statusCardData.developmentId!,
                  );
                }

                // Then modify the value
                statusCardData.developmentId = statusCardDetails.id;
                break;

              case HuStatus.TESTEANDOSE:
                // If the statusCard already have a related data, remove it
                // (Ignoring the dummy :D)
                if (statusCardData.internalTestId != null &&
                    statusCardData.internalTestId != 1) {
                  await deleteStatusCardDetails(
                    session,
                    statusCardDetailsId: statusCardData.internalTestId!,
                  );
                }

                // Then modify the value
                statusCardData.internalTestId = statusCardDetails.id;
                break;

              case HuStatus.UAT:

                // If the statusCard already have a related data, remove it
                // (Ignoring the dummy :D)
                if (statusCardData.externalTestId != null &&
                    statusCardData.externalTestId != 1) {
                  await deleteStatusCardDetails(
                    session,
                    statusCardDetailsId: statusCardData.externalTestId!,
                  );
                }

                // Then modify the value
                statusCardData.externalTestId = statusCardDetails.id;
                break;

              // If you call this endpoint with any other HuStatus, throw an error
              default:
                throw (
                  'Status card, is made to work with other values, pls read the doc',
                  LogLevel.error
                );
            }

            // Update the user story data
            final response = await StatusCard.db.updateRow(
              session,
              statusCardData,
            );
            // Then return the updated user story data
            return response;
          } else {
            throw (
              'updateStatusCard Failed, Error: Forget to put an StatusCardDetail trying to update an status card detail...',
              LogLevel.error,
            );
          }
        }
      } catch (e) {
        throw (
          'updateStatusCard Failed, error: $e',
          LogLevel.error,
        );
      }
    } else {
      throw ('Error getting the Status Card related to the User Story');
    }
  }

  // CRUD STATUS CARD DETAILS STUFF

  Future<StatusCardDetails> createStatusDetails(
    Session session, {
    required StatusCardDetails statusCardDetails,
  }) async {
    final response = await StatusCardDetails.db.insertRow(
      session,
      statusCardDetails,
    );
    return response;
  }

  /// This endpoint [deleteStatusCardDetails] is used to delete information from
  /// a StatusCardDetails created in the database.
  ///
  /// <h4> Required data: </h4>
  ///
  /// `statusCardDetailsId`: [int] Its the id of the statusCardDetailsId on the
  /// database <br>
  Future<int> deleteStatusCardDetails(
    Session session, {
    required int statusCardDetailsId,
  }) async {
    // Message indication this endpoint is running
    session.log(
      'Running deleteStatusCardDetails Endpoint',
    );

    try {
      // Try to delete the StatusCardDetails
      final statusCardDetailsData = await StatusCardDetails.db.findById(
        session,
        statusCardDetailsId,
      );
      if (statusCardDetailsData != null) {
        // Remove the StatusCardDetails from the database
        final id = await StatusCardDetails.db.deleteRow(
          session,
          statusCardDetailsData,
        );

        // Then return his id
        return id;
      }

      // In case that we can't find any status card detail by that id,
      // throw an error
      throw (
        'Was not possible to found any status card detail with that id: $statusCardDetailsId',
      );
    } catch (e) {
      // throw an error in case of fail
      throw (
        'deleteStatusCardDetails Failed, error: $e',
        LogLevel.error,
      );
    }
  }

  Future<AmountOfDays> getAmountOfDaysById(
    Session session, {
    required int amountOfDaysId,
  }) async {
    final response = await AmountOfDays.db.findById(
      session,
      amountOfDaysId,
    );
    if (response != null) {
      return response;
    }
    throw (
      'Error: There is no AmountOfDays registered with id: $amountOfDaysId',
      LogLevel.error,
    );
  }

  Future<AmountOfDays> createAmountOfDays(
    Session session, {
    required AmountOfDays amountOfDays,
  }) async {
    final response = await AmountOfDays.db.insertRow(
      session,
      amountOfDays,
    );
    return response;
  }

  Future<AmountOfDays?> updateAmountOfDaysById(
    Session session, {
    required int amountOfDaysId,
    required AmountOfDays amountOfDays,
  }) async {
    session.log(
      'Este es huDetails en el endpoint de update amountOfDays: $amountOfDays',
    );
    // Find the amountOfDays with that id
    final modify = await AmountOfDays.db.findById(
      session,
      amountOfDaysId,
    );

    // If can find the amountOfDays with that id
    if (modify != null) {
      // Modify the data of the amountOfDays, with the data on the parameters
      modify.preparation = amountOfDays.preparation;
      modify.approbation = amountOfDays.approbation;
      modify.development = amountOfDays.development;
      modify.finalApprobation = amountOfDays.finalApprobation;

      // Handle the quality values once it have those two
      // The left part of quality means our side, which is preparation and
      // development spend time
      if (modify.preparation != '0' && modify.development != '0') {
        // Get the average of this two values
        final qualityLeftValue =
            (int.parse(modify.preparation) + int.parse(modify.development)) / 2;

        // Update the quality value using a function
        modify.quality = AmountOfDayQualityParser(
          amountOfDayQuality: modify.quality,
          newLeftValue: qualityLeftValue.floor(),
        );
      }

      // Handle the quality values once it have those two
      // The right part of quality means approved side, which is on approbation
      // and last instance approbation spend time
      if (modify.approbation != '0') {
        var qualityRightValue = int.parse(modify.approbation);

        // Some project doesn't have final approbation, because it is external
        // So this is optional
        if (modify.finalApprobation != '0') {
          final value =
              (int.parse(modify.preparation) + int.parse(modify.approbation)) /
                  2;
          qualityRightValue = value.floor();
        }

        // Update the quality value using a function
        modify.quality = AmountOfDayQualityParser(
          amountOfDayQuality: modify.quality,
          newLeftValue: qualityRightValue.floor(),
        );
      }

      // Try to update the amountOfDays data on the database
      final response = await AmountOfDays.db.updateRow(
        session,
        modify,
      );

      // Create a session.log with the response data
      session.log(
        'FigmaEndpoints updateAmountOfDays Response: \n $response',
      );

      // If can update the amountOfDays return the response data
      return response;
    }

    // Create a session.log saying an error ocurred, returning null
    session.log(
      '''FigmaEndpoints updateAmountOfDays Failed... Cannot found any amountOfDays with 
      that RefNum Returning null''',
      level: LogLevel.warning,
    );

    // If can't modify the amountOfDays return null
    return null;
  }
}

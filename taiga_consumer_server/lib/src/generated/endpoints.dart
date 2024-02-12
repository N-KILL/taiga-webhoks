/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/figma_endpoints.dart' as _i2;
import '../endpoints/project_endpoint.dart' as _i3;
import '../endpoints/taiga_job_endpoints.dart' as _i4;
import '../endpoints/user_endpoints.dart' as _i5;
import 'package:taiga_consumer_server/src/generated/protocol/figma/figma_action.dart'
    as _i6;
import 'package:taiga_consumer_server/src/generated/protocol/figma/figma_hu_data.dart'
    as _i7;
import 'package:taiga_consumer_server/src/generated/protocol/figma/status_card.dart'
    as _i8;
import 'package:taiga_consumer_server/src/generated/protocol/figma/hu_status_enum.dart'
    as _i9;
import 'package:taiga_consumer_server/src/generated/protocol/figma/status_card_detail.dart'
    as _i10;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart'
    as _i11;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart'
    as _i12;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart'
    as _i13;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_commentaries.dart'
    as _i14;
import 'package:taiga_consumer_server/src/generated/protocol/user.dart' as _i15;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'figma': _i2.FigmaEndpoint()
        ..initialize(
          server,
          'figma',
          null,
        ),
      'taigaProject': _i3.TaigaProjectEndpoint()
        ..initialize(
          server,
          'taigaProject',
          null,
        ),
      'taigaJob': _i4.TaigaJobEndpoint()
        ..initialize(
          server,
          'taigaJob',
          null,
        ),
      'user': _i5.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
    };
    connectors['figma'] = _i1.EndpointConnector(
      name: 'figma',
      endpoint: endpoints['figma']!,
      methodConnectors: {
        'figmaResponse': _i1.MethodConnector(
          name: 'figmaResponse',
          params: {
            'projectName': _i1.ParameterDescription(
              name: 'projectName',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).figmaResponse(
            session,
            projectName: params['projectName'],
          ),
        ),
        'createNewAction': _i1.MethodConnector(
          name: 'createNewAction',
          params: {
            'figmaAction': _i1.ParameterDescription(
              name: 'figmaAction',
              type: _i1.getType<_i6.FigmaAction>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).createNewAction(
            session,
            figmaAction: params['figmaAction'],
          ),
        ),
        'createNewHUData': _i1.MethodConnector(
          name: 'createNewHUData',
          params: {
            'huData': _i1.ParameterDescription(
              name: 'huData',
              type: _i1.getType<_i7.HuData>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).createNewHUData(
            session,
            huData: params['huData'],
          ),
        ),
        'updateHuData': _i1.MethodConnector(
          name: 'updateHuData',
          params: {
            'huData': _i1.ParameterDescription(
              name: 'huData',
              type: _i1.getType<_i7.HuData>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).updateHuData(
            session,
            huData: params['huData'],
          ),
        ),
        'getSprintDataByTaigaId': _i1.MethodConnector(
          name: 'getSprintDataByTaigaId',
          params: {
            'taigaId': _i1.ParameterDescription(
              name: 'taigaId',
              type: _i1.getType<dynamic>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).getSprintDataByTaigaId(
            session,
            taigaId: params['taigaId'],
          ),
        ),
        'getSprintDataBySprintName': _i1.MethodConnector(
          name: 'getSprintDataBySprintName',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint)
                  .getSprintDataBySprintName(
            session,
            name: params['name'],
          ),
        ),
        'createSprint': _i1.MethodConnector(
          name: 'createSprint',
          params: {
            'taigaId': _i1.ParameterDescription(
              name: 'taigaId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).createSprint(
            session,
            taigaId: params['taigaId'],
            name: params['name'],
          ),
        ),
        'getHUData': _i1.MethodConnector(
          name: 'getHUData',
          params: {
            'projectId': _i1.ParameterDescription(
              name: 'projectId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'huDataRefNum': _i1.ParameterDescription(
              name: 'huDataRefNum',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).getHUData(
            session,
            projectId: params['projectId'],
            huDataRefNum: params['huDataRefNum'],
          ),
        ),
        'createStatusCard': _i1.MethodConnector(
          name: 'createStatusCard',
          params: {
            'statusCard': _i1.ParameterDescription(
              name: 'statusCard',
              type: _i1.getType<_i8.StatusCard>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).createStatusCard(
            session,
            statusCard: params['statusCard'],
          ),
        ),
        'getStatusCardByUserStoryId': _i1.MethodConnector(
          name: 'getStatusCardByUserStoryId',
          params: {
            'huDataId': _i1.ParameterDescription(
              name: 'huDataId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint)
                  .getStatusCardByUserStoryId(
            session,
            huDataId: params['huDataId'],
          ),
        ),
        'getStatusCardById': _i1.MethodConnector(
          name: 'getStatusCardById',
          params: {
            'statusCardId': _i1.ParameterDescription(
              name: 'statusCardId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).getStatusCardById(
            session,
            statusCardId: params['statusCardId'],
          ),
        ),
        'updateStatusCard': _i1.MethodConnector(
          name: 'updateStatusCard',
          params: {
            'statusCardId': _i1.ParameterDescription(
              name: 'statusCardId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'updateValue': _i1.ParameterDescription(
              name: 'updateValue',
              type: _i1.getType<_i9.HuStatus>(),
              nullable: false,
            ),
            'statusCardDetails': _i1.ParameterDescription(
              name: 'statusCardDetails',
              type: _i1.getType<_i10.StatusCardDetails>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).updateStatusCard(
            session,
            statusCardId: params['statusCardId'],
            updateValue: params['updateValue'],
            statusCardDetails: params['statusCardDetails'],
          ),
        ),
        'createStatusDetails': _i1.MethodConnector(
          name: 'createStatusDetails',
          params: {
            'statusCardDetails': _i1.ParameterDescription(
              name: 'statusCardDetails',
              type: _i1.getType<_i10.StatusCardDetails>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).createStatusDetails(
            session,
            statusCardDetails: params['statusCardDetails'],
          ),
        ),
        'deleteStatusCardDetails': _i1.MethodConnector(
          name: 'deleteStatusCardDetails',
          params: {
            'statusCardDetailsId': _i1.ParameterDescription(
              name: 'statusCardDetailsId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['figma'] as _i2.FigmaEndpoint).deleteStatusCardDetails(
            session,
            statusCardDetailsId: params['statusCardDetailsId'],
          ),
        ),
      },
    );
    connectors['taigaProject'] = _i1.EndpointConnector(
      name: 'taigaProject',
      endpoint: endpoints['taigaProject']!,
      methodConnectors: {
        'projectCreate': _i1.MethodConnector(
          name: 'projectCreate',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i11.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i3.TaigaProjectEndpoint)
                  .projectCreate(
            session,
            taigaProject: params['taigaProject'],
          ),
        ),
        'projectCreateOnBulk': _i1.MethodConnector(
          name: 'projectCreateOnBulk',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<List<_i11.TaigaProject>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i3.TaigaProjectEndpoint)
                  .projectCreateOnBulk(
            session,
            taigaProject: params['taigaProject'],
          ),
        ),
        'projectReadById': _i1.MethodConnector(
          name: 'projectReadById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i3.TaigaProjectEndpoint)
                  .projectReadById(
            session,
            id: params['id'],
          ),
        ),
        'projectReadByTitle': _i1.MethodConnector(
          name: 'projectReadByTitle',
          params: {
            'projectTitle': _i1.ParameterDescription(
              name: 'projectTitle',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i3.TaigaProjectEndpoint)
                  .projectReadByTitle(
            session,
            projectTitle: params['projectTitle'],
          ),
        ),
        'projectReadByTaigaProjectId': _i1.MethodConnector(
          name: 'projectReadByTaigaProjectId',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i3.TaigaProjectEndpoint)
                  .projectReadByTaigaProjectId(
            session,
            id: params['id'],
          ),
        ),
        'projectUpdateProject': _i1.MethodConnector(
          name: 'projectUpdateProject',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i11.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i3.TaigaProjectEndpoint)
                  .projectUpdateProject(
            session,
            taigaProject: params['taigaProject'],
          ),
        ),
        'projectDeleteProject': _i1.MethodConnector(
          name: 'projectDeleteProject',
          params: {
            'taigaProject': _i1.ParameterDescription(
              name: 'taigaProject',
              type: _i1.getType<_i11.TaigaProject>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i3.TaigaProjectEndpoint)
                  .projectDeleteProject(
            session,
            taigaProject: params['taigaProject'],
          ),
        ),
        'projectDeleteProjectById': _i1.MethodConnector(
          name: 'projectDeleteProjectById',
          params: {
            'projectId': _i1.ParameterDescription(
              name: 'projectId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaProject'] as _i3.TaigaProjectEndpoint)
                  .projectDeleteProjectById(
            session,
            projectId: params['projectId'],
          ),
        ),
      },
    );
    connectors['taigaJob'] = _i1.EndpointConnector(
      name: 'taigaJob',
      endpoint: endpoints['taigaJob']!,
      methodConnectors: {
        'taigaJobCreate': _i1.MethodConnector(
          name: 'taigaJobCreate',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i12.TaigaJob>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint).taigaJobCreate(
            session,
            taigaJob: params['taigaJob'],
          ),
        ),
        'taigaJobCreateOnBulk': _i1.MethodConnector(
          name: 'taigaJobCreateOnBulk',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<List<_i12.TaigaJob>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobCreateOnBulk(
            session,
            taigaJob: params['taigaJob'],
          ),
        ),
        'taigaJobReadById': _i1.MethodConnector(
          name: 'taigaJobReadById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint).taigaJobReadById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobReadByTitle': _i1.MethodConnector(
          name: 'taigaJobReadByTitle',
          params: {
            'title': _i1.ParameterDescription(
              name: 'title',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobReadByTitle(
            session,
            title: params['title'],
          ),
        ),
        'taigaJobReadByType': _i1.MethodConnector(
          name: 'taigaJobReadByType',
          params: {
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobReadByType(
            session,
            type: params['type'],
          ),
        ),
        'taigaJobReadByStatus': _i1.MethodConnector(
          name: 'taigaJobReadByStatus',
          params: {
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobReadByStatus(
            session,
            status: params['status'],
          ),
        ),
        'taigaJobReadByProjectIdAndRefNumber': _i1.MethodConnector(
          name: 'taigaJobReadByProjectIdAndRefNumber',
          params: {
            'projectId': _i1.ParameterDescription(
              name: 'projectId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'taigaRefNumber': _i1.ParameterDescription(
              name: 'taigaRefNumber',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobReadByProjectIdAndRefNumber(
            session,
            projectId: params['projectId'],
            taigaRefNumber: params['taigaRefNumber'],
          ),
        ),
        'taigaJobUpdateById': _i1.MethodConnector(
          name: 'taigaJobUpdateById',
          params: {
            'taigaJob': _i1.ParameterDescription(
              name: 'taigaJob',
              type: _i1.getType<_i12.TaigaJob>(),
              nullable: false,
            ),
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobUpdateById(
            session,
            taigaJob: params['taigaJob'],
            id: params['id'],
          ),
        ),
        'TaigaJobDeleteById': _i1.MethodConnector(
          name: 'TaigaJobDeleteById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .TaigaJobDeleteById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobUpdatesCreate': _i1.MethodConnector(
          name: 'taigaJobUpdatesCreate',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<_i13.TaigaJobUpdates>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobUpdatesCreate(
            session,
            taigaJobUpdates: params['taigaJobUpdates'],
          ),
        ),
        'taigaJobUpdatesCreateOnBulk': _i1.MethodConnector(
          name: 'taigaJobUpdatesCreateOnBulk',
          params: {
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<List<_i13.TaigaJobUpdates>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobUpdatesCreateOnBulk(
            session,
            taigaJobUpdates: params['taigaJobUpdates'],
          ),
        ),
        'taigaJobUpdatesReadById': _i1.MethodConnector(
          name: 'taigaJobUpdatesReadById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobUpdatesReadById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobUpdatesReadFilteringByEpoch': _i1.MethodConnector(
          name: 'taigaJobUpdatesReadFilteringByEpoch',
          params: {
            'min': _i1.ParameterDescription(
              name: 'min',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'max': _i1.ParameterDescription(
              name: 'max',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobUpdatesReadFilteringByEpoch(
            session,
            min: params['min'],
            max: params['max'],
          ),
        ),
        'taigaJobUpdatesUpdateById': _i1.MethodConnector(
          name: 'taigaJobUpdatesUpdateById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'taigaJobUpdates': _i1.ParameterDescription(
              name: 'taigaJobUpdates',
              type: _i1.getType<_i13.TaigaJobUpdates>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobUpdatesUpdateById(
            session,
            id: params['id'],
            taigaJobUpdates: params['taigaJobUpdates'],
          ),
        ),
        'taigaJobUpdatesDeleteById': _i1.MethodConnector(
          name: 'taigaJobUpdatesDeleteById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobUpdatesDeleteById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobCommentariesCreate': _i1.MethodConnector(
          name: 'taigaJobCommentariesCreate',
          params: {
            'taigaJobCommentaries': _i1.ParameterDescription(
              name: 'taigaJobCommentaries',
              type: _i1.getType<_i14.TaigaJobCommentaries>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobCommentariesCreate(
            session,
            taigaJobCommentaries: params['taigaJobCommentaries'],
          ),
        ),
        'taigaJobCommentariesCreateOnBulk': _i1.MethodConnector(
          name: 'taigaJobCommentariesCreateOnBulk',
          params: {
            'taigaJobCommentaries': _i1.ParameterDescription(
              name: 'taigaJobCommentaries',
              type: _i1.getType<List<_i14.TaigaJobCommentaries>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobCommentariesCreateOnBulk(
            session,
            taigaJobCommentaries: params['taigaJobCommentaries'],
          ),
        ),
        'taigaJobCommentariesReadById': _i1.MethodConnector(
          name: 'taigaJobCommentariesReadById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobCommentariesReadById(
            session,
            id: params['id'],
          ),
        ),
        'taigaJobCommentariesUpdateById': _i1.MethodConnector(
          name: 'taigaJobCommentariesUpdateById',
          params: {
            'taigaJobCommentaries': _i1.ParameterDescription(
              name: 'taigaJobCommentaries',
              type: _i1.getType<_i14.TaigaJobCommentaries>(),
              nullable: false,
            ),
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobCommentariesUpdateById(
            session,
            taigaJobCommentaries: params['taigaJobCommentaries'],
            id: params['id'],
          ),
        ),
        'taigaJobCommentariesDeleteById': _i1.MethodConnector(
          name: 'taigaJobCommentariesDeleteById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['taigaJob'] as _i4.TaigaJobEndpoint)
                  .taigaJobCommentariesDeleteById(
            session,
            id: params['id'],
          ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'getAllUsers': _i1.MethodConnector(
          name: 'getAllUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getAllUsers(session),
        ),
        'getUserById': _i1.MethodConnector(
          name: 'getUserById',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getUserById(
            session,
            userId: params['userId'],
          ),
        ),
        'getUserByTaigaId': _i1.MethodConnector(
          name: 'getUserByTaigaId',
          params: {
            'taigaId': _i1.ParameterDescription(
              name: 'taigaId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getUserByTaigaId(
            session,
            taigaId: params['taigaId'],
          ),
        ),
        'getUserByGitHubId': _i1.MethodConnector(
          name: 'getUserByGitHubId',
          params: {
            'gitHubId': _i1.ParameterDescription(
              name: 'gitHubId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getUserByGitHubId(
            session,
            gitHubId: params['gitHubId'],
          ),
        ),
        'getUserByGitLabId': _i1.MethodConnector(
          name: 'getUserByGitLabId',
          params: {
            'gitLabId': _i1.ParameterDescription(
              name: 'gitLabId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getUserByGitLabId(
            session,
            gitLabId: params['gitLabId'],
          ),
        ),
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i15.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).createUser(
            session,
            user: params['user'],
          ),
        ),
        'createMultipleUsers': _i1.MethodConnector(
          name: 'createMultipleUsers',
          params: {
            'users': _i1.ParameterDescription(
              name: 'users',
              type: _i1.getType<List<_i15.User>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).createMultipleUsers(
            session,
            users: params['users'],
          ),
        ),
        'updateUserById': _i1.MethodConnector(
          name: 'updateUserById',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i15.User>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).updateUserById(
            session,
            userId: params['userId'],
            user: params['user'],
          ),
        ),
        'deleteUser': _i1.MethodConnector(
          name: 'deleteUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).deleteUser(
            session,
            userId: params['userId'],
          ),
        ),
        'GenerateUsersFromTaigaProject': _i1.MethodConnector(
          name: 'GenerateUsersFromTaigaProject',
          params: {
            'taigaUsername': _i1.ParameterDescription(
              name: 'taigaUsername',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'taigaPassword': _i1.ParameterDescription(
              name: 'taigaPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'taigaProjectId': _i1.ParameterDescription(
              name: 'taigaProjectId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint)
                  .GenerateUsersFromTaigaProject(
            session,
            taigaUsername: params['taigaUsername'],
            taigaPassword: params['taigaPassword'],
            taigaProjectId: params['taigaProjectId'],
          ),
        ),
      },
    );
  }
}

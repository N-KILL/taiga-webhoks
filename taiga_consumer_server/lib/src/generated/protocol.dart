/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'protocol/figma/action_enum.dart' as _i3;
import 'protocol/figma/day_counter.dart' as _i4;
import 'protocol/figma/figma_action.dart' as _i5;
import 'protocol/figma/figma_hu_data.dart' as _i6;
import 'protocol/figma/hu_status_enum.dart' as _i7;
import 'protocol/figma/sprint.dart' as _i8;
import 'protocol/figma/status_card.dart' as _i9;
import 'protocol/figma/status_card_detail.dart' as _i10;
import 'protocol/taiga/taiga_job.dart' as _i11;
import 'protocol/taiga/taiga_job_commentaries.dart' as _i12;
import 'protocol/taiga/taiga_job_updates.dart' as _i13;
import 'protocol/taiga/taiga_project.dart' as _i14;
import 'protocol/user.dart' as _i15;
import 'package:taiga_consumer_server/src/generated/protocol/figma/figma_action.dart'
    as _i16;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart'
    as _i17;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart'
    as _i18;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart'
    as _i19;
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_commentaries.dart'
    as _i20;
export 'protocol/figma/action_enum.dart';
export 'protocol/figma/day_counter.dart';
export 'protocol/figma/figma_action.dart';
export 'protocol/figma/figma_hu_data.dart';
export 'protocol/figma/hu_status_enum.dart';
export 'protocol/figma/sprint.dart';
export 'protocol/figma/status_card.dart';
export 'protocol/figma/status_card_detail.dart';
export 'protocol/taiga/taiga_job.dart';
export 'protocol/taiga/taiga_job_commentaries.dart';
export 'protocol/taiga/taiga_job_updates.dart';
export 'protocol/taiga/taiga_project.dart';
export 'protocol/user.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'figma_action',
      dartName: 'FigmaAction',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'figma_action_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'action',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ActionType',
        ),
        _i2.ColumnDefinition(
          name: 'huDataId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isActive',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'creationDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'inactiveSince',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'projectId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'figma_action_fk_0',
          columns: ['huDataId'],
          referenceTable: 'hu_data',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'figma_action_fk_1',
          columns: ['projectId'],
          referenceTable: 'taiga_project',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'figma_action_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'figma_day_counter',
      dartName: 'AmountOfDays',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'figma_day_counter_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'preparation',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'development',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'approbation',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'finalApprobation',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'quality',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'figma_day_counter_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'hu_data',
      dartName: 'HuData',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'hu_data_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'refNum',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:HuStatus',
        ),
        _i2.ColumnDefinition(
          name: 'readyForDev',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'sprintId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'statusCardId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'projectId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'hu_data_fk_0',
          columns: ['sprintId'],
          referenceTable: 'sprint_data',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'hu_data_fk_1',
          columns: ['statusCardId'],
          referenceTable: 'status_card',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'hu_data_fk_2',
          columns: ['projectId'],
          referenceTable: 'taiga_project',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'hu_data_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sprint_data',
      dartName: 'Sprint',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'sprint_data_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'taigaId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sprint_data_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'status_card',
      dartName: 'StatusCard',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'status_card_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'approvedId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'developmentId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'internalTestId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'externalTestId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'amountOfDaysId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'status_card_fk_0',
          columns: ['approvedId'],
          referenceTable: 'status_card_details',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'status_card_fk_1',
          columns: ['developmentId'],
          referenceTable: 'status_card_details',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'status_card_fk_2',
          columns: ['internalTestId'],
          referenceTable: 'status_card_details',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'status_card_fk_3',
          columns: ['externalTestId'],
          referenceTable: 'status_card_details',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'status_card_fk_4',
          columns: ['amountOfDaysId'],
          referenceTable: 'figma_day_counter',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'status_card_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'status_card_details',
      dartName: 'StatusCardDetails',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'status_card_details_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'byUserId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'status_card_details_fk_0',
          columns: ['byUserId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'status_card_details_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'taiga_job',
      dartName: 'TaigaJob',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'taiga_job_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'taigaRefNumber',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'projectId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'taiga_job_fk_0',
          columns: ['projectId'],
          referenceTable: 'taiga_project',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'taiga_job_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'taiga_job_commentaries',
      dartName: 'TaigaJobCommentaries',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'taiga_job_commentaries_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'jobIdId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'details',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'dateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'taiga_job_commentaries_fk_0',
          columns: ['jobIdId'],
          referenceTable: 'taiga_job',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'taiga_job_commentaries_fk_1',
          columns: ['userId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'taiga_job_commentaries_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'taiga_job_updates',
      dartName: 'TaigaJobUpdates',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'taiga_job_updates_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'jobId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'details',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'dateTimeEpoch',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'commentId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'taiga_job_updates_fk_0',
          columns: ['jobId'],
          referenceTable: 'taiga_job',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'taiga_job_updates_fk_1',
          columns: ['commentId'],
          referenceTable: 'taiga_job_commentaries',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'taiga_job_updates_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'taiga_project',
      dartName: 'TaigaProject',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'taiga_project_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'taigaId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'taiga_project_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'users',
      dartName: 'User',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'users_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'username',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'userAvatar',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'fullName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'taigaRoles',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _i2.ColumnDefinition(
          name: 'taigaId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'gitHubId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'gitLabId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'users_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.ActionType) {
      return _i3.ActionType.fromJson(data) as T;
    }
    if (t == _i4.AmountOfDays) {
      return _i4.AmountOfDays.fromJson(data, this) as T;
    }
    if (t == _i5.FigmaAction) {
      return _i5.FigmaAction.fromJson(data, this) as T;
    }
    if (t == _i6.HuData) {
      return _i6.HuData.fromJson(data, this) as T;
    }
    if (t == _i7.HuStatus) {
      return _i7.HuStatus.fromJson(data) as T;
    }
    if (t == _i8.Sprint) {
      return _i8.Sprint.fromJson(data, this) as T;
    }
    if (t == _i9.StatusCard) {
      return _i9.StatusCard.fromJson(data, this) as T;
    }
    if (t == _i10.StatusCardDetails) {
      return _i10.StatusCardDetails.fromJson(data, this) as T;
    }
    if (t == _i11.TaigaJob) {
      return _i11.TaigaJob.fromJson(data, this) as T;
    }
    if (t == _i12.TaigaJobCommentaries) {
      return _i12.TaigaJobCommentaries.fromJson(data, this) as T;
    }
    if (t == _i13.TaigaJobUpdates) {
      return _i13.TaigaJobUpdates.fromJson(data, this) as T;
    }
    if (t == _i14.TaigaProject) {
      return _i14.TaigaProject.fromJson(data, this) as T;
    }
    if (t == _i15.User) {
      return _i15.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.ActionType?>()) {
      return (data != null ? _i3.ActionType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.AmountOfDays?>()) {
      return (data != null ? _i4.AmountOfDays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.FigmaAction?>()) {
      return (data != null ? _i5.FigmaAction.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.HuData?>()) {
      return (data != null ? _i6.HuData.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.HuStatus?>()) {
      return (data != null ? _i7.HuStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Sprint?>()) {
      return (data != null ? _i8.Sprint.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.StatusCard?>()) {
      return (data != null ? _i9.StatusCard.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.StatusCardDetails?>()) {
      return (data != null ? _i10.StatusCardDetails.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i11.TaigaJob?>()) {
      return (data != null ? _i11.TaigaJob.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.TaigaJobCommentaries?>()) {
      return (data != null
          ? _i12.TaigaJobCommentaries.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i13.TaigaJobUpdates?>()) {
      return (data != null ? _i13.TaigaJobUpdates.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.TaigaProject?>()) {
      return (data != null ? _i14.TaigaProject.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.User?>()) {
      return (data != null ? _i15.User.fromJson(data, this) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i16.FigmaAction>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.FigmaAction>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.TaigaProject>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.TaigaProject>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i17.TaigaProject>) {
      return (data as List)
          .map((e) => deserialize<_i17.TaigaProject>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i18.TaigaJob>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i18.TaigaJob>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i18.TaigaJob>) {
      return (data as List).map((e) => deserialize<_i18.TaigaJob>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i18.TaigaJob>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i18.TaigaJob>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i18.TaigaJob>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i18.TaigaJob>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i19.TaigaJobUpdates>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.TaigaJobUpdates>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i19.TaigaJobUpdates>) {
      return (data as List)
          .map((e) => deserialize<_i19.TaigaJobUpdates>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i19.TaigaJobUpdates>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.TaigaJobUpdates>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.TaigaJobCommentaries>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i20.TaigaJobCommentaries>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i20.TaigaJobCommentaries>) {
      return (data as List)
          .map((e) => deserialize<_i20.TaigaJobCommentaries>(e))
          .toList() as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.ActionType) {
      return 'ActionType';
    }
    if (data is _i4.AmountOfDays) {
      return 'AmountOfDays';
    }
    if (data is _i5.FigmaAction) {
      return 'FigmaAction';
    }
    if (data is _i6.HuData) {
      return 'HuData';
    }
    if (data is _i7.HuStatus) {
      return 'HuStatus';
    }
    if (data is _i8.Sprint) {
      return 'Sprint';
    }
    if (data is _i9.StatusCard) {
      return 'StatusCard';
    }
    if (data is _i10.StatusCardDetails) {
      return 'StatusCardDetails';
    }
    if (data is _i11.TaigaJob) {
      return 'TaigaJob';
    }
    if (data is _i12.TaigaJobCommentaries) {
      return 'TaigaJobCommentaries';
    }
    if (data is _i13.TaigaJobUpdates) {
      return 'TaigaJobUpdates';
    }
    if (data is _i14.TaigaProject) {
      return 'TaigaProject';
    }
    if (data is _i15.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ActionType') {
      return deserialize<_i3.ActionType>(data['data']);
    }
    if (data['className'] == 'AmountOfDays') {
      return deserialize<_i4.AmountOfDays>(data['data']);
    }
    if (data['className'] == 'FigmaAction') {
      return deserialize<_i5.FigmaAction>(data['data']);
    }
    if (data['className'] == 'HuData') {
      return deserialize<_i6.HuData>(data['data']);
    }
    if (data['className'] == 'HuStatus') {
      return deserialize<_i7.HuStatus>(data['data']);
    }
    if (data['className'] == 'Sprint') {
      return deserialize<_i8.Sprint>(data['data']);
    }
    if (data['className'] == 'StatusCard') {
      return deserialize<_i9.StatusCard>(data['data']);
    }
    if (data['className'] == 'StatusCardDetails') {
      return deserialize<_i10.StatusCardDetails>(data['data']);
    }
    if (data['className'] == 'TaigaJob') {
      return deserialize<_i11.TaigaJob>(data['data']);
    }
    if (data['className'] == 'TaigaJobCommentaries') {
      return deserialize<_i12.TaigaJobCommentaries>(data['data']);
    }
    if (data['className'] == 'TaigaJobUpdates') {
      return deserialize<_i13.TaigaJobUpdates>(data['data']);
    }
    if (data['className'] == 'TaigaProject') {
      return deserialize<_i14.TaigaProject>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i15.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.AmountOfDays:
        return _i4.AmountOfDays.t;
      case _i5.FigmaAction:
        return _i5.FigmaAction.t;
      case _i6.HuData:
        return _i6.HuData.t;
      case _i8.Sprint:
        return _i8.Sprint.t;
      case _i9.StatusCard:
        return _i9.StatusCard.t;
      case _i10.StatusCardDetails:
        return _i10.StatusCardDetails.t;
      case _i11.TaigaJob:
        return _i11.TaigaJob.t;
      case _i12.TaigaJobCommentaries:
        return _i12.TaigaJobCommentaries.t;
      case _i13.TaigaJobUpdates:
        return _i13.TaigaJobUpdates.t;
      case _i14.TaigaProject:
        return _i14.TaigaProject.t;
      case _i15.User:
        return _i15.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'taiga_consumer';
}

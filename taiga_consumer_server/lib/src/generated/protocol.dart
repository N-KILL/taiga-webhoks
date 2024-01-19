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
import 'protocol/error_enum.dart' as _i3;
import 'protocol/exception.dart' as _i4;
import 'protocol/job_commentaries.dart' as _i5;
import 'protocol/taiga_jobs.dart' as _i6;
import 'protocol/updates.dart' as _i7;
import 'protocol/user.dart' as _i8;
export 'protocol/error_enum.dart';
export 'protocol/exception.dart';
export 'protocol/job_commentaries.dart';
export 'protocol/taiga_jobs.dart';
export 'protocol/updates.dart';
export 'protocol/user.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
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
      ],
      foreignKeys: [],
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
          name: 'userIdId',
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
          columns: ['userIdId'],
          referenceTable: 'user',
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
          name: 'jobIdId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
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
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'taiga_job_updates_fk_0',
          columns: ['jobIdId'],
          referenceTable: 'taiga_job',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
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
      name: 'user',
      dartName: 'User',
      schema: 'public',
      module: 'taiga_consumer',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'username',
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
          indexName: 'user_pkey',
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
    if (t == _i3.ErrorEnum) {
      return _i3.ErrorEnum.fromJson(data) as T;
    }
    if (t == _i4.MyException) {
      return _i4.MyException.fromJson(data, this) as T;
    }
    if (t == _i5.TaigaJobCommentaries) {
      return _i5.TaigaJobCommentaries.fromJson(data, this) as T;
    }
    if (t == _i6.TaigaJob) {
      return _i6.TaigaJob.fromJson(data, this) as T;
    }
    if (t == _i7.TaigaJobUpdates) {
      return _i7.TaigaJobUpdates.fromJson(data, this) as T;
    }
    if (t == _i8.User) {
      return _i8.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.ErrorEnum?>()) {
      return (data != null ? _i3.ErrorEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.MyException?>()) {
      return (data != null ? _i4.MyException.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.TaigaJobCommentaries?>()) {
      return (data != null
          ? _i5.TaigaJobCommentaries.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i6.TaigaJob?>()) {
      return (data != null ? _i6.TaigaJob.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.TaigaJobUpdates?>()) {
      return (data != null ? _i7.TaigaJobUpdates.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.User?>()) {
      return (data != null ? _i8.User.fromJson(data, this) : null) as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.ErrorEnum) {
      return 'ErrorEnum';
    }
    if (data is _i4.MyException) {
      return 'MyException';
    }
    if (data is _i5.TaigaJobCommentaries) {
      return 'TaigaJobCommentaries';
    }
    if (data is _i6.TaigaJob) {
      return 'TaigaJob';
    }
    if (data is _i7.TaigaJobUpdates) {
      return 'TaigaJobUpdates';
    }
    if (data is _i8.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ErrorEnum') {
      return deserialize<_i3.ErrorEnum>(data['data']);
    }
    if (data['className'] == 'MyException') {
      return deserialize<_i4.MyException>(data['data']);
    }
    if (data['className'] == 'TaigaJobCommentaries') {
      return deserialize<_i5.TaigaJobCommentaries>(data['data']);
    }
    if (data['className'] == 'TaigaJob') {
      return deserialize<_i6.TaigaJob>(data['data']);
    }
    if (data['className'] == 'TaigaJobUpdates') {
      return deserialize<_i7.TaigaJobUpdates>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i8.User>(data['data']);
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
      case _i5.TaigaJobCommentaries:
        return _i5.TaigaJobCommentaries.t;
      case _i6.TaigaJob:
        return _i6.TaigaJob.t;
      case _i7.TaigaJobUpdates:
        return _i7.TaigaJobUpdates.t;
      case _i8.User:
        return _i8.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'taiga_consumer';
}

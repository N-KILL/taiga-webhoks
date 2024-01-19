/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class TaigaJob extends _i1.TableRow {
  TaigaJob._({
    int? id,
    required this.type,
    required this.title,
    required this.description,
    required this.status,
  }) : super(id);

  factory TaigaJob({
    int? id,
    required String type,
    required String title,
    required String description,
    required String status,
  }) = _TaigaJobImpl;

  factory TaigaJob.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaJob(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
    );
  }

  static final t = TaigaJobTable();

  static const db = TaigaJobRepository._();

  String type;

  String title;

  String description;

  String status;

  @override
  _i1.Table get table => t;

  TaigaJob copyWith({
    int? id,
    String? type,
    String? title,
    String? description,
    String? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'type': type,
      'title': title,
      'description': description,
      'status': status,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'type': type,
      'title': title,
      'description': description,
      'status': status,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'type': type,
      'title': title,
      'description': description,
      'status': status,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'type':
        type = value;
        return;
      case 'title':
        title = value;
        return;
      case 'description':
        description = value;
        return;
      case 'status':
        status = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<TaigaJob>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TaigaJob>(
      where: where != null ? where(TaigaJob.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<TaigaJob?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TaigaJob>(
      where: where != null ? where(TaigaJob.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<TaigaJob?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TaigaJob>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaJobTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TaigaJob>(
      where: where(TaigaJob.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    TaigaJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    TaigaJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    TaigaJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TaigaJob>(
      where: where != null ? where(TaigaJob.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TaigaJobInclude include() {
    return TaigaJobInclude._();
  }

  static TaigaJobIncludeList includeList({
    _i1.WhereExpressionBuilder<TaigaJobTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobTable>? orderByList,
    TaigaJobInclude? include,
  }) {
    return TaigaJobIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TaigaJob.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TaigaJob.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TaigaJobImpl extends TaigaJob {
  _TaigaJobImpl({
    int? id,
    required String type,
    required String title,
    required String description,
    required String status,
  }) : super._(
          id: id,
          type: type,
          title: title,
          description: description,
          status: status,
        );

  @override
  TaigaJob copyWith({
    Object? id = _Undefined,
    String? type,
    String? title,
    String? description,
    String? status,
  }) {
    return TaigaJob(
      id: id is int? ? id : this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
    );
  }
}

class TaigaJobTable extends _i1.Table {
  TaigaJobTable({super.tableRelation}) : super(tableName: 'taiga_job') {
    type = _i1.ColumnString(
      'type',
      this,
    );
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
  }

  late final _i1.ColumnString type;

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnString status;

  @override
  List<_i1.Column> get columns => [
        id,
        type,
        title,
        description,
        status,
      ];
}

@Deprecated('Use TaigaJobTable.t instead.')
TaigaJobTable tTaigaJob = TaigaJobTable();

class TaigaJobInclude extends _i1.IncludeObject {
  TaigaJobInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => TaigaJob.t;
}

class TaigaJobIncludeList extends _i1.IncludeList {
  TaigaJobIncludeList._({
    _i1.WhereExpressionBuilder<TaigaJobTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TaigaJob.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TaigaJob.t;
}

class TaigaJobRepository {
  const TaigaJobRepository._();

  Future<List<TaigaJob>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<TaigaJob>(
      where: where?.call(TaigaJob.t),
      orderBy: orderBy?.call(TaigaJob.t),
      orderByList: orderByList?.call(TaigaJob.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TaigaJob?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobTable>? where,
    int? offset,
    _i1.OrderByBuilder<TaigaJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<TaigaJob>(
      where: where?.call(TaigaJob.t),
      orderBy: orderBy?.call(TaigaJob.t),
      orderByList: orderByList?.call(TaigaJob.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TaigaJob?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<TaigaJob>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TaigaJob>> insert(
    _i1.Session session,
    List<TaigaJob> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<TaigaJob>(
      rows,
      transaction: transaction,
    );
  }

  Future<TaigaJob> insertRow(
    _i1.Session session,
    TaigaJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<TaigaJob>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TaigaJob>> update(
    _i1.Session session,
    List<TaigaJob> rows, {
    _i1.ColumnSelections<TaigaJobTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<TaigaJob>(
      rows,
      columns: columns?.call(TaigaJob.t),
      transaction: transaction,
    );
  }

  Future<TaigaJob> updateRow(
    _i1.Session session,
    TaigaJob row, {
    _i1.ColumnSelections<TaigaJobTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<TaigaJob>(
      row,
      columns: columns?.call(TaigaJob.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<TaigaJob> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<TaigaJob>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    TaigaJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<TaigaJob>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaJobTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<TaigaJob>(
      where: where(TaigaJob.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<TaigaJob>(
      where: where?.call(TaigaJob.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

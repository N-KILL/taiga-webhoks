/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../../protocol.dart' as _i2;

/// This class is for storage the all the updates made into a Job
/// having direct relation to the TaigaJob table, every time a change
/// is made in one job, this table will receive information about what
/// change was, and save the details
/// (Example: Name change from: 'A' to 'B')
///
/// and what was the time of the change, on epoch format.
/// https://en.wikipedia.org/wiki/Epoch_(computing)
abstract class TaigaJobUpdates extends _i1.TableRow {
  TaigaJobUpdates._({
    int? id,
    required this.jobIdId,
    this.jobId,
    required this.status,
    required this.details,
  }) : super(id);

  factory TaigaJobUpdates({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String status,
    required String details,
  }) = _TaigaJobUpdatesImpl;

  factory TaigaJobUpdates.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaJobUpdates(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      jobIdId:
          serializationManager.deserialize<int>(jsonSerialization['jobIdId']),
      jobId: serializationManager
          .deserialize<_i2.TaigaJob?>(jsonSerialization['jobId']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      details: serializationManager
          .deserialize<String>(jsonSerialization['details']),
    );
  }

  static final t = TaigaJobUpdatesTable();

  static const db = TaigaJobUpdatesRepository._();

  int jobIdId;

  _i2.TaigaJob? jobId;

  String status;

  String details;

  @override
  _i1.Table get table => t;

  TaigaJobUpdates copyWith({
    int? id,
    int? jobIdId,
    _i2.TaigaJob? jobId,
    String? status,
    String? details,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      if (jobId != null) 'jobId': jobId,
      'status': status,
      'details': details,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      'status': status,
      'details': details,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      if (jobId != null) 'jobId': jobId,
      'status': status,
      'details': details,
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
      case 'jobIdId':
        jobIdId = value;
        return;
      case 'status':
        status = value;
        return;
      case 'details':
        details = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<TaigaJobUpdates>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobUpdatesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    TaigaJobUpdatesInclude? include,
  }) async {
    return session.db.find<TaigaJobUpdates>(
      where: where != null ? where(TaigaJobUpdates.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<TaigaJobUpdates?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobUpdatesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    TaigaJobUpdatesInclude? include,
  }) async {
    return session.db.findSingleRow<TaigaJobUpdates>(
      where: where != null ? where(TaigaJobUpdates.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<TaigaJobUpdates?> findById(
    _i1.Session session,
    int id, {
    TaigaJobUpdatesInclude? include,
  }) async {
    return session.db.findById<TaigaJobUpdates>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaJobUpdatesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TaigaJobUpdates>(
      where: where(TaigaJobUpdates.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    TaigaJobUpdates row, {
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
    TaigaJobUpdates row, {
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
    TaigaJobUpdates row, {
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
    _i1.WhereExpressionBuilder<TaigaJobUpdatesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TaigaJobUpdates>(
      where: where != null ? where(TaigaJobUpdates.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TaigaJobUpdatesInclude include({_i2.TaigaJobInclude? jobId}) {
    return TaigaJobUpdatesInclude._(jobId: jobId);
  }

  static TaigaJobUpdatesIncludeList includeList({
    _i1.WhereExpressionBuilder<TaigaJobUpdatesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaJobUpdatesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobUpdatesTable>? orderByList,
    TaigaJobUpdatesInclude? include,
  }) {
    return TaigaJobUpdatesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TaigaJobUpdates.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TaigaJobUpdates.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TaigaJobUpdatesImpl extends TaigaJobUpdates {
  _TaigaJobUpdatesImpl({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String status,
    required String details,
  }) : super._(
          id: id,
          jobIdId: jobIdId,
          jobId: jobId,
          status: status,
          details: details,
        );

  @override
  TaigaJobUpdates copyWith({
    Object? id = _Undefined,
    int? jobIdId,
    Object? jobId = _Undefined,
    String? status,
    String? details,
  }) {
    return TaigaJobUpdates(
      id: id is int? ? id : this.id,
      jobIdId: jobIdId ?? this.jobIdId,
      jobId: jobId is _i2.TaigaJob? ? jobId : this.jobId?.copyWith(),
      status: status ?? this.status,
      details: details ?? this.details,
    );
  }
}

class TaigaJobUpdatesTable extends _i1.Table {
  TaigaJobUpdatesTable({super.tableRelation})
      : super(tableName: 'taiga_job_updates') {
    jobIdId = _i1.ColumnInt(
      'jobIdId',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    details = _i1.ColumnString(
      'details',
      this,
    );
  }

  late final _i1.ColumnInt jobIdId;

  _i2.TaigaJobTable? _jobId;

  late final _i1.ColumnString status;

  late final _i1.ColumnString details;

  _i2.TaigaJobTable get jobId {
    if (_jobId != null) return _jobId!;
    _jobId = _i1.createRelationTable(
      relationFieldName: 'jobId',
      field: TaigaJobUpdates.t.jobIdId,
      foreignField: _i2.TaigaJob.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TaigaJobTable(tableRelation: foreignTableRelation),
    );
    return _jobId!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        jobIdId,
        status,
        details,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'jobId') {
      return jobId;
    }
    return null;
  }
}

@Deprecated('Use TaigaJobUpdatesTable.t instead.')
TaigaJobUpdatesTable tTaigaJobUpdates = TaigaJobUpdatesTable();

class TaigaJobUpdatesInclude extends _i1.IncludeObject {
  TaigaJobUpdatesInclude._({_i2.TaigaJobInclude? jobId}) {
    _jobId = jobId;
  }

  _i2.TaigaJobInclude? _jobId;

  @override
  Map<String, _i1.Include?> get includes => {'jobId': _jobId};

  @override
  _i1.Table get table => TaigaJobUpdates.t;
}

class TaigaJobUpdatesIncludeList extends _i1.IncludeList {
  TaigaJobUpdatesIncludeList._({
    _i1.WhereExpressionBuilder<TaigaJobUpdatesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TaigaJobUpdates.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TaigaJobUpdates.t;
}

class TaigaJobUpdatesRepository {
  const TaigaJobUpdatesRepository._();

  final attachRow = const TaigaJobUpdatesAttachRowRepository._();

  Future<List<TaigaJobUpdates>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobUpdatesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaJobUpdatesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobUpdatesTable>? orderByList,
    _i1.Transaction? transaction,
    TaigaJobUpdatesInclude? include,
  }) async {
    return session.dbNext.find<TaigaJobUpdates>(
      where: where?.call(TaigaJobUpdates.t),
      orderBy: orderBy?.call(TaigaJobUpdates.t),
      orderByList: orderByList?.call(TaigaJobUpdates.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<TaigaJobUpdates?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobUpdatesTable>? where,
    int? offset,
    _i1.OrderByBuilder<TaigaJobUpdatesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobUpdatesTable>? orderByList,
    _i1.Transaction? transaction,
    TaigaJobUpdatesInclude? include,
  }) async {
    return session.dbNext.findFirstRow<TaigaJobUpdates>(
      where: where?.call(TaigaJobUpdates.t),
      orderBy: orderBy?.call(TaigaJobUpdates.t),
      orderByList: orderByList?.call(TaigaJobUpdates.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<TaigaJobUpdates?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    TaigaJobUpdatesInclude? include,
  }) async {
    return session.dbNext.findById<TaigaJobUpdates>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<TaigaJobUpdates>> insert(
    _i1.Session session,
    List<TaigaJobUpdates> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<TaigaJobUpdates>(
      rows,
      transaction: transaction,
    );
  }

  Future<TaigaJobUpdates> insertRow(
    _i1.Session session,
    TaigaJobUpdates row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<TaigaJobUpdates>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TaigaJobUpdates>> update(
    _i1.Session session,
    List<TaigaJobUpdates> rows, {
    _i1.ColumnSelections<TaigaJobUpdatesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<TaigaJobUpdates>(
      rows,
      columns: columns?.call(TaigaJobUpdates.t),
      transaction: transaction,
    );
  }

  Future<TaigaJobUpdates> updateRow(
    _i1.Session session,
    TaigaJobUpdates row, {
    _i1.ColumnSelections<TaigaJobUpdatesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<TaigaJobUpdates>(
      row,
      columns: columns?.call(TaigaJobUpdates.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<TaigaJobUpdates> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<TaigaJobUpdates>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    TaigaJobUpdates row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<TaigaJobUpdates>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaJobUpdatesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<TaigaJobUpdates>(
      where: where(TaigaJobUpdates.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobUpdatesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<TaigaJobUpdates>(
      where: where?.call(TaigaJobUpdates.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class TaigaJobUpdatesAttachRowRepository {
  const TaigaJobUpdatesAttachRowRepository._();

  Future<void> jobId(
    _i1.Session session,
    TaigaJobUpdates taigaJobUpdates,
    _i2.TaigaJob jobId,
  ) async {
    if (taigaJobUpdates.id == null) {
      throw ArgumentError.notNull('taigaJobUpdates.id');
    }
    if (jobId.id == null) {
      throw ArgumentError.notNull('jobId.id');
    }

    var $taigaJobUpdates = taigaJobUpdates.copyWith(jobIdId: jobId.id);
    await session.dbNext.updateRow<TaigaJobUpdates>(
      $taigaJobUpdates,
      columns: [TaigaJobUpdates.t.jobIdId],
    );
  }
}

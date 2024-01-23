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

/// This class is for storage the all the commentaries made into a Job on Taiga
/// Have direct relation to the TaigaJob table
abstract class TaigaJobCommentaries extends _i1.TableRow {
  TaigaJobCommentaries._({
    int? id,
    required this.jobIdId,
    this.jobId,
    required this.details,
    required this.userIdId,
    this.userId,
  }) : super(id);

  factory TaigaJobCommentaries({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String details,
    required int userIdId,
    _i2.User? userId,
  }) = _TaigaJobCommentariesImpl;

  factory TaigaJobCommentaries.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaJobCommentaries(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      jobIdId:
          serializationManager.deserialize<int>(jsonSerialization['jobIdId']),
      jobId: serializationManager
          .deserialize<_i2.TaigaJob?>(jsonSerialization['jobId']),
      details: serializationManager
          .deserialize<String>(jsonSerialization['details']),
      userIdId:
          serializationManager.deserialize<int>(jsonSerialization['userIdId']),
      userId: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['userId']),
    );
  }

  static final t = TaigaJobCommentariesTable();

  static const db = TaigaJobCommentariesRepository._();

  int jobIdId;

  _i2.TaigaJob? jobId;

  String details;

  int userIdId;

  _i2.User? userId;

  @override
  _i1.Table get table => t;

  TaigaJobCommentaries copyWith({
    int? id,
    int? jobIdId,
    _i2.TaigaJob? jobId,
    String? details,
    int? userIdId,
    _i2.User? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      if (jobId != null) 'jobId': jobId,
      'details': details,
      'userIdId': userIdId,
      if (userId != null) 'userId': userId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      'details': details,
      'userIdId': userIdId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'jobIdId': jobIdId,
      if (jobId != null) 'jobId': jobId,
      'details': details,
      'userIdId': userIdId,
      if (userId != null) 'userId': userId,
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
      case 'details':
        details = value;
        return;
      case 'userIdId':
        userIdId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<TaigaJobCommentaries>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobCommentariesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    TaigaJobCommentariesInclude? include,
  }) async {
    return session.db.find<TaigaJobCommentaries>(
      where: where != null ? where(TaigaJobCommentaries.t) : null,
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
  static Future<TaigaJobCommentaries?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobCommentariesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    TaigaJobCommentariesInclude? include,
  }) async {
    return session.db.findSingleRow<TaigaJobCommentaries>(
      where: where != null ? where(TaigaJobCommentaries.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<TaigaJobCommentaries?> findById(
    _i1.Session session,
    int id, {
    TaigaJobCommentariesInclude? include,
  }) async {
    return session.db.findById<TaigaJobCommentaries>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaJobCommentariesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TaigaJobCommentaries>(
      where: where(TaigaJobCommentaries.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    TaigaJobCommentaries row, {
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
    TaigaJobCommentaries row, {
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
    TaigaJobCommentaries row, {
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
    _i1.WhereExpressionBuilder<TaigaJobCommentariesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TaigaJobCommentaries>(
      where: where != null ? where(TaigaJobCommentaries.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TaigaJobCommentariesInclude include({
    _i2.TaigaJobInclude? jobId,
    _i2.UserInclude? userId,
  }) {
    return TaigaJobCommentariesInclude._(
      jobId: jobId,
      userId: userId,
    );
  }

  static TaigaJobCommentariesIncludeList includeList({
    _i1.WhereExpressionBuilder<TaigaJobCommentariesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaJobCommentariesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobCommentariesTable>? orderByList,
    TaigaJobCommentariesInclude? include,
  }) {
    return TaigaJobCommentariesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TaigaJobCommentaries.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TaigaJobCommentaries.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TaigaJobCommentariesImpl extends TaigaJobCommentaries {
  _TaigaJobCommentariesImpl({
    int? id,
    required int jobIdId,
    _i2.TaigaJob? jobId,
    required String details,
    required int userIdId,
    _i2.User? userId,
  }) : super._(
          id: id,
          jobIdId: jobIdId,
          jobId: jobId,
          details: details,
          userIdId: userIdId,
          userId: userId,
        );

  @override
  TaigaJobCommentaries copyWith({
    Object? id = _Undefined,
    int? jobIdId,
    Object? jobId = _Undefined,
    String? details,
    int? userIdId,
    Object? userId = _Undefined,
  }) {
    return TaigaJobCommentaries(
      id: id is int? ? id : this.id,
      jobIdId: jobIdId ?? this.jobIdId,
      jobId: jobId is _i2.TaigaJob? ? jobId : this.jobId?.copyWith(),
      details: details ?? this.details,
      userIdId: userIdId ?? this.userIdId,
      userId: userId is _i2.User? ? userId : this.userId?.copyWith(),
    );
  }
}

class TaigaJobCommentariesTable extends _i1.Table {
  TaigaJobCommentariesTable({super.tableRelation})
      : super(tableName: 'taiga_job_commentaries') {
    jobIdId = _i1.ColumnInt(
      'jobIdId',
      this,
    );
    details = _i1.ColumnString(
      'details',
      this,
    );
    userIdId = _i1.ColumnInt(
      'userIdId',
      this,
    );
  }

  late final _i1.ColumnInt jobIdId;

  _i2.TaigaJobTable? _jobId;

  late final _i1.ColumnString details;

  late final _i1.ColumnInt userIdId;

  _i2.UserTable? _userId;

  _i2.TaigaJobTable get jobId {
    if (_jobId != null) return _jobId!;
    _jobId = _i1.createRelationTable(
      relationFieldName: 'jobId',
      field: TaigaJobCommentaries.t.jobIdId,
      foreignField: _i2.TaigaJob.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TaigaJobTable(tableRelation: foreignTableRelation),
    );
    return _jobId!;
  }

  _i2.UserTable get userId {
    if (_userId != null) return _userId!;
    _userId = _i1.createRelationTable(
      relationFieldName: 'userId',
      field: TaigaJobCommentaries.t.userIdId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _userId!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        jobIdId,
        details,
        userIdId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'jobId') {
      return jobId;
    }
    if (relationField == 'userId') {
      return userId;
    }
    return null;
  }
}

@Deprecated('Use TaigaJobCommentariesTable.t instead.')
TaigaJobCommentariesTable tTaigaJobCommentaries = TaigaJobCommentariesTable();

class TaigaJobCommentariesInclude extends _i1.IncludeObject {
  TaigaJobCommentariesInclude._({
    _i2.TaigaJobInclude? jobId,
    _i2.UserInclude? userId,
  }) {
    _jobId = jobId;
    _userId = userId;
  }

  _i2.TaigaJobInclude? _jobId;

  _i2.UserInclude? _userId;

  @override
  Map<String, _i1.Include?> get includes => {
        'jobId': _jobId,
        'userId': _userId,
      };

  @override
  _i1.Table get table => TaigaJobCommentaries.t;
}

class TaigaJobCommentariesIncludeList extends _i1.IncludeList {
  TaigaJobCommentariesIncludeList._({
    _i1.WhereExpressionBuilder<TaigaJobCommentariesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TaigaJobCommentaries.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TaigaJobCommentaries.t;
}

class TaigaJobCommentariesRepository {
  const TaigaJobCommentariesRepository._();

  final attachRow = const TaigaJobCommentariesAttachRowRepository._();

  Future<List<TaigaJobCommentaries>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobCommentariesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaJobCommentariesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobCommentariesTable>? orderByList,
    _i1.Transaction? transaction,
    TaigaJobCommentariesInclude? include,
  }) async {
    return session.dbNext.find<TaigaJobCommentaries>(
      where: where?.call(TaigaJobCommentaries.t),
      orderBy: orderBy?.call(TaigaJobCommentaries.t),
      orderByList: orderByList?.call(TaigaJobCommentaries.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<TaigaJobCommentaries?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobCommentariesTable>? where,
    int? offset,
    _i1.OrderByBuilder<TaigaJobCommentariesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaJobCommentariesTable>? orderByList,
    _i1.Transaction? transaction,
    TaigaJobCommentariesInclude? include,
  }) async {
    return session.dbNext.findFirstRow<TaigaJobCommentaries>(
      where: where?.call(TaigaJobCommentaries.t),
      orderBy: orderBy?.call(TaigaJobCommentaries.t),
      orderByList: orderByList?.call(TaigaJobCommentaries.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<TaigaJobCommentaries?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    TaigaJobCommentariesInclude? include,
  }) async {
    return session.dbNext.findById<TaigaJobCommentaries>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<TaigaJobCommentaries>> insert(
    _i1.Session session,
    List<TaigaJobCommentaries> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<TaigaJobCommentaries>(
      rows,
      transaction: transaction,
    );
  }

  Future<TaigaJobCommentaries> insertRow(
    _i1.Session session,
    TaigaJobCommentaries row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<TaigaJobCommentaries>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TaigaJobCommentaries>> update(
    _i1.Session session,
    List<TaigaJobCommentaries> rows, {
    _i1.ColumnSelections<TaigaJobCommentariesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<TaigaJobCommentaries>(
      rows,
      columns: columns?.call(TaigaJobCommentaries.t),
      transaction: transaction,
    );
  }

  Future<TaigaJobCommentaries> updateRow(
    _i1.Session session,
    TaigaJobCommentaries row, {
    _i1.ColumnSelections<TaigaJobCommentariesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<TaigaJobCommentaries>(
      row,
      columns: columns?.call(TaigaJobCommentaries.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<TaigaJobCommentaries> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<TaigaJobCommentaries>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    TaigaJobCommentaries row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<TaigaJobCommentaries>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaJobCommentariesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<TaigaJobCommentaries>(
      where: where(TaigaJobCommentaries.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaJobCommentariesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<TaigaJobCommentaries>(
      where: where?.call(TaigaJobCommentaries.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class TaigaJobCommentariesAttachRowRepository {
  const TaigaJobCommentariesAttachRowRepository._();

  Future<void> jobId(
    _i1.Session session,
    TaigaJobCommentaries taigaJobCommentaries,
    _i2.TaigaJob jobId,
  ) async {
    if (taigaJobCommentaries.id == null) {
      throw ArgumentError.notNull('taigaJobCommentaries.id');
    }
    if (jobId.id == null) {
      throw ArgumentError.notNull('jobId.id');
    }

    var $taigaJobCommentaries =
        taigaJobCommentaries.copyWith(jobIdId: jobId.id);
    await session.dbNext.updateRow<TaigaJobCommentaries>(
      $taigaJobCommentaries,
      columns: [TaigaJobCommentaries.t.jobIdId],
    );
  }

  Future<void> userId(
    _i1.Session session,
    TaigaJobCommentaries taigaJobCommentaries,
    _i2.User userId,
  ) async {
    if (taigaJobCommentaries.id == null) {
      throw ArgumentError.notNull('taigaJobCommentaries.id');
    }
    if (userId.id == null) {
      throw ArgumentError.notNull('userId.id');
    }

    var $taigaJobCommentaries =
        taigaJobCommentaries.copyWith(userIdId: userId.id);
    await session.dbNext.updateRow<TaigaJobCommentaries>(
      $taigaJobCommentaries,
      columns: [TaigaJobCommentaries.t.userIdId],
    );
  }
}

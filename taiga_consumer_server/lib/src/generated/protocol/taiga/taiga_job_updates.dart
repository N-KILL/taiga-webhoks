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
    required this.jobId,
    this.job,
    required this.type,
    required this.status,
    required this.details,
    required this.dateTimeEpoch,
    this.commentId,
    this.comment,
  }) : super(id);

  factory TaigaJobUpdates({
    int? id,
    required int jobId,
    _i2.TaigaJob? job,
    required String type,
    required String status,
    required String details,
    required int dateTimeEpoch,
    int? commentId,
    _i2.TaigaJobCommentaries? comment,
  }) = _TaigaJobUpdatesImpl;

  factory TaigaJobUpdates.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaJobUpdates(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      jobId: serializationManager.deserialize<int>(jsonSerialization['jobId']),
      job: serializationManager
          .deserialize<_i2.TaigaJob?>(jsonSerialization['job']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      details: serializationManager
          .deserialize<String>(jsonSerialization['details']),
      dateTimeEpoch: serializationManager
          .deserialize<int>(jsonSerialization['dateTimeEpoch']),
      commentId: serializationManager
          .deserialize<int?>(jsonSerialization['commentId']),
      comment: serializationManager
          .deserialize<_i2.TaigaJobCommentaries?>(jsonSerialization['comment']),
    );
  }

  static final t = TaigaJobUpdatesTable();

  static const db = TaigaJobUpdatesRepository._();

  int jobId;

  /// Task, Issue, Epic, UserStory, related from another table
  _i2.TaigaJob? job;

  /// Type is used to identify if a new job, a new comment, a change
  /// made into a job, or a deletion
  String type;

  /// Status of the job
  String status;

  /// Details about the change made on the Job
  String details;

  /// DateTime on epoch format stored as Int value
  /// Note: To storage epoch serverpod, only support int values.
  /// PGSQL format, will be integer, and do not support longer characters
  /// So you have to divide by 1000, getting epoch on seconds format, not milliseconds
  int dateTimeEpoch;

  int? commentId;

  /// Commentary related to this update, related from another table. This is as optional
  _i2.TaigaJobCommentaries? comment;

  @override
  _i1.Table get table => t;

  TaigaJobUpdates copyWith({
    int? id,
    int? jobId,
    _i2.TaigaJob? job,
    String? type,
    String? status,
    String? details,
    int? dateTimeEpoch,
    int? commentId,
    _i2.TaigaJobCommentaries? comment,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'jobId': jobId,
      if (job != null) 'job': job,
      'type': type,
      'status': status,
      'details': details,
      'dateTimeEpoch': dateTimeEpoch,
      if (commentId != null) 'commentId': commentId,
      if (comment != null) 'comment': comment,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      if (id != null) 'id': id,
      'jobId': jobId,
      'type': type,
      'status': status,
      'details': details,
      'dateTimeEpoch': dateTimeEpoch,
      if (commentId != null) 'commentId': commentId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'jobId': jobId,
      if (job != null) 'job': job,
      'type': type,
      'status': status,
      'details': details,
      'dateTimeEpoch': dateTimeEpoch,
      if (commentId != null) 'commentId': commentId,
      if (comment != null) 'comment': comment,
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
      case 'jobId':
        jobId = value;
        return;
      case 'type':
        type = value;
        return;
      case 'status':
        status = value;
        return;
      case 'details':
        details = value;
        return;
      case 'dateTimeEpoch':
        dateTimeEpoch = value;
        return;
      case 'commentId':
        commentId = value;
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

  static TaigaJobUpdatesInclude include({
    _i2.TaigaJobInclude? job,
    _i2.TaigaJobCommentariesInclude? comment,
  }) {
    return TaigaJobUpdatesInclude._(
      job: job,
      comment: comment,
    );
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
    required int jobId,
    _i2.TaigaJob? job,
    required String type,
    required String status,
    required String details,
    required int dateTimeEpoch,
    int? commentId,
    _i2.TaigaJobCommentaries? comment,
  }) : super._(
          id: id,
          jobId: jobId,
          job: job,
          type: type,
          status: status,
          details: details,
          dateTimeEpoch: dateTimeEpoch,
          commentId: commentId,
          comment: comment,
        );

  @override
  TaigaJobUpdates copyWith({
    Object? id = _Undefined,
    int? jobId,
    Object? job = _Undefined,
    String? type,
    String? status,
    String? details,
    int? dateTimeEpoch,
    Object? commentId = _Undefined,
    Object? comment = _Undefined,
  }) {
    return TaigaJobUpdates(
      id: id is int? ? id : this.id,
      jobId: jobId ?? this.jobId,
      job: job is _i2.TaigaJob? ? job : this.job?.copyWith(),
      type: type ?? this.type,
      status: status ?? this.status,
      details: details ?? this.details,
      dateTimeEpoch: dateTimeEpoch ?? this.dateTimeEpoch,
      commentId: commentId is int? ? commentId : this.commentId,
      comment: comment is _i2.TaigaJobCommentaries?
          ? comment
          : this.comment?.copyWith(),
    );
  }
}

class TaigaJobUpdatesTable extends _i1.Table {
  TaigaJobUpdatesTable({super.tableRelation})
      : super(tableName: 'taiga_job_updates') {
    jobId = _i1.ColumnInt(
      'jobId',
      this,
    );
    type = _i1.ColumnString(
      'type',
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
    dateTimeEpoch = _i1.ColumnInt(
      'dateTimeEpoch',
      this,
    );
    commentId = _i1.ColumnInt(
      'commentId',
      this,
    );
  }

  late final _i1.ColumnInt jobId;

  /// Task, Issue, Epic, UserStory, related from another table
  _i2.TaigaJobTable? _job;

  /// Type is used to identify if a new job, a new comment, a change
  /// made into a job, or a deletion
  late final _i1.ColumnString type;

  /// Status of the job
  late final _i1.ColumnString status;

  /// Details about the change made on the Job
  late final _i1.ColumnString details;

  /// DateTime on epoch format stored as Int value
  /// Note: To storage epoch serverpod, only support int values.
  /// PGSQL format, will be integer, and do not support longer characters
  /// So you have to divide by 1000, getting epoch on seconds format, not milliseconds
  late final _i1.ColumnInt dateTimeEpoch;

  late final _i1.ColumnInt commentId;

  /// Commentary related to this update, related from another table. This is as optional
  _i2.TaigaJobCommentariesTable? _comment;

  _i2.TaigaJobTable get job {
    if (_job != null) return _job!;
    _job = _i1.createRelationTable(
      relationFieldName: 'job',
      field: TaigaJobUpdates.t.jobId,
      foreignField: _i2.TaigaJob.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TaigaJobTable(tableRelation: foreignTableRelation),
    );
    return _job!;
  }

  _i2.TaigaJobCommentariesTable get comment {
    if (_comment != null) return _comment!;
    _comment = _i1.createRelationTable(
      relationFieldName: 'comment',
      field: TaigaJobUpdates.t.commentId,
      foreignField: _i2.TaigaJobCommentaries.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TaigaJobCommentariesTable(tableRelation: foreignTableRelation),
    );
    return _comment!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        jobId,
        type,
        status,
        details,
        dateTimeEpoch,
        commentId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'job') {
      return job;
    }
    if (relationField == 'comment') {
      return comment;
    }
    return null;
  }
}

@Deprecated('Use TaigaJobUpdatesTable.t instead.')
TaigaJobUpdatesTable tTaigaJobUpdates = TaigaJobUpdatesTable();

class TaigaJobUpdatesInclude extends _i1.IncludeObject {
  TaigaJobUpdatesInclude._({
    _i2.TaigaJobInclude? job,
    _i2.TaigaJobCommentariesInclude? comment,
  }) {
    _job = job;
    _comment = comment;
  }

  _i2.TaigaJobInclude? _job;

  _i2.TaigaJobCommentariesInclude? _comment;

  @override
  Map<String, _i1.Include?> get includes => {
        'job': _job,
        'comment': _comment,
      };

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

  final detachRow = const TaigaJobUpdatesDetachRowRepository._();

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

  Future<void> job(
    _i1.Session session,
    TaigaJobUpdates taigaJobUpdates,
    _i2.TaigaJob job,
  ) async {
    if (taigaJobUpdates.id == null) {
      throw ArgumentError.notNull('taigaJobUpdates.id');
    }
    if (job.id == null) {
      throw ArgumentError.notNull('job.id');
    }

    var $taigaJobUpdates = taigaJobUpdates.copyWith(jobId: job.id);
    await session.dbNext.updateRow<TaigaJobUpdates>(
      $taigaJobUpdates,
      columns: [TaigaJobUpdates.t.jobId],
    );
  }

  Future<void> comment(
    _i1.Session session,
    TaigaJobUpdates taigaJobUpdates,
    _i2.TaigaJobCommentaries comment,
  ) async {
    if (taigaJobUpdates.id == null) {
      throw ArgumentError.notNull('taigaJobUpdates.id');
    }
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }

    var $taigaJobUpdates = taigaJobUpdates.copyWith(commentId: comment.id);
    await session.dbNext.updateRow<TaigaJobUpdates>(
      $taigaJobUpdates,
      columns: [TaigaJobUpdates.t.commentId],
    );
  }
}

class TaigaJobUpdatesDetachRowRepository {
  const TaigaJobUpdatesDetachRowRepository._();

  Future<void> comment(
    _i1.Session session,
    TaigaJobUpdates taigajobupdates,
  ) async {
    if (taigajobupdates.id == null) {
      throw ArgumentError.notNull('taigajobupdates.id');
    }

    var $taigajobupdates = taigajobupdates.copyWith(commentId: null);
    await session.dbNext.updateRow<TaigaJobUpdates>(
      $taigajobupdates,
      columns: [TaigaJobUpdates.t.commentId],
    );
  }
}

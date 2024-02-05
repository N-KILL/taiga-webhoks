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

abstract class StatusCardDetails extends _i1.TableRow {
  StatusCardDetails._({
    int? id,
    this.byUserId,
    this.byUser,
    required this.date,
  }) : super(id);

  factory StatusCardDetails({
    int? id,
    int? byUserId,
    _i2.User? byUser,
    required String date,
  }) = _StatusCardDetailsImpl;

  factory StatusCardDetails.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return StatusCardDetails(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      byUserId:
          serializationManager.deserialize<int?>(jsonSerialization['byUserId']),
      byUser: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['byUser']),
      date: serializationManager.deserialize<String>(jsonSerialization['date']),
    );
  }

  static final t = StatusCardDetailsTable();

  static const db = StatusCardDetailsRepository._();

  int? byUserId;

  _i2.User? byUser;

  String date;

  @override
  _i1.Table get table => t;

  StatusCardDetails copyWith({
    int? id,
    int? byUserId,
    _i2.User? byUser,
    String? date,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (byUserId != null) 'byUserId': byUserId,
      if (byUser != null) 'byUser': byUser?.toJson(),
      'date': date,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'byUserId': byUserId,
      'date': date,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (byUserId != null) 'byUserId': byUserId,
      if (byUser != null) 'byUser': byUser?.allToJson(),
      'date': date,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'byUserId':
        byUserId = value;
        return;
      case 'date':
        date = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<StatusCardDetails>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardDetailsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    StatusCardDetailsInclude? include,
  }) async {
    return session.db.find<StatusCardDetails>(
      where: where != null ? where(StatusCardDetails.t) : null,
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
  static Future<StatusCardDetails?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardDetailsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    StatusCardDetailsInclude? include,
  }) async {
    return session.db.findSingleRow<StatusCardDetails>(
      where: where != null ? where(StatusCardDetails.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<StatusCardDetails?> findById(
    _i1.Session session,
    int id, {
    StatusCardDetailsInclude? include,
  }) async {
    return session.db.findById<StatusCardDetails>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StatusCardDetailsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StatusCardDetails>(
      where: where(StatusCardDetails.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    StatusCardDetails row, {
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
    StatusCardDetails row, {
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
    StatusCardDetails row, {
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
    _i1.WhereExpressionBuilder<StatusCardDetailsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StatusCardDetails>(
      where: where != null ? where(StatusCardDetails.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static StatusCardDetailsInclude include({_i2.UserInclude? byUser}) {
    return StatusCardDetailsInclude._(byUser: byUser);
  }

  static StatusCardDetailsIncludeList includeList({
    _i1.WhereExpressionBuilder<StatusCardDetailsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StatusCardDetailsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatusCardDetailsTable>? orderByList,
    StatusCardDetailsInclude? include,
  }) {
    return StatusCardDetailsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StatusCardDetails.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StatusCardDetails.t),
      include: include,
    );
  }
}

class _Undefined {}

class _StatusCardDetailsImpl extends StatusCardDetails {
  _StatusCardDetailsImpl({
    int? id,
    int? byUserId,
    _i2.User? byUser,
    required String date,
  }) : super._(
          id: id,
          byUserId: byUserId,
          byUser: byUser,
          date: date,
        );

  @override
  StatusCardDetails copyWith({
    Object? id = _Undefined,
    Object? byUserId = _Undefined,
    Object? byUser = _Undefined,
    String? date,
  }) {
    return StatusCardDetails(
      id: id is int? ? id : this.id,
      byUserId: byUserId is int? ? byUserId : this.byUserId,
      byUser: byUser is _i2.User? ? byUser : this.byUser?.copyWith(),
      date: date ?? this.date,
    );
  }
}

class StatusCardDetailsTable extends _i1.Table {
  StatusCardDetailsTable({super.tableRelation})
      : super(tableName: 'status_card_details') {
    byUserId = _i1.ColumnInt(
      'byUserId',
      this,
    );
    date = _i1.ColumnString(
      'date',
      this,
    );
  }

  late final _i1.ColumnInt byUserId;

  _i2.UserTable? _byUser;

  late final _i1.ColumnString date;

  _i2.UserTable get byUser {
    if (_byUser != null) return _byUser!;
    _byUser = _i1.createRelationTable(
      relationFieldName: 'byUser',
      field: StatusCardDetails.t.byUserId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _byUser!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        byUserId,
        date,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'byUser') {
      return byUser;
    }
    return null;
  }
}

@Deprecated('Use StatusCardDetailsTable.t instead.')
StatusCardDetailsTable tStatusCardDetails = StatusCardDetailsTable();

class StatusCardDetailsInclude extends _i1.IncludeObject {
  StatusCardDetailsInclude._({_i2.UserInclude? byUser}) {
    _byUser = byUser;
  }

  _i2.UserInclude? _byUser;

  @override
  Map<String, _i1.Include?> get includes => {'byUser': _byUser};

  @override
  _i1.Table get table => StatusCardDetails.t;
}

class StatusCardDetailsIncludeList extends _i1.IncludeList {
  StatusCardDetailsIncludeList._({
    _i1.WhereExpressionBuilder<StatusCardDetailsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StatusCardDetails.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => StatusCardDetails.t;
}

class StatusCardDetailsRepository {
  const StatusCardDetailsRepository._();

  final attachRow = const StatusCardDetailsAttachRowRepository._();

  final detachRow = const StatusCardDetailsDetachRowRepository._();

  Future<List<StatusCardDetails>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardDetailsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StatusCardDetailsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatusCardDetailsTable>? orderByList,
    _i1.Transaction? transaction,
    StatusCardDetailsInclude? include,
  }) async {
    return session.dbNext.find<StatusCardDetails>(
      where: where?.call(StatusCardDetails.t),
      orderBy: orderBy?.call(StatusCardDetails.t),
      orderByList: orderByList?.call(StatusCardDetails.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<StatusCardDetails?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardDetailsTable>? where,
    int? offset,
    _i1.OrderByBuilder<StatusCardDetailsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatusCardDetailsTable>? orderByList,
    _i1.Transaction? transaction,
    StatusCardDetailsInclude? include,
  }) async {
    return session.dbNext.findFirstRow<StatusCardDetails>(
      where: where?.call(StatusCardDetails.t),
      orderBy: orderBy?.call(StatusCardDetails.t),
      orderByList: orderByList?.call(StatusCardDetails.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<StatusCardDetails?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    StatusCardDetailsInclude? include,
  }) async {
    return session.dbNext.findById<StatusCardDetails>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<StatusCardDetails>> insert(
    _i1.Session session,
    List<StatusCardDetails> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<StatusCardDetails>(
      rows,
      transaction: transaction,
    );
  }

  Future<StatusCardDetails> insertRow(
    _i1.Session session,
    StatusCardDetails row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<StatusCardDetails>(
      row,
      transaction: transaction,
    );
  }

  Future<List<StatusCardDetails>> update(
    _i1.Session session,
    List<StatusCardDetails> rows, {
    _i1.ColumnSelections<StatusCardDetailsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<StatusCardDetails>(
      rows,
      columns: columns?.call(StatusCardDetails.t),
      transaction: transaction,
    );
  }

  Future<StatusCardDetails> updateRow(
    _i1.Session session,
    StatusCardDetails row, {
    _i1.ColumnSelections<StatusCardDetailsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<StatusCardDetails>(
      row,
      columns: columns?.call(StatusCardDetails.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<StatusCardDetails> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<StatusCardDetails>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    StatusCardDetails row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<StatusCardDetails>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StatusCardDetailsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<StatusCardDetails>(
      where: where(StatusCardDetails.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardDetailsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<StatusCardDetails>(
      where: where?.call(StatusCardDetails.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class StatusCardDetailsAttachRowRepository {
  const StatusCardDetailsAttachRowRepository._();

  Future<void> byUser(
    _i1.Session session,
    StatusCardDetails statusCardDetails,
    _i2.User byUser,
  ) async {
    if (statusCardDetails.id == null) {
      throw ArgumentError.notNull('statusCardDetails.id');
    }
    if (byUser.id == null) {
      throw ArgumentError.notNull('byUser.id');
    }

    var $statusCardDetails = statusCardDetails.copyWith(byUserId: byUser.id);
    await session.dbNext.updateRow<StatusCardDetails>(
      $statusCardDetails,
      columns: [StatusCardDetails.t.byUserId],
    );
  }
}

class StatusCardDetailsDetachRowRepository {
  const StatusCardDetailsDetachRowRepository._();

  Future<void> byUser(
    _i1.Session session,
    StatusCardDetails statuscarddetails,
  ) async {
    if (statuscarddetails.id == null) {
      throw ArgumentError.notNull('statuscarddetails.id');
    }

    var $statuscarddetails = statuscarddetails.copyWith(byUserId: null);
    await session.dbNext.updateRow<StatusCardDetails>(
      $statuscarddetails,
      columns: [StatusCardDetails.t.byUserId],
    );
  }
}

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

abstract class StatusCard extends _i1.TableRow {
  StatusCard._({
    int? id,
    this.approvedId,
    this.approved,
    this.developmentId,
    this.development,
    this.internalTestId,
    this.internalTest,
    this.externalTestId,
    this.externalTest,
    this.amountOfDaysId,
    this.amountOfDays,
  }) : super(id);

  factory StatusCard({
    int? id,
    int? approvedId,
    _i2.StatusCardDetails? approved,
    int? developmentId,
    _i2.StatusCardDetails? development,
    int? internalTestId,
    _i2.StatusCardDetails? internalTest,
    int? externalTestId,
    _i2.StatusCardDetails? externalTest,
    int? amountOfDaysId,
    _i2.AmountOfDays? amountOfDays,
  }) = _StatusCardImpl;

  factory StatusCard.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return StatusCard(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      approvedId: serializationManager
          .deserialize<int?>(jsonSerialization['approvedId']),
      approved: serializationManager
          .deserialize<_i2.StatusCardDetails?>(jsonSerialization['approved']),
      developmentId: serializationManager
          .deserialize<int?>(jsonSerialization['developmentId']),
      development: serializationManager.deserialize<_i2.StatusCardDetails?>(
          jsonSerialization['development']),
      internalTestId: serializationManager
          .deserialize<int?>(jsonSerialization['internalTestId']),
      internalTest: serializationManager.deserialize<_i2.StatusCardDetails?>(
          jsonSerialization['internalTest']),
      externalTestId: serializationManager
          .deserialize<int?>(jsonSerialization['externalTestId']),
      externalTest: serializationManager.deserialize<_i2.StatusCardDetails?>(
          jsonSerialization['externalTest']),
      amountOfDaysId: serializationManager
          .deserialize<int?>(jsonSerialization['amountOfDaysId']),
      amountOfDays: serializationManager
          .deserialize<_i2.AmountOfDays?>(jsonSerialization['amountOfDays']),
    );
  }

  static final t = StatusCardTable();

  static const db = StatusCardRepository._();

  int? approvedId;

  _i2.StatusCardDetails? approved;

  int? developmentId;

  _i2.StatusCardDetails? development;

  int? internalTestId;

  _i2.StatusCardDetails? internalTest;

  int? externalTestId;

  _i2.StatusCardDetails? externalTest;

  int? amountOfDaysId;

  _i2.AmountOfDays? amountOfDays;

  @override
  _i1.Table get table => t;

  StatusCard copyWith({
    int? id,
    int? approvedId,
    _i2.StatusCardDetails? approved,
    int? developmentId,
    _i2.StatusCardDetails? development,
    int? internalTestId,
    _i2.StatusCardDetails? internalTest,
    int? externalTestId,
    _i2.StatusCardDetails? externalTest,
    int? amountOfDaysId,
    _i2.AmountOfDays? amountOfDays,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (approvedId != null) 'approvedId': approvedId,
      if (approved != null) 'approved': approved?.toJson(),
      if (developmentId != null) 'developmentId': developmentId,
      if (development != null) 'development': development?.toJson(),
      if (internalTestId != null) 'internalTestId': internalTestId,
      if (internalTest != null) 'internalTest': internalTest?.toJson(),
      if (externalTestId != null) 'externalTestId': externalTestId,
      if (externalTest != null) 'externalTest': externalTest?.toJson(),
      if (amountOfDaysId != null) 'amountOfDaysId': amountOfDaysId,
      if (amountOfDays != null) 'amountOfDays': amountOfDays?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'approvedId': approvedId,
      'developmentId': developmentId,
      'internalTestId': internalTestId,
      'externalTestId': externalTestId,
      'amountOfDaysId': amountOfDaysId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (approvedId != null) 'approvedId': approvedId,
      if (approved != null) 'approved': approved?.allToJson(),
      if (developmentId != null) 'developmentId': developmentId,
      if (development != null) 'development': development?.allToJson(),
      if (internalTestId != null) 'internalTestId': internalTestId,
      if (internalTest != null) 'internalTest': internalTest?.allToJson(),
      if (externalTestId != null) 'externalTestId': externalTestId,
      if (externalTest != null) 'externalTest': externalTest?.allToJson(),
      if (amountOfDaysId != null) 'amountOfDaysId': amountOfDaysId,
      if (amountOfDays != null) 'amountOfDays': amountOfDays?.allToJson(),
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
      case 'approvedId':
        approvedId = value;
        return;
      case 'developmentId':
        developmentId = value;
        return;
      case 'internalTestId':
        internalTestId = value;
        return;
      case 'externalTestId':
        externalTestId = value;
        return;
      case 'amountOfDaysId':
        amountOfDaysId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<StatusCard>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    StatusCardInclude? include,
  }) async {
    return session.db.find<StatusCard>(
      where: where != null ? where(StatusCard.t) : null,
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
  static Future<StatusCard?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    StatusCardInclude? include,
  }) async {
    return session.db.findSingleRow<StatusCard>(
      where: where != null ? where(StatusCard.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<StatusCard?> findById(
    _i1.Session session,
    int id, {
    StatusCardInclude? include,
  }) async {
    return session.db.findById<StatusCard>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StatusCardTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StatusCard>(
      where: where(StatusCard.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    StatusCard row, {
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
    StatusCard row, {
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
    StatusCard row, {
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
    _i1.WhereExpressionBuilder<StatusCardTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StatusCard>(
      where: where != null ? where(StatusCard.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static StatusCardInclude include({
    _i2.StatusCardDetailsInclude? approved,
    _i2.StatusCardDetailsInclude? development,
    _i2.StatusCardDetailsInclude? internalTest,
    _i2.StatusCardDetailsInclude? externalTest,
    _i2.AmountOfDaysInclude? amountOfDays,
  }) {
    return StatusCardInclude._(
      approved: approved,
      development: development,
      internalTest: internalTest,
      externalTest: externalTest,
      amountOfDays: amountOfDays,
    );
  }

  static StatusCardIncludeList includeList({
    _i1.WhereExpressionBuilder<StatusCardTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StatusCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatusCardTable>? orderByList,
    StatusCardInclude? include,
  }) {
    return StatusCardIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StatusCard.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StatusCard.t),
      include: include,
    );
  }
}

class _Undefined {}

class _StatusCardImpl extends StatusCard {
  _StatusCardImpl({
    int? id,
    int? approvedId,
    _i2.StatusCardDetails? approved,
    int? developmentId,
    _i2.StatusCardDetails? development,
    int? internalTestId,
    _i2.StatusCardDetails? internalTest,
    int? externalTestId,
    _i2.StatusCardDetails? externalTest,
    int? amountOfDaysId,
    _i2.AmountOfDays? amountOfDays,
  }) : super._(
          id: id,
          approvedId: approvedId,
          approved: approved,
          developmentId: developmentId,
          development: development,
          internalTestId: internalTestId,
          internalTest: internalTest,
          externalTestId: externalTestId,
          externalTest: externalTest,
          amountOfDaysId: amountOfDaysId,
          amountOfDays: amountOfDays,
        );

  @override
  StatusCard copyWith({
    Object? id = _Undefined,
    Object? approvedId = _Undefined,
    Object? approved = _Undefined,
    Object? developmentId = _Undefined,
    Object? development = _Undefined,
    Object? internalTestId = _Undefined,
    Object? internalTest = _Undefined,
    Object? externalTestId = _Undefined,
    Object? externalTest = _Undefined,
    Object? amountOfDaysId = _Undefined,
    Object? amountOfDays = _Undefined,
  }) {
    return StatusCard(
      id: id is int? ? id : this.id,
      approvedId: approvedId is int? ? approvedId : this.approvedId,
      approved: approved is _i2.StatusCardDetails?
          ? approved
          : this.approved?.copyWith(),
      developmentId: developmentId is int? ? developmentId : this.developmentId,
      development: development is _i2.StatusCardDetails?
          ? development
          : this.development?.copyWith(),
      internalTestId:
          internalTestId is int? ? internalTestId : this.internalTestId,
      internalTest: internalTest is _i2.StatusCardDetails?
          ? internalTest
          : this.internalTest?.copyWith(),
      externalTestId:
          externalTestId is int? ? externalTestId : this.externalTestId,
      externalTest: externalTest is _i2.StatusCardDetails?
          ? externalTest
          : this.externalTest?.copyWith(),
      amountOfDaysId:
          amountOfDaysId is int? ? amountOfDaysId : this.amountOfDaysId,
      amountOfDays: amountOfDays is _i2.AmountOfDays?
          ? amountOfDays
          : this.amountOfDays?.copyWith(),
    );
  }
}

class StatusCardTable extends _i1.Table {
  StatusCardTable({super.tableRelation}) : super(tableName: 'status_card') {
    approvedId = _i1.ColumnInt(
      'approvedId',
      this,
    );
    developmentId = _i1.ColumnInt(
      'developmentId',
      this,
    );
    internalTestId = _i1.ColumnInt(
      'internalTestId',
      this,
    );
    externalTestId = _i1.ColumnInt(
      'externalTestId',
      this,
    );
    amountOfDaysId = _i1.ColumnInt(
      'amountOfDaysId',
      this,
    );
  }

  late final _i1.ColumnInt approvedId;

  _i2.StatusCardDetailsTable? _approved;

  late final _i1.ColumnInt developmentId;

  _i2.StatusCardDetailsTable? _development;

  late final _i1.ColumnInt internalTestId;

  _i2.StatusCardDetailsTable? _internalTest;

  late final _i1.ColumnInt externalTestId;

  _i2.StatusCardDetailsTable? _externalTest;

  late final _i1.ColumnInt amountOfDaysId;

  _i2.AmountOfDaysTable? _amountOfDays;

  _i2.StatusCardDetailsTable get approved {
    if (_approved != null) return _approved!;
    _approved = _i1.createRelationTable(
      relationFieldName: 'approved',
      field: StatusCard.t.approvedId,
      foreignField: _i2.StatusCardDetails.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.StatusCardDetailsTable(tableRelation: foreignTableRelation),
    );
    return _approved!;
  }

  _i2.StatusCardDetailsTable get development {
    if (_development != null) return _development!;
    _development = _i1.createRelationTable(
      relationFieldName: 'development',
      field: StatusCard.t.developmentId,
      foreignField: _i2.StatusCardDetails.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.StatusCardDetailsTable(tableRelation: foreignTableRelation),
    );
    return _development!;
  }

  _i2.StatusCardDetailsTable get internalTest {
    if (_internalTest != null) return _internalTest!;
    _internalTest = _i1.createRelationTable(
      relationFieldName: 'internalTest',
      field: StatusCard.t.internalTestId,
      foreignField: _i2.StatusCardDetails.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.StatusCardDetailsTable(tableRelation: foreignTableRelation),
    );
    return _internalTest!;
  }

  _i2.StatusCardDetailsTable get externalTest {
    if (_externalTest != null) return _externalTest!;
    _externalTest = _i1.createRelationTable(
      relationFieldName: 'externalTest',
      field: StatusCard.t.externalTestId,
      foreignField: _i2.StatusCardDetails.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.StatusCardDetailsTable(tableRelation: foreignTableRelation),
    );
    return _externalTest!;
  }

  _i2.AmountOfDaysTable get amountOfDays {
    if (_amountOfDays != null) return _amountOfDays!;
    _amountOfDays = _i1.createRelationTable(
      relationFieldName: 'amountOfDays',
      field: StatusCard.t.amountOfDaysId,
      foreignField: _i2.AmountOfDays.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AmountOfDaysTable(tableRelation: foreignTableRelation),
    );
    return _amountOfDays!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        approvedId,
        developmentId,
        internalTestId,
        externalTestId,
        amountOfDaysId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'approved') {
      return approved;
    }
    if (relationField == 'development') {
      return development;
    }
    if (relationField == 'internalTest') {
      return internalTest;
    }
    if (relationField == 'externalTest') {
      return externalTest;
    }
    if (relationField == 'amountOfDays') {
      return amountOfDays;
    }
    return null;
  }
}

@Deprecated('Use StatusCardTable.t instead.')
StatusCardTable tStatusCard = StatusCardTable();

class StatusCardInclude extends _i1.IncludeObject {
  StatusCardInclude._({
    _i2.StatusCardDetailsInclude? approved,
    _i2.StatusCardDetailsInclude? development,
    _i2.StatusCardDetailsInclude? internalTest,
    _i2.StatusCardDetailsInclude? externalTest,
    _i2.AmountOfDaysInclude? amountOfDays,
  }) {
    _approved = approved;
    _development = development;
    _internalTest = internalTest;
    _externalTest = externalTest;
    _amountOfDays = amountOfDays;
  }

  _i2.StatusCardDetailsInclude? _approved;

  _i2.StatusCardDetailsInclude? _development;

  _i2.StatusCardDetailsInclude? _internalTest;

  _i2.StatusCardDetailsInclude? _externalTest;

  _i2.AmountOfDaysInclude? _amountOfDays;

  @override
  Map<String, _i1.Include?> get includes => {
        'approved': _approved,
        'development': _development,
        'internalTest': _internalTest,
        'externalTest': _externalTest,
        'amountOfDays': _amountOfDays,
      };

  @override
  _i1.Table get table => StatusCard.t;
}

class StatusCardIncludeList extends _i1.IncludeList {
  StatusCardIncludeList._({
    _i1.WhereExpressionBuilder<StatusCardTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StatusCard.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => StatusCard.t;
}

class StatusCardRepository {
  const StatusCardRepository._();

  final attachRow = const StatusCardAttachRowRepository._();

  final detachRow = const StatusCardDetachRowRepository._();

  Future<List<StatusCard>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StatusCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatusCardTable>? orderByList,
    _i1.Transaction? transaction,
    StatusCardInclude? include,
  }) async {
    return session.dbNext.find<StatusCard>(
      where: where?.call(StatusCard.t),
      orderBy: orderBy?.call(StatusCard.t),
      orderByList: orderByList?.call(StatusCard.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<StatusCard?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardTable>? where,
    int? offset,
    _i1.OrderByBuilder<StatusCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatusCardTable>? orderByList,
    _i1.Transaction? transaction,
    StatusCardInclude? include,
  }) async {
    return session.dbNext.findFirstRow<StatusCard>(
      where: where?.call(StatusCard.t),
      orderBy: orderBy?.call(StatusCard.t),
      orderByList: orderByList?.call(StatusCard.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<StatusCard?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    StatusCardInclude? include,
  }) async {
    return session.dbNext.findById<StatusCard>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<StatusCard>> insert(
    _i1.Session session,
    List<StatusCard> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<StatusCard>(
      rows,
      transaction: transaction,
    );
  }

  Future<StatusCard> insertRow(
    _i1.Session session,
    StatusCard row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<StatusCard>(
      row,
      transaction: transaction,
    );
  }

  Future<List<StatusCard>> update(
    _i1.Session session,
    List<StatusCard> rows, {
    _i1.ColumnSelections<StatusCardTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<StatusCard>(
      rows,
      columns: columns?.call(StatusCard.t),
      transaction: transaction,
    );
  }

  Future<StatusCard> updateRow(
    _i1.Session session,
    StatusCard row, {
    _i1.ColumnSelections<StatusCardTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<StatusCard>(
      row,
      columns: columns?.call(StatusCard.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<StatusCard> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<StatusCard>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    StatusCard row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<StatusCard>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StatusCardTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<StatusCard>(
      where: where(StatusCard.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatusCardTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<StatusCard>(
      where: where?.call(StatusCard.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class StatusCardAttachRowRepository {
  const StatusCardAttachRowRepository._();

  Future<void> approved(
    _i1.Session session,
    StatusCard statusCard,
    _i2.StatusCardDetails approved,
  ) async {
    if (statusCard.id == null) {
      throw ArgumentError.notNull('statusCard.id');
    }
    if (approved.id == null) {
      throw ArgumentError.notNull('approved.id');
    }

    var $statusCard = statusCard.copyWith(approvedId: approved.id);
    await session.dbNext.updateRow<StatusCard>(
      $statusCard,
      columns: [StatusCard.t.approvedId],
    );
  }

  Future<void> development(
    _i1.Session session,
    StatusCard statusCard,
    _i2.StatusCardDetails development,
  ) async {
    if (statusCard.id == null) {
      throw ArgumentError.notNull('statusCard.id');
    }
    if (development.id == null) {
      throw ArgumentError.notNull('development.id');
    }

    var $statusCard = statusCard.copyWith(developmentId: development.id);
    await session.dbNext.updateRow<StatusCard>(
      $statusCard,
      columns: [StatusCard.t.developmentId],
    );
  }

  Future<void> internalTest(
    _i1.Session session,
    StatusCard statusCard,
    _i2.StatusCardDetails internalTest,
  ) async {
    if (statusCard.id == null) {
      throw ArgumentError.notNull('statusCard.id');
    }
    if (internalTest.id == null) {
      throw ArgumentError.notNull('internalTest.id');
    }

    var $statusCard = statusCard.copyWith(internalTestId: internalTest.id);
    await session.dbNext.updateRow<StatusCard>(
      $statusCard,
      columns: [StatusCard.t.internalTestId],
    );
  }

  Future<void> externalTest(
    _i1.Session session,
    StatusCard statusCard,
    _i2.StatusCardDetails externalTest,
  ) async {
    if (statusCard.id == null) {
      throw ArgumentError.notNull('statusCard.id');
    }
    if (externalTest.id == null) {
      throw ArgumentError.notNull('externalTest.id');
    }

    var $statusCard = statusCard.copyWith(externalTestId: externalTest.id);
    await session.dbNext.updateRow<StatusCard>(
      $statusCard,
      columns: [StatusCard.t.externalTestId],
    );
  }

  Future<void> amountOfDays(
    _i1.Session session,
    StatusCard statusCard,
    _i2.AmountOfDays amountOfDays,
  ) async {
    if (statusCard.id == null) {
      throw ArgumentError.notNull('statusCard.id');
    }
    if (amountOfDays.id == null) {
      throw ArgumentError.notNull('amountOfDays.id');
    }

    var $statusCard = statusCard.copyWith(amountOfDaysId: amountOfDays.id);
    await session.dbNext.updateRow<StatusCard>(
      $statusCard,
      columns: [StatusCard.t.amountOfDaysId],
    );
  }
}

class StatusCardDetachRowRepository {
  const StatusCardDetachRowRepository._();

  Future<void> approved(
    _i1.Session session,
    StatusCard statuscard,
  ) async {
    if (statuscard.id == null) {
      throw ArgumentError.notNull('statuscard.id');
    }

    var $statuscard = statuscard.copyWith(approvedId: null);
    await session.dbNext.updateRow<StatusCard>(
      $statuscard,
      columns: [StatusCard.t.approvedId],
    );
  }

  Future<void> development(
    _i1.Session session,
    StatusCard statuscard,
  ) async {
    if (statuscard.id == null) {
      throw ArgumentError.notNull('statuscard.id');
    }

    var $statuscard = statuscard.copyWith(developmentId: null);
    await session.dbNext.updateRow<StatusCard>(
      $statuscard,
      columns: [StatusCard.t.developmentId],
    );
  }

  Future<void> internalTest(
    _i1.Session session,
    StatusCard statuscard,
  ) async {
    if (statuscard.id == null) {
      throw ArgumentError.notNull('statuscard.id');
    }

    var $statuscard = statuscard.copyWith(internalTestId: null);
    await session.dbNext.updateRow<StatusCard>(
      $statuscard,
      columns: [StatusCard.t.internalTestId],
    );
  }

  Future<void> externalTest(
    _i1.Session session,
    StatusCard statuscard,
  ) async {
    if (statuscard.id == null) {
      throw ArgumentError.notNull('statuscard.id');
    }

    var $statuscard = statuscard.copyWith(externalTestId: null);
    await session.dbNext.updateRow<StatusCard>(
      $statuscard,
      columns: [StatusCard.t.externalTestId],
    );
  }

  Future<void> amountOfDays(
    _i1.Session session,
    StatusCard statuscard,
  ) async {
    if (statuscard.id == null) {
      throw ArgumentError.notNull('statuscard.id');
    }

    var $statuscard = statuscard.copyWith(amountOfDaysId: null);
    await session.dbNext.updateRow<StatusCard>(
      $statuscard,
      columns: [StatusCard.t.amountOfDaysId],
    );
  }
}

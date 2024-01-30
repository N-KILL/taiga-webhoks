/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class AmountOfDays extends _i1.TableRow {
  AmountOfDays._({
    int? id,
    required this.preparation,
    required this.development,
    required this.approbation,
    required this.finalApprobation,
    required this.quality,
  }) : super(id);

  factory AmountOfDays({
    int? id,
    required String preparation,
    required String development,
    required String approbation,
    required String finalApprobation,
    required String quality,
  }) = _AmountOfDaysImpl;

  factory AmountOfDays.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return AmountOfDays(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      preparation: serializationManager
          .deserialize<String>(jsonSerialization['preparation']),
      development: serializationManager
          .deserialize<String>(jsonSerialization['development']),
      approbation: serializationManager
          .deserialize<String>(jsonSerialization['approbation']),
      finalApprobation: serializationManager
          .deserialize<String>(jsonSerialization['finalApprobation']),
      quality: serializationManager
          .deserialize<String>(jsonSerialization['quality']),
    );
  }

  static final t = AmountOfDaysTable();

  static const db = AmountOfDaysRepository._();

  String preparation;

  String development;

  String approbation;

  String finalApprobation;

  String quality;

  @override
  _i1.Table get table => t;

  AmountOfDays copyWith({
    int? id,
    String? preparation,
    String? development,
    String? approbation,
    String? finalApprobation,
    String? quality,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'preparation': preparation,
      'development': development,
      'approbation': approbation,
      'finalApprobation': finalApprobation,
      'quality': quality,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      if (id != null) 'id': id,
      'preparation': preparation,
      'development': development,
      'approbation': approbation,
      'finalApprobation': finalApprobation,
      'quality': quality,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'preparation': preparation,
      'development': development,
      'approbation': approbation,
      'finalApprobation': finalApprobation,
      'quality': quality,
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
      case 'preparation':
        preparation = value;
        return;
      case 'development':
        development = value;
        return;
      case 'approbation':
        approbation = value;
        return;
      case 'finalApprobation':
        finalApprobation = value;
        return;
      case 'quality':
        quality = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<AmountOfDays>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AmountOfDaysTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<AmountOfDays>(
      where: where != null ? where(AmountOfDays.t) : null,
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
  static Future<AmountOfDays?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AmountOfDaysTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<AmountOfDays>(
      where: where != null ? where(AmountOfDays.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<AmountOfDays?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<AmountOfDays>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AmountOfDaysTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AmountOfDays>(
      where: where(AmountOfDays.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    AmountOfDays row, {
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
    AmountOfDays row, {
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
    AmountOfDays row, {
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
    _i1.WhereExpressionBuilder<AmountOfDaysTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AmountOfDays>(
      where: where != null ? where(AmountOfDays.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static AmountOfDaysInclude include() {
    return AmountOfDaysInclude._();
  }

  static AmountOfDaysIncludeList includeList({
    _i1.WhereExpressionBuilder<AmountOfDaysTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AmountOfDaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmountOfDaysTable>? orderByList,
    AmountOfDaysInclude? include,
  }) {
    return AmountOfDaysIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AmountOfDays.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AmountOfDays.t),
      include: include,
    );
  }
}

class _Undefined {}

class _AmountOfDaysImpl extends AmountOfDays {
  _AmountOfDaysImpl({
    int? id,
    required String preparation,
    required String development,
    required String approbation,
    required String finalApprobation,
    required String quality,
  }) : super._(
          id: id,
          preparation: preparation,
          development: development,
          approbation: approbation,
          finalApprobation: finalApprobation,
          quality: quality,
        );

  @override
  AmountOfDays copyWith({
    Object? id = _Undefined,
    String? preparation,
    String? development,
    String? approbation,
    String? finalApprobation,
    String? quality,
  }) {
    return AmountOfDays(
      id: id is int? ? id : this.id,
      preparation: preparation ?? this.preparation,
      development: development ?? this.development,
      approbation: approbation ?? this.approbation,
      finalApprobation: finalApprobation ?? this.finalApprobation,
      quality: quality ?? this.quality,
    );
  }
}

class AmountOfDaysTable extends _i1.Table {
  AmountOfDaysTable({super.tableRelation})
      : super(tableName: 'figma_day_counter') {
    preparation = _i1.ColumnString(
      'preparation',
      this,
    );
    development = _i1.ColumnString(
      'development',
      this,
    );
    approbation = _i1.ColumnString(
      'approbation',
      this,
    );
    finalApprobation = _i1.ColumnString(
      'finalApprobation',
      this,
    );
    quality = _i1.ColumnString(
      'quality',
      this,
    );
  }

  late final _i1.ColumnString preparation;

  late final _i1.ColumnString development;

  late final _i1.ColumnString approbation;

  late final _i1.ColumnString finalApprobation;

  late final _i1.ColumnString quality;

  @override
  List<_i1.Column> get columns => [
        id,
        preparation,
        development,
        approbation,
        finalApprobation,
        quality,
      ];
}

@Deprecated('Use AmountOfDaysTable.t instead.')
AmountOfDaysTable tAmountOfDays = AmountOfDaysTable();

class AmountOfDaysInclude extends _i1.IncludeObject {
  AmountOfDaysInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => AmountOfDays.t;
}

class AmountOfDaysIncludeList extends _i1.IncludeList {
  AmountOfDaysIncludeList._({
    _i1.WhereExpressionBuilder<AmountOfDaysTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AmountOfDays.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => AmountOfDays.t;
}

class AmountOfDaysRepository {
  const AmountOfDaysRepository._();

  Future<List<AmountOfDays>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AmountOfDaysTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AmountOfDaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmountOfDaysTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<AmountOfDays>(
      where: where?.call(AmountOfDays.t),
      orderBy: orderBy?.call(AmountOfDays.t),
      orderByList: orderByList?.call(AmountOfDays.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<AmountOfDays?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AmountOfDaysTable>? where,
    int? offset,
    _i1.OrderByBuilder<AmountOfDaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmountOfDaysTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<AmountOfDays>(
      where: where?.call(AmountOfDays.t),
      orderBy: orderBy?.call(AmountOfDays.t),
      orderByList: orderByList?.call(AmountOfDays.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<AmountOfDays?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<AmountOfDays>(
      id,
      transaction: transaction,
    );
  }

  Future<List<AmountOfDays>> insert(
    _i1.Session session,
    List<AmountOfDays> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<AmountOfDays>(
      rows,
      transaction: transaction,
    );
  }

  Future<AmountOfDays> insertRow(
    _i1.Session session,
    AmountOfDays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<AmountOfDays>(
      row,
      transaction: transaction,
    );
  }

  Future<List<AmountOfDays>> update(
    _i1.Session session,
    List<AmountOfDays> rows, {
    _i1.ColumnSelections<AmountOfDaysTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<AmountOfDays>(
      rows,
      columns: columns?.call(AmountOfDays.t),
      transaction: transaction,
    );
  }

  Future<AmountOfDays> updateRow(
    _i1.Session session,
    AmountOfDays row, {
    _i1.ColumnSelections<AmountOfDaysTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<AmountOfDays>(
      row,
      columns: columns?.call(AmountOfDays.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<AmountOfDays> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<AmountOfDays>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    AmountOfDays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<AmountOfDays>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AmountOfDaysTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<AmountOfDays>(
      where: where(AmountOfDays.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AmountOfDaysTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<AmountOfDays>(
      where: where?.call(AmountOfDays.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

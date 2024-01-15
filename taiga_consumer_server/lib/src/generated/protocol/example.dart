/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class TaigaConsumer extends _i1.TableRow {
  TaigaConsumer._({
    int? id,
    required this.data,
  }) : super(id);

  factory TaigaConsumer({
    int? id,
    required Map<String, String> data,
  }) = _TaigaConsumerImpl;

  factory TaigaConsumer.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaConsumer(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      data: serializationManager
          .deserialize<Map<String, String>>(jsonSerialization['data']),
    );
  }

  static final t = TaigaConsumerTable();

  static const db = TaigaConsumerRepository._();

  Map<String, String> data;

  @override
  _i1.Table get table => t;

  TaigaConsumer copyWith({
    int? id,
    Map<String, String>? data,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'data': data,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'data': data,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'data': data,
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
      case 'data':
        data = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<TaigaConsumer>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaConsumerTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TaigaConsumer>(
      where: where != null ? where(TaigaConsumer.t) : null,
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
  static Future<TaigaConsumer?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaConsumerTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TaigaConsumer>(
      where: where != null ? where(TaigaConsumer.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<TaigaConsumer?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TaigaConsumer>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaConsumerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TaigaConsumer>(
      where: where(TaigaConsumer.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    TaigaConsumer row, {
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
    TaigaConsumer row, {
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
    TaigaConsumer row, {
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
    _i1.WhereExpressionBuilder<TaigaConsumerTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TaigaConsumer>(
      where: where != null ? where(TaigaConsumer.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TaigaConsumerInclude include() {
    return TaigaConsumerInclude._();
  }

  static TaigaConsumerIncludeList includeList({
    _i1.WhereExpressionBuilder<TaigaConsumerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaConsumerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaConsumerTable>? orderByList,
    TaigaConsumerInclude? include,
  }) {
    return TaigaConsumerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TaigaConsumer.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TaigaConsumer.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TaigaConsumerImpl extends TaigaConsumer {
  _TaigaConsumerImpl({
    int? id,
    required Map<String, String> data,
  }) : super._(
          id: id,
          data: data,
        );

  @override
  TaigaConsumer copyWith({
    Object? id = _Undefined,
    Map<String, String>? data,
  }) {
    return TaigaConsumer(
      id: id is int? ? id : this.id,
      data: data ?? this.data.clone(),
    );
  }
}

class TaigaConsumerTable extends _i1.Table {
  TaigaConsumerTable({super.tableRelation})
      : super(tableName: 'taiga_consumer') {
    data = _i1.ColumnSerializable(
      'data',
      this,
    );
  }

  late final _i1.ColumnSerializable data;

  @override
  List<_i1.Column> get columns => [
        id,
        data,
      ];
}

@Deprecated('Use TaigaConsumerTable.t instead.')
TaigaConsumerTable tTaigaConsumer = TaigaConsumerTable();

class TaigaConsumerInclude extends _i1.IncludeObject {
  TaigaConsumerInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => TaigaConsumer.t;
}

class TaigaConsumerIncludeList extends _i1.IncludeList {
  TaigaConsumerIncludeList._({
    _i1.WhereExpressionBuilder<TaigaConsumerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TaigaConsumer.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TaigaConsumer.t;
}

class TaigaConsumerRepository {
  const TaigaConsumerRepository._();

  Future<List<TaigaConsumer>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaConsumerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaConsumerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaConsumerTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<TaigaConsumer>(
      where: where?.call(TaigaConsumer.t),
      orderBy: orderBy?.call(TaigaConsumer.t),
      orderByList: orderByList?.call(TaigaConsumer.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TaigaConsumer?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaConsumerTable>? where,
    int? offset,
    _i1.OrderByBuilder<TaigaConsumerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaConsumerTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<TaigaConsumer>(
      where: where?.call(TaigaConsumer.t),
      orderBy: orderBy?.call(TaigaConsumer.t),
      orderByList: orderByList?.call(TaigaConsumer.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TaigaConsumer?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<TaigaConsumer>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TaigaConsumer>> insert(
    _i1.Session session,
    List<TaigaConsumer> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<TaigaConsumer>(
      rows,
      transaction: transaction,
    );
  }

  Future<TaigaConsumer> insertRow(
    _i1.Session session,
    TaigaConsumer row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<TaigaConsumer>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TaigaConsumer>> update(
    _i1.Session session,
    List<TaigaConsumer> rows, {
    _i1.ColumnSelections<TaigaConsumerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<TaigaConsumer>(
      rows,
      columns: columns?.call(TaigaConsumer.t),
      transaction: transaction,
    );
  }

  Future<TaigaConsumer> updateRow(
    _i1.Session session,
    TaigaConsumer row, {
    _i1.ColumnSelections<TaigaConsumerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<TaigaConsumer>(
      row,
      columns: columns?.call(TaigaConsumer.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<TaigaConsumer> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<TaigaConsumer>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    TaigaConsumer row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<TaigaConsumer>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaConsumerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<TaigaConsumer>(
      where: where(TaigaConsumer.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaConsumerTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<TaigaConsumer>(
      where: where?.call(TaigaConsumer.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

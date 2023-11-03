/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class TaigaConsumer extends _i1.TableRow {
  TaigaConsumer({
    int? id,
    required this.data,
  }) : super(id);

  factory TaigaConsumer.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaConsumer(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      data: serializationManager
          .deserialize<Map<String, dynamic>>(jsonSerialization['data']),
    );
  }

  static final t = TaigaConsumerTable();

  Map<String, dynamic> data;

  @override
  String get tableName => 'taiga_consumer';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'data': data,
    };
  }

  @override
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

  static Future<List<TaigaConsumer>> find(
    _i1.Session session, {
    TaigaConsumerExpressionBuilder? where,
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

  static Future<TaigaConsumer?> findSingleRow(
    _i1.Session session, {
    TaigaConsumerExpressionBuilder? where,
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

  static Future<TaigaConsumer?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TaigaConsumer>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TaigaConsumerExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TaigaConsumer>(
      where: where(TaigaConsumer.t),
      transaction: transaction,
    );
  }

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

  static Future<int> count(
    _i1.Session session, {
    TaigaConsumerExpressionBuilder? where,
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
}

typedef TaigaConsumerExpressionBuilder = _i1.Expression Function(
    TaigaConsumerTable);

class TaigaConsumerTable extends _i1.Table {
  TaigaConsumerTable() : super(tableName: 'taiga_consumer');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final data = _i1.ColumnSerializable('data');

  @override
  List<_i1.Column> get columns => [
        id,
        data,
      ];
}

@Deprecated('Use TaigaConsumerTable.t instead.')
TaigaConsumerTable tTaigaConsumer = TaigaConsumerTable();

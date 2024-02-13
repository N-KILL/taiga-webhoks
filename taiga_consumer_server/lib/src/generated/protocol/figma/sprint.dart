/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Sprint extends _i1.TableRow {
  Sprint._({
    int? id,
    required this.name,
    required this.taigaId,
  }) : super(id);

  factory Sprint({
    int? id,
    required String name,
    required int taigaId,
  }) = _SprintImpl;

  factory Sprint.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Sprint(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      taigaId:
          serializationManager.deserialize<int>(jsonSerialization['taigaId']),
    );
  }

  static final t = SprintTable();

  static const db = SprintRepository._();

  String name;

  int taigaId;

  @override
  _i1.Table get table => t;

  Sprint copyWith({
    int? id,
    String? name,
    int? taigaId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'taigaId': taigaId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'taigaId': taigaId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'taigaId': taigaId,
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
      case 'name':
        name = value;
        return;
      case 'taigaId':
        taigaId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Sprint>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SprintTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Sprint>(
      where: where != null ? where(Sprint.t) : null,
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
  static Future<Sprint?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SprintTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Sprint>(
      where: where != null ? where(Sprint.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Sprint?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Sprint>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SprintTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Sprint>(
      where: where(Sprint.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Sprint row, {
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
    Sprint row, {
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
    Sprint row, {
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
    _i1.WhereExpressionBuilder<SprintTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Sprint>(
      where: where != null ? where(Sprint.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SprintInclude include() {
    return SprintInclude._();
  }

  static SprintIncludeList includeList({
    _i1.WhereExpressionBuilder<SprintTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SprintTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SprintTable>? orderByList,
    SprintInclude? include,
  }) {
    return SprintIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Sprint.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Sprint.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SprintImpl extends Sprint {
  _SprintImpl({
    int? id,
    required String name,
    required int taigaId,
  }) : super._(
          id: id,
          name: name,
          taigaId: taigaId,
        );

  @override
  Sprint copyWith({
    Object? id = _Undefined,
    String? name,
    int? taigaId,
  }) {
    return Sprint(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      taigaId: taigaId ?? this.taigaId,
    );
  }
}

class SprintTable extends _i1.Table {
  SprintTable({super.tableRelation}) : super(tableName: 'figma_sprint_data') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    taigaId = _i1.ColumnInt(
      'taigaId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt taigaId;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        taigaId,
      ];
}

@Deprecated('Use SprintTable.t instead.')
SprintTable tSprint = SprintTable();

class SprintInclude extends _i1.IncludeObject {
  SprintInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Sprint.t;
}

class SprintIncludeList extends _i1.IncludeList {
  SprintIncludeList._({
    _i1.WhereExpressionBuilder<SprintTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Sprint.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Sprint.t;
}

class SprintRepository {
  const SprintRepository._();

  Future<List<Sprint>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SprintTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SprintTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SprintTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Sprint>(
      where: where?.call(Sprint.t),
      orderBy: orderBy?.call(Sprint.t),
      orderByList: orderByList?.call(Sprint.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Sprint?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SprintTable>? where,
    int? offset,
    _i1.OrderByBuilder<SprintTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SprintTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Sprint>(
      where: where?.call(Sprint.t),
      orderBy: orderBy?.call(Sprint.t),
      orderByList: orderByList?.call(Sprint.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Sprint?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Sprint>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Sprint>> insert(
    _i1.Session session,
    List<Sprint> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Sprint>(
      rows,
      transaction: transaction,
    );
  }

  Future<Sprint> insertRow(
    _i1.Session session,
    Sprint row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Sprint>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Sprint>> update(
    _i1.Session session,
    List<Sprint> rows, {
    _i1.ColumnSelections<SprintTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Sprint>(
      rows,
      columns: columns?.call(Sprint.t),
      transaction: transaction,
    );
  }

  Future<Sprint> updateRow(
    _i1.Session session,
    Sprint row, {
    _i1.ColumnSelections<SprintTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Sprint>(
      row,
      columns: columns?.call(Sprint.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Sprint> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Sprint>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Sprint row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Sprint>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SprintTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Sprint>(
      where: where(Sprint.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SprintTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Sprint>(
      where: where?.call(Sprint.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

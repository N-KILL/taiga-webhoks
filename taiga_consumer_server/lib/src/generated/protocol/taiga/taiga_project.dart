/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class TaigaProject extends _i1.TableRow {
  TaigaProject._({
    int? id,
    required this.title,
    required this.taigaId,
  }) : super(id);

  factory TaigaProject({
    int? id,
    required String title,
    required int taigaId,
  }) = _TaigaProjectImpl;

  factory TaigaProject.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TaigaProject(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      taigaId:
          serializationManager.deserialize<int>(jsonSerialization['taigaId']),
    );
  }

  static final t = TaigaProjectTable();

  static const db = TaigaProjectRepository._();

  String title;

  int taigaId;

  @override
  _i1.Table get table => t;

  TaigaProject copyWith({
    int? id,
    String? title,
    int? taigaId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'taigaId': taigaId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'taigaId': taigaId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'taigaId': taigaId,
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
      case 'title':
        title = value;
        return;
      case 'taigaId':
        taigaId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<TaigaProject>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaProjectTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TaigaProject>(
      where: where != null ? where(TaigaProject.t) : null,
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
  static Future<TaigaProject?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaProjectTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TaigaProject>(
      where: where != null ? where(TaigaProject.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<TaigaProject?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TaigaProject>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaProjectTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TaigaProject>(
      where: where(TaigaProject.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    TaigaProject row, {
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
    TaigaProject row, {
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
    TaigaProject row, {
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
    _i1.WhereExpressionBuilder<TaigaProjectTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TaigaProject>(
      where: where != null ? where(TaigaProject.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TaigaProjectInclude include() {
    return TaigaProjectInclude._();
  }

  static TaigaProjectIncludeList includeList({
    _i1.WhereExpressionBuilder<TaigaProjectTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaProjectTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaProjectTable>? orderByList,
    TaigaProjectInclude? include,
  }) {
    return TaigaProjectIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TaigaProject.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TaigaProject.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TaigaProjectImpl extends TaigaProject {
  _TaigaProjectImpl({
    int? id,
    required String title,
    required int taigaId,
  }) : super._(
          id: id,
          title: title,
          taigaId: taigaId,
        );

  @override
  TaigaProject copyWith({
    Object? id = _Undefined,
    String? title,
    int? taigaId,
  }) {
    return TaigaProject(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      taigaId: taigaId ?? this.taigaId,
    );
  }
}

class TaigaProjectTable extends _i1.Table {
  TaigaProjectTable({super.tableRelation}) : super(tableName: 'taiga_project') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    taigaId = _i1.ColumnInt(
      'taigaId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnInt taigaId;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        taigaId,
      ];
}

@Deprecated('Use TaigaProjectTable.t instead.')
TaigaProjectTable tTaigaProject = TaigaProjectTable();

class TaigaProjectInclude extends _i1.IncludeObject {
  TaigaProjectInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => TaigaProject.t;
}

class TaigaProjectIncludeList extends _i1.IncludeList {
  TaigaProjectIncludeList._({
    _i1.WhereExpressionBuilder<TaigaProjectTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TaigaProject.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TaigaProject.t;
}

class TaigaProjectRepository {
  const TaigaProjectRepository._();

  Future<List<TaigaProject>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaProjectTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TaigaProjectTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaProjectTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<TaigaProject>(
      where: where?.call(TaigaProject.t),
      orderBy: orderBy?.call(TaigaProject.t),
      orderByList: orderByList?.call(TaigaProject.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TaigaProject?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaProjectTable>? where,
    int? offset,
    _i1.OrderByBuilder<TaigaProjectTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TaigaProjectTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<TaigaProject>(
      where: where?.call(TaigaProject.t),
      orderBy: orderBy?.call(TaigaProject.t),
      orderByList: orderByList?.call(TaigaProject.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TaigaProject?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<TaigaProject>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TaigaProject>> insert(
    _i1.Session session,
    List<TaigaProject> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<TaigaProject>(
      rows,
      transaction: transaction,
    );
  }

  Future<TaigaProject> insertRow(
    _i1.Session session,
    TaigaProject row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<TaigaProject>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TaigaProject>> update(
    _i1.Session session,
    List<TaigaProject> rows, {
    _i1.ColumnSelections<TaigaProjectTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<TaigaProject>(
      rows,
      columns: columns?.call(TaigaProject.t),
      transaction: transaction,
    );
  }

  Future<TaigaProject> updateRow(
    _i1.Session session,
    TaigaProject row, {
    _i1.ColumnSelections<TaigaProjectTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<TaigaProject>(
      row,
      columns: columns?.call(TaigaProject.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<TaigaProject> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<TaigaProject>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    TaigaProject row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<TaigaProject>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TaigaProjectTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<TaigaProject>(
      where: where(TaigaProject.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TaigaProjectTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<TaigaProject>(
      where: where?.call(TaigaProject.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

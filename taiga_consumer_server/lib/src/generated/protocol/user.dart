/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class User extends _i1.TableRow {
  User._({
    int? id,
    required this.username,
    this.userAvatar,
    required this.fullName,
    this.taigaId,
    this.gitHubId,
    this.gitLabId,
  }) : super(id);

  factory User({
    int? id,
    required String username,
    String? userAvatar,
    required String fullName,
    int? taigaId,
    int? gitHubId,
    int? gitLabId,
  }) = _UserImpl;

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      username: serializationManager
          .deserialize<String>(jsonSerialization['username']),
      userAvatar: serializationManager
          .deserialize<String?>(jsonSerialization['userAvatar']),
      fullName: serializationManager
          .deserialize<String>(jsonSerialization['fullName']),
      taigaId:
          serializationManager.deserialize<int?>(jsonSerialization['taigaId']),
      gitHubId:
          serializationManager.deserialize<int?>(jsonSerialization['gitHubId']),
      gitLabId:
          serializationManager.deserialize<int?>(jsonSerialization['gitLabId']),
    );
  }

  static final t = UserTable();

  static const db = UserRepository._();

  /// Status of the job
  String username;

  /// Url of the user avatar
  String? userAvatar;

  /// Full name of the user
  String fullName;

  /// Id of the Taiga account of the user
  int? taigaId;

  /// Id of the GitHub account of the user
  int? gitHubId;

  /// Id of the GitLab account of the user
  int? gitLabId;

  @override
  _i1.Table get table => t;

  User copyWith({
    int? id,
    String? username,
    String? userAvatar,
    String? fullName,
    int? taigaId,
    int? gitHubId,
    int? gitLabId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'username': username,
      if (userAvatar != null) 'userAvatar': userAvatar,
      'fullName': fullName,
      if (taigaId != null) 'taigaId': taigaId,
      if (gitHubId != null) 'gitHubId': gitHubId,
      if (gitLabId != null) 'gitLabId': gitLabId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'username': username,
      'userAvatar': userAvatar,
      'fullName': fullName,
      'taigaId': taigaId,
      'gitHubId': gitHubId,
      'gitLabId': gitLabId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'username': username,
      if (userAvatar != null) 'userAvatar': userAvatar,
      'fullName': fullName,
      if (taigaId != null) 'taigaId': taigaId,
      if (gitHubId != null) 'gitHubId': gitHubId,
      if (gitLabId != null) 'gitLabId': gitLabId,
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
      case 'username':
        username = value;
        return;
      case 'userAvatar':
        userAvatar = value;
        return;
      case 'fullName':
        fullName = value;
        return;
      case 'taigaId':
        taigaId = value;
        return;
      case 'gitHubId':
        gitHubId = value;
        return;
      case 'gitLabId':
        gitLabId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<User>(
      where: where != null ? where(User.t) : null,
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
  static Future<User?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<User>(
      where: where != null ? where(User.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<User?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<User>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    User row, {
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
    User row, {
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
    User row, {
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
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UserInclude include() {
    return UserInclude._();
  }

  static UserIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    UserInclude? include,
  }) {
    return UserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(User.t),
      include: include,
    );
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String username,
    String? userAvatar,
    required String fullName,
    int? taigaId,
    int? gitHubId,
    int? gitLabId,
  }) : super._(
          id: id,
          username: username,
          userAvatar: userAvatar,
          fullName: fullName,
          taigaId: taigaId,
          gitHubId: gitHubId,
          gitLabId: gitLabId,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    String? username,
    Object? userAvatar = _Undefined,
    String? fullName,
    Object? taigaId = _Undefined,
    Object? gitHubId = _Undefined,
    Object? gitLabId = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      username: username ?? this.username,
      userAvatar: userAvatar is String? ? userAvatar : this.userAvatar,
      fullName: fullName ?? this.fullName,
      taigaId: taigaId is int? ? taigaId : this.taigaId,
      gitHubId: gitHubId is int? ? gitHubId : this.gitHubId,
      gitLabId: gitLabId is int? ? gitLabId : this.gitLabId,
    );
  }
}

class UserTable extends _i1.Table {
  UserTable({super.tableRelation}) : super(tableName: 'users') {
    username = _i1.ColumnString(
      'username',
      this,
    );
    userAvatar = _i1.ColumnString(
      'userAvatar',
      this,
    );
    fullName = _i1.ColumnString(
      'fullName',
      this,
    );
    taigaId = _i1.ColumnInt(
      'taigaId',
      this,
    );
    gitHubId = _i1.ColumnInt(
      'gitHubId',
      this,
    );
    gitLabId = _i1.ColumnInt(
      'gitLabId',
      this,
    );
  }

  /// Status of the job
  late final _i1.ColumnString username;

  /// Url of the user avatar
  late final _i1.ColumnString userAvatar;

  /// Full name of the user
  late final _i1.ColumnString fullName;

  /// Id of the Taiga account of the user
  late final _i1.ColumnInt taigaId;

  /// Id of the GitHub account of the user
  late final _i1.ColumnInt gitHubId;

  /// Id of the GitLab account of the user
  late final _i1.ColumnInt gitLabId;

  @override
  List<_i1.Column> get columns => [
        id,
        username,
        userAvatar,
        fullName,
        taigaId,
        gitHubId,
        gitLabId,
      ];
}

@Deprecated('Use UserTable.t instead.')
UserTable tUser = UserTable();

class UserInclude extends _i1.IncludeObject {
  UserInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => User.t;
}

class UserIncludeList extends _i1.IncludeList {
  UserIncludeList._({
    _i1.WhereExpressionBuilder<UserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(User.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => User.t;
}

class UserRepository {
  const UserRepository._();

  Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<User?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<User?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<User>(
      id,
      transaction: transaction,
    );
  }

  Future<List<User>> insert(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<User> insertRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<User>> update(
    _i1.Session session,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<User> updateRow(
    _i1.Session session,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

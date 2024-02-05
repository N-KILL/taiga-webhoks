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
import 'package:serverpod_serialization/serverpod_serialization.dart';

/// This class [FigmaAction] is used to create models, to interact
/// with the figma plugin <https://github.com/N-KILL/Nidus-Figma-Plugin>
///
/// Also this model, have the bool isActive to indicate is the action
/// has been used or not. The idea is to keep it active, until pass 24Hrs
/// since the use on figma
abstract class FigmaAction extends _i1.TableRow {
  FigmaAction._({
    int? id,
    required this.action,
    this.huDataId,
    this.huData,
    required this.isActive,
    required this.creationDate,
    this.inactiveSince,
    required this.projectId,
    this.project,
  }) : super(id);

  factory FigmaAction({
    int? id,
    required _i2.ActionType action,
    int? huDataId,
    _i2.HuData? huData,
    required bool isActive,
    required DateTime creationDate,
    DateTime? inactiveSince,
    required int projectId,
    _i2.TaigaProject? project,
  }) = _FigmaActionImpl;

  factory FigmaAction.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FigmaAction(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      action: serializationManager
          .deserialize<_i2.ActionType>(jsonSerialization['action']),
      huDataId:
          serializationManager.deserialize<int?>(jsonSerialization['huDataId']),
      huData: serializationManager
          .deserialize<_i2.HuData?>(jsonSerialization['huData']),
      isActive:
          serializationManager.deserialize<bool>(jsonSerialization['isActive']),
      creationDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['creationDate']),
      inactiveSince: serializationManager
          .deserialize<DateTime?>(jsonSerialization['inactiveSince']),
      projectId:
          serializationManager.deserialize<int>(jsonSerialization['projectId']),
      project: serializationManager
          .deserialize<_i2.TaigaProject?>(jsonSerialization['project']),
    );
  }

  static final t = FigmaActionTable();

  static const db = FigmaActionRepository._();

  /// This is a enum to filter through the actions types
  _i2.ActionType action;

  int? huDataId;

  /// This is data about the UserStory
  _i2.HuData? huData;

  /// Bool used to indicate the status of the action
  /// This have to be by default on True, and after 24Hrs
  /// of been used by the plugin have to set as false
  /// The plugin will call an endpoint to get all the active
  /// actions related to one project
  bool isActive;

  /// This is the date when the action was registered on the database
  DateTime creationDate;

  /// This is the date when the action was set as inactive
  DateTime? inactiveSince;

  int projectId;

  /// This is the project related to this action
  /// this value has to been used, to filter the actions by project
  _i2.TaigaProject? project;

  @override
  _i1.Table get table => t;

  FigmaAction copyWith({
    int? id,
    _i2.ActionType? action,
    int? huDataId,
    _i2.HuData? huData,
    bool? isActive,
    DateTime? creationDate,
    DateTime? inactiveSince,
    int? projectId,
    _i2.TaigaProject? project,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'action': action.toJson(),
      if (huDataId != null) 'huDataId': huDataId,
      if (huData != null) 'huData': huData?.toJson(),
      'isActive': isActive,
      'creationDate': creationDate.toJson(),
      if (inactiveSince != null) 'inactiveSince': inactiveSince?.toJson(),
      'projectId': projectId,
      if (project != null) 'project': project?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'action': action,
      'huDataId': huDataId,
      'isActive': isActive,
      'creationDate': creationDate,
      'inactiveSince': inactiveSince,
      'projectId': projectId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'action': action.toJson(),
      if (huDataId != null) 'huDataId': huDataId,
      if (huData != null) 'huData': huData?.allToJson(),
      'isActive': isActive,
      'creationDate': creationDate.toJson(),
      if (inactiveSince != null) 'inactiveSince': inactiveSince?.toJson(),
      'projectId': projectId,
      if (project != null) 'project': project?.allToJson(),
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
      case 'action':
        action = value;
        return;
      case 'huDataId':
        huDataId = value;
        return;
      case 'isActive':
        isActive = value;
        return;
      case 'creationDate':
        creationDate = value;
        return;
      case 'inactiveSince':
        inactiveSince = value;
        return;
      case 'projectId':
        projectId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<FigmaAction>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FigmaActionTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    FigmaActionInclude? include,
  }) async {
    return session.db.find<FigmaAction>(
      where: where != null ? where(FigmaAction.t) : null,
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
  static Future<FigmaAction?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FigmaActionTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    FigmaActionInclude? include,
  }) async {
    return session.db.findSingleRow<FigmaAction>(
      where: where != null ? where(FigmaAction.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<FigmaAction?> findById(
    _i1.Session session,
    int id, {
    FigmaActionInclude? include,
  }) async {
    return session.db.findById<FigmaAction>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FigmaActionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FigmaAction>(
      where: where(FigmaAction.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    FigmaAction row, {
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
    FigmaAction row, {
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
    FigmaAction row, {
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
    _i1.WhereExpressionBuilder<FigmaActionTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FigmaAction>(
      where: where != null ? where(FigmaAction.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FigmaActionInclude include({
    _i2.HuDataInclude? huData,
    _i2.TaigaProjectInclude? project,
  }) {
    return FigmaActionInclude._(
      huData: huData,
      project: project,
    );
  }

  static FigmaActionIncludeList includeList({
    _i1.WhereExpressionBuilder<FigmaActionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FigmaActionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FigmaActionTable>? orderByList,
    FigmaActionInclude? include,
  }) {
    return FigmaActionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FigmaAction.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FigmaAction.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FigmaActionImpl extends FigmaAction {
  _FigmaActionImpl({
    int? id,
    required _i2.ActionType action,
    int? huDataId,
    _i2.HuData? huData,
    required bool isActive,
    required DateTime creationDate,
    DateTime? inactiveSince,
    required int projectId,
    _i2.TaigaProject? project,
  }) : super._(
          id: id,
          action: action,
          huDataId: huDataId,
          huData: huData,
          isActive: isActive,
          creationDate: creationDate,
          inactiveSince: inactiveSince,
          projectId: projectId,
          project: project,
        );

  @override
  FigmaAction copyWith({
    Object? id = _Undefined,
    _i2.ActionType? action,
    Object? huDataId = _Undefined,
    Object? huData = _Undefined,
    bool? isActive,
    DateTime? creationDate,
    Object? inactiveSince = _Undefined,
    int? projectId,
    Object? project = _Undefined,
  }) {
    return FigmaAction(
      id: id is int? ? id : this.id,
      action: action ?? this.action,
      huDataId: huDataId is int? ? huDataId : this.huDataId,
      huData: huData is _i2.HuData? ? huData : this.huData?.copyWith(),
      isActive: isActive ?? this.isActive,
      creationDate: creationDate ?? this.creationDate,
      inactiveSince:
          inactiveSince is DateTime? ? inactiveSince : this.inactiveSince,
      projectId: projectId ?? this.projectId,
      project:
          project is _i2.TaigaProject? ? project : this.project?.copyWith(),
    );
  }
}

class FigmaActionTable extends _i1.Table {
  FigmaActionTable({super.tableRelation}) : super(tableName: 'figma_action') {
    action = _i1.ColumnEnum(
      'action',
      this,
      _i1.EnumSerialization.byName,
    );
    huDataId = _i1.ColumnInt(
      'huDataId',
      this,
    );
    isActive = _i1.ColumnBool(
      'isActive',
      this,
    );
    creationDate = _i1.ColumnDateTime(
      'creationDate',
      this,
    );
    inactiveSince = _i1.ColumnDateTime(
      'inactiveSince',
      this,
    );
    projectId = _i1.ColumnInt(
      'projectId',
      this,
    );
  }

  /// This is a enum to filter through the actions types
  late final _i1.ColumnEnum<_i2.ActionType> action;

  late final _i1.ColumnInt huDataId;

  /// This is data about the UserStory
  _i2.HuDataTable? _huData;

  /// Bool used to indicate the status of the action
  /// This have to be by default on True, and after 24Hrs
  /// of been used by the plugin have to set as false
  /// The plugin will call an endpoint to get all the active
  /// actions related to one project
  late final _i1.ColumnBool isActive;

  /// This is the date when the action was registered on the database
  late final _i1.ColumnDateTime creationDate;

  /// This is the date when the action was set as inactive
  late final _i1.ColumnDateTime inactiveSince;

  late final _i1.ColumnInt projectId;

  /// This is the project related to this action
  /// this value has to been used, to filter the actions by project
  _i2.TaigaProjectTable? _project;

  _i2.HuDataTable get huData {
    if (_huData != null) return _huData!;
    _huData = _i1.createRelationTable(
      relationFieldName: 'huData',
      field: FigmaAction.t.huDataId,
      foreignField: _i2.HuData.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.HuDataTable(tableRelation: foreignTableRelation),
    );
    return _huData!;
  }

  _i2.TaigaProjectTable get project {
    if (_project != null) return _project!;
    _project = _i1.createRelationTable(
      relationFieldName: 'project',
      field: FigmaAction.t.projectId,
      foreignField: _i2.TaigaProject.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TaigaProjectTable(tableRelation: foreignTableRelation),
    );
    return _project!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        action,
        huDataId,
        isActive,
        creationDate,
        inactiveSince,
        projectId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'huData') {
      return huData;
    }
    if (relationField == 'project') {
      return project;
    }
    return null;
  }
}

@Deprecated('Use FigmaActionTable.t instead.')
FigmaActionTable tFigmaAction = FigmaActionTable();

class FigmaActionInclude extends _i1.IncludeObject {
  FigmaActionInclude._({
    _i2.HuDataInclude? huData,
    _i2.TaigaProjectInclude? project,
  }) {
    _huData = huData;
    _project = project;
  }

  _i2.HuDataInclude? _huData;

  _i2.TaigaProjectInclude? _project;

  @override
  Map<String, _i1.Include?> get includes => {
        'huData': _huData,
        'project': _project,
      };

  @override
  _i1.Table get table => FigmaAction.t;
}

class FigmaActionIncludeList extends _i1.IncludeList {
  FigmaActionIncludeList._({
    _i1.WhereExpressionBuilder<FigmaActionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FigmaAction.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => FigmaAction.t;
}

class FigmaActionRepository {
  const FigmaActionRepository._();

  final attachRow = const FigmaActionAttachRowRepository._();

  final detachRow = const FigmaActionDetachRowRepository._();

  Future<List<FigmaAction>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FigmaActionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FigmaActionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FigmaActionTable>? orderByList,
    _i1.Transaction? transaction,
    FigmaActionInclude? include,
  }) async {
    return session.dbNext.find<FigmaAction>(
      where: where?.call(FigmaAction.t),
      orderBy: orderBy?.call(FigmaAction.t),
      orderByList: orderByList?.call(FigmaAction.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<FigmaAction?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FigmaActionTable>? where,
    int? offset,
    _i1.OrderByBuilder<FigmaActionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FigmaActionTable>? orderByList,
    _i1.Transaction? transaction,
    FigmaActionInclude? include,
  }) async {
    return session.dbNext.findFirstRow<FigmaAction>(
      where: where?.call(FigmaAction.t),
      orderBy: orderBy?.call(FigmaAction.t),
      orderByList: orderByList?.call(FigmaAction.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<FigmaAction?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FigmaActionInclude? include,
  }) async {
    return session.dbNext.findById<FigmaAction>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<FigmaAction>> insert(
    _i1.Session session,
    List<FigmaAction> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<FigmaAction>(
      rows,
      transaction: transaction,
    );
  }

  Future<FigmaAction> insertRow(
    _i1.Session session,
    FigmaAction row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<FigmaAction>(
      row,
      transaction: transaction,
    );
  }

  Future<List<FigmaAction>> update(
    _i1.Session session,
    List<FigmaAction> rows, {
    _i1.ColumnSelections<FigmaActionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<FigmaAction>(
      rows,
      columns: columns?.call(FigmaAction.t),
      transaction: transaction,
    );
  }

  Future<FigmaAction> updateRow(
    _i1.Session session,
    FigmaAction row, {
    _i1.ColumnSelections<FigmaActionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<FigmaAction>(
      row,
      columns: columns?.call(FigmaAction.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<FigmaAction> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<FigmaAction>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    FigmaAction row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<FigmaAction>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FigmaActionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<FigmaAction>(
      where: where(FigmaAction.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FigmaActionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<FigmaAction>(
      where: where?.call(FigmaAction.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FigmaActionAttachRowRepository {
  const FigmaActionAttachRowRepository._();

  Future<void> huData(
    _i1.Session session,
    FigmaAction figmaAction,
    _i2.HuData huData,
  ) async {
    if (figmaAction.id == null) {
      throw ArgumentError.notNull('figmaAction.id');
    }
    if (huData.id == null) {
      throw ArgumentError.notNull('huData.id');
    }

    var $figmaAction = figmaAction.copyWith(huDataId: huData.id);
    await session.dbNext.updateRow<FigmaAction>(
      $figmaAction,
      columns: [FigmaAction.t.huDataId],
    );
  }

  Future<void> project(
    _i1.Session session,
    FigmaAction figmaAction,
    _i2.TaigaProject project,
  ) async {
    if (figmaAction.id == null) {
      throw ArgumentError.notNull('figmaAction.id');
    }
    if (project.id == null) {
      throw ArgumentError.notNull('project.id');
    }

    var $figmaAction = figmaAction.copyWith(projectId: project.id);
    await session.dbNext.updateRow<FigmaAction>(
      $figmaAction,
      columns: [FigmaAction.t.projectId],
    );
  }
}

class FigmaActionDetachRowRepository {
  const FigmaActionDetachRowRepository._();

  Future<void> huData(
    _i1.Session session,
    FigmaAction figmaaction,
  ) async {
    if (figmaaction.id == null) {
      throw ArgumentError.notNull('figmaaction.id');
    }

    var $figmaaction = figmaaction.copyWith(huDataId: null);
    await session.dbNext.updateRow<FigmaAction>(
      $figmaaction,
      columns: [FigmaAction.t.huDataId],
    );
  }
}

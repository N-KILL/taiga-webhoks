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

abstract class HuData extends _i1.TableRow {
  HuData._({
    int? id,
    required this.name,
    required this.refNum,
    required this.status,
    required this.readyForDev,
    this.sprintId,
    this.sprint,
    this.statusCardId,
    this.statusCard,
    required this.projectId,
    this.project,
    required this.lastStatusUpdate,
  }) : super(id);

  factory HuData({
    int? id,
    required String name,
    required int refNum,
    required _i2.HuStatus status,
    required bool readyForDev,
    int? sprintId,
    _i2.Sprint? sprint,
    int? statusCardId,
    _i2.StatusCard? statusCard,
    required int projectId,
    _i2.TaigaProject? project,
    required DateTime lastStatusUpdate,
  }) = _HuDataImpl;

  factory HuData.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return HuData(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      refNum:
          serializationManager.deserialize<int>(jsonSerialization['refNum']),
      status: serializationManager
          .deserialize<_i2.HuStatus>(jsonSerialization['status']),
      readyForDev: serializationManager
          .deserialize<bool>(jsonSerialization['readyForDev']),
      sprintId:
          serializationManager.deserialize<int?>(jsonSerialization['sprintId']),
      sprint: serializationManager
          .deserialize<_i2.Sprint?>(jsonSerialization['sprint']),
      statusCardId: serializationManager
          .deserialize<int?>(jsonSerialization['statusCardId']),
      statusCard: serializationManager
          .deserialize<_i2.StatusCard?>(jsonSerialization['statusCard']),
      projectId:
          serializationManager.deserialize<int>(jsonSerialization['projectId']),
      project: serializationManager
          .deserialize<_i2.TaigaProject?>(jsonSerialization['project']),
      lastStatusUpdate: serializationManager
          .deserialize<DateTime>(jsonSerialization['lastStatusUpdate']),
    );
  }

  static final t = HuDataTable();

  static const db = HuDataRepository._();

  /// This is the name of the HU
  String name;

  /// This is the ref num used by Taiga to identify the HU
  int refNum;

  /// This is the status of the HU
  _i2.HuStatus status;

  /// If the status is 'Lista para desarrollo', will be marked as
  /// ready for dev based on this value
  bool readyForDev;

  int? sprintId;

  /// This is the Sprint Card related to this HU
  _i2.Sprint? sprint;

  int? statusCardId;

  /// This is the Status Card related to this HU
  _i2.StatusCard? statusCard;

  int projectId;

  /// This is the Taiga project related to the HU
  _i2.TaigaProject? project;

  /// This is the last time an status update was received
  /// This only consider few status, if you look at the endpoints who
  /// interact with this value, you will see they are filtering the
  /// status to get the values for the Status Card Details. That means
  /// this will be modified based on the next kanban movements
  ///
  /// From: 'Any' to 'Aprobandose' = Preparation value
  ///
  /// From: 'Aprobandose' to 'Lista para desarrollar' = Approbation value
  ///
  /// From: 'Desarollandose' to 'Testeandose' = Development value
  ///
  /// From: Aprobandose to Lista para desarrollar = Approbation value
  DateTime lastStatusUpdate;

  @override
  _i1.Table get table => t;

  HuData copyWith({
    int? id,
    String? name,
    int? refNum,
    _i2.HuStatus? status,
    bool? readyForDev,
    int? sprintId,
    _i2.Sprint? sprint,
    int? statusCardId,
    _i2.StatusCard? statusCard,
    int? projectId,
    _i2.TaigaProject? project,
    DateTime? lastStatusUpdate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'refNum': refNum,
      'status': status.toJson(),
      'readyForDev': readyForDev,
      if (sprintId != null) 'sprintId': sprintId,
      if (sprint != null) 'sprint': sprint?.toJson(),
      if (statusCardId != null) 'statusCardId': statusCardId,
      if (statusCard != null) 'statusCard': statusCard?.toJson(),
      'projectId': projectId,
      if (project != null) 'project': project?.toJson(),
      'lastStatusUpdate': lastStatusUpdate.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'refNum': refNum,
      'status': status,
      'readyForDev': readyForDev,
      'sprintId': sprintId,
      'statusCardId': statusCardId,
      'projectId': projectId,
      'lastStatusUpdate': lastStatusUpdate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'refNum': refNum,
      'status': status.toJson(),
      'readyForDev': readyForDev,
      if (sprintId != null) 'sprintId': sprintId,
      if (sprint != null) 'sprint': sprint?.allToJson(),
      if (statusCardId != null) 'statusCardId': statusCardId,
      if (statusCard != null) 'statusCard': statusCard?.allToJson(),
      'projectId': projectId,
      if (project != null) 'project': project?.allToJson(),
      'lastStatusUpdate': lastStatusUpdate.toJson(),
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
      case 'refNum':
        refNum = value;
        return;
      case 'status':
        status = value;
        return;
      case 'readyForDev':
        readyForDev = value;
        return;
      case 'sprintId':
        sprintId = value;
        return;
      case 'statusCardId':
        statusCardId = value;
        return;
      case 'projectId':
        projectId = value;
        return;
      case 'lastStatusUpdate':
        lastStatusUpdate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<HuData>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HuDataTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    HuDataInclude? include,
  }) async {
    return session.db.find<HuData>(
      where: where != null ? where(HuData.t) : null,
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
  static Future<HuData?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HuDataTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    HuDataInclude? include,
  }) async {
    return session.db.findSingleRow<HuData>(
      where: where != null ? where(HuData.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<HuData?> findById(
    _i1.Session session,
    int id, {
    HuDataInclude? include,
  }) async {
    return session.db.findById<HuData>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<HuDataTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<HuData>(
      where: where(HuData.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    HuData row, {
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
    HuData row, {
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
    HuData row, {
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
    _i1.WhereExpressionBuilder<HuDataTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<HuData>(
      where: where != null ? where(HuData.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static HuDataInclude include({
    _i2.SprintInclude? sprint,
    _i2.StatusCardInclude? statusCard,
    _i2.TaigaProjectInclude? project,
  }) {
    return HuDataInclude._(
      sprint: sprint,
      statusCard: statusCard,
      project: project,
    );
  }

  static HuDataIncludeList includeList({
    _i1.WhereExpressionBuilder<HuDataTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HuDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HuDataTable>? orderByList,
    HuDataInclude? include,
  }) {
    return HuDataIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(HuData.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(HuData.t),
      include: include,
    );
  }
}

class _Undefined {}

class _HuDataImpl extends HuData {
  _HuDataImpl({
    int? id,
    required String name,
    required int refNum,
    required _i2.HuStatus status,
    required bool readyForDev,
    int? sprintId,
    _i2.Sprint? sprint,
    int? statusCardId,
    _i2.StatusCard? statusCard,
    required int projectId,
    _i2.TaigaProject? project,
    required DateTime lastStatusUpdate,
  }) : super._(
          id: id,
          name: name,
          refNum: refNum,
          status: status,
          readyForDev: readyForDev,
          sprintId: sprintId,
          sprint: sprint,
          statusCardId: statusCardId,
          statusCard: statusCard,
          projectId: projectId,
          project: project,
          lastStatusUpdate: lastStatusUpdate,
        );

  @override
  HuData copyWith({
    Object? id = _Undefined,
    String? name,
    int? refNum,
    _i2.HuStatus? status,
    bool? readyForDev,
    Object? sprintId = _Undefined,
    Object? sprint = _Undefined,
    Object? statusCardId = _Undefined,
    Object? statusCard = _Undefined,
    int? projectId,
    Object? project = _Undefined,
    DateTime? lastStatusUpdate,
  }) {
    return HuData(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      refNum: refNum ?? this.refNum,
      status: status ?? this.status,
      readyForDev: readyForDev ?? this.readyForDev,
      sprintId: sprintId is int? ? sprintId : this.sprintId,
      sprint: sprint is _i2.Sprint? ? sprint : this.sprint?.copyWith(),
      statusCardId: statusCardId is int? ? statusCardId : this.statusCardId,
      statusCard: statusCard is _i2.StatusCard?
          ? statusCard
          : this.statusCard?.copyWith(),
      projectId: projectId ?? this.projectId,
      project:
          project is _i2.TaigaProject? ? project : this.project?.copyWith(),
      lastStatusUpdate: lastStatusUpdate ?? this.lastStatusUpdate,
    );
  }
}

class HuDataTable extends _i1.Table {
  HuDataTable({super.tableRelation}) : super(tableName: 'figma_hu_data') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    refNum = _i1.ColumnInt(
      'refNum',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
    readyForDev = _i1.ColumnBool(
      'readyForDev',
      this,
    );
    sprintId = _i1.ColumnInt(
      'sprintId',
      this,
    );
    statusCardId = _i1.ColumnInt(
      'statusCardId',
      this,
    );
    projectId = _i1.ColumnInt(
      'projectId',
      this,
    );
    lastStatusUpdate = _i1.ColumnDateTime(
      'lastStatusUpdate',
      this,
    );
  }

  /// This is the name of the HU
  late final _i1.ColumnString name;

  /// This is the ref num used by Taiga to identify the HU
  late final _i1.ColumnInt refNum;

  /// This is the status of the HU
  late final _i1.ColumnEnum<_i2.HuStatus> status;

  /// If the status is 'Lista para desarrollo', will be marked as
  /// ready for dev based on this value
  late final _i1.ColumnBool readyForDev;

  late final _i1.ColumnInt sprintId;

  /// This is the Sprint Card related to this HU
  _i2.SprintTable? _sprint;

  late final _i1.ColumnInt statusCardId;

  /// This is the Status Card related to this HU
  _i2.StatusCardTable? _statusCard;

  late final _i1.ColumnInt projectId;

  /// This is the Taiga project related to the HU
  _i2.TaigaProjectTable? _project;

  /// This is the last time an status update was received
  /// This only consider few status, if you look at the endpoints who
  /// interact with this value, you will see they are filtering the
  /// status to get the values for the Status Card Details. That means
  /// this will be modified based on the next kanban movements
  ///
  /// From: 'Any' to 'Aprobandose' = Preparation value
  ///
  /// From: 'Aprobandose' to 'Lista para desarrollar' = Approbation value
  ///
  /// From: 'Desarollandose' to 'Testeandose' = Development value
  ///
  /// From: Aprobandose to Lista para desarrollar = Approbation value
  late final _i1.ColumnDateTime lastStatusUpdate;

  _i2.SprintTable get sprint {
    if (_sprint != null) return _sprint!;
    _sprint = _i1.createRelationTable(
      relationFieldName: 'sprint',
      field: HuData.t.sprintId,
      foreignField: _i2.Sprint.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.SprintTable(tableRelation: foreignTableRelation),
    );
    return _sprint!;
  }

  _i2.StatusCardTable get statusCard {
    if (_statusCard != null) return _statusCard!;
    _statusCard = _i1.createRelationTable(
      relationFieldName: 'statusCard',
      field: HuData.t.statusCardId,
      foreignField: _i2.StatusCard.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.StatusCardTable(tableRelation: foreignTableRelation),
    );
    return _statusCard!;
  }

  _i2.TaigaProjectTable get project {
    if (_project != null) return _project!;
    _project = _i1.createRelationTable(
      relationFieldName: 'project',
      field: HuData.t.projectId,
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
        name,
        refNum,
        status,
        readyForDev,
        sprintId,
        statusCardId,
        projectId,
        lastStatusUpdate,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'sprint') {
      return sprint;
    }
    if (relationField == 'statusCard') {
      return statusCard;
    }
    if (relationField == 'project') {
      return project;
    }
    return null;
  }
}

@Deprecated('Use HuDataTable.t instead.')
HuDataTable tHuData = HuDataTable();

class HuDataInclude extends _i1.IncludeObject {
  HuDataInclude._({
    _i2.SprintInclude? sprint,
    _i2.StatusCardInclude? statusCard,
    _i2.TaigaProjectInclude? project,
  }) {
    _sprint = sprint;
    _statusCard = statusCard;
    _project = project;
  }

  _i2.SprintInclude? _sprint;

  _i2.StatusCardInclude? _statusCard;

  _i2.TaigaProjectInclude? _project;

  @override
  Map<String, _i1.Include?> get includes => {
        'sprint': _sprint,
        'statusCard': _statusCard,
        'project': _project,
      };

  @override
  _i1.Table get table => HuData.t;
}

class HuDataIncludeList extends _i1.IncludeList {
  HuDataIncludeList._({
    _i1.WhereExpressionBuilder<HuDataTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(HuData.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => HuData.t;
}

class HuDataRepository {
  const HuDataRepository._();

  final attachRow = const HuDataAttachRowRepository._();

  final detachRow = const HuDataDetachRowRepository._();

  Future<List<HuData>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HuDataTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HuDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HuDataTable>? orderByList,
    _i1.Transaction? transaction,
    HuDataInclude? include,
  }) async {
    return session.dbNext.find<HuData>(
      where: where?.call(HuData.t),
      orderBy: orderBy?.call(HuData.t),
      orderByList: orderByList?.call(HuData.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<HuData?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HuDataTable>? where,
    int? offset,
    _i1.OrderByBuilder<HuDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HuDataTable>? orderByList,
    _i1.Transaction? transaction,
    HuDataInclude? include,
  }) async {
    return session.dbNext.findFirstRow<HuData>(
      where: where?.call(HuData.t),
      orderBy: orderBy?.call(HuData.t),
      orderByList: orderByList?.call(HuData.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<HuData?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    HuDataInclude? include,
  }) async {
    return session.dbNext.findById<HuData>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<HuData>> insert(
    _i1.Session session,
    List<HuData> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<HuData>(
      rows,
      transaction: transaction,
    );
  }

  Future<HuData> insertRow(
    _i1.Session session,
    HuData row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<HuData>(
      row,
      transaction: transaction,
    );
  }

  Future<List<HuData>> update(
    _i1.Session session,
    List<HuData> rows, {
    _i1.ColumnSelections<HuDataTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<HuData>(
      rows,
      columns: columns?.call(HuData.t),
      transaction: transaction,
    );
  }

  Future<HuData> updateRow(
    _i1.Session session,
    HuData row, {
    _i1.ColumnSelections<HuDataTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<HuData>(
      row,
      columns: columns?.call(HuData.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<HuData> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<HuData>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    HuData row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<HuData>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<HuDataTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<HuData>(
      where: where(HuData.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HuDataTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<HuData>(
      where: where?.call(HuData.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class HuDataAttachRowRepository {
  const HuDataAttachRowRepository._();

  Future<void> sprint(
    _i1.Session session,
    HuData huData,
    _i2.Sprint sprint,
  ) async {
    if (huData.id == null) {
      throw ArgumentError.notNull('huData.id');
    }
    if (sprint.id == null) {
      throw ArgumentError.notNull('sprint.id');
    }

    var $huData = huData.copyWith(sprintId: sprint.id);
    await session.dbNext.updateRow<HuData>(
      $huData,
      columns: [HuData.t.sprintId],
    );
  }

  Future<void> statusCard(
    _i1.Session session,
    HuData huData,
    _i2.StatusCard statusCard,
  ) async {
    if (huData.id == null) {
      throw ArgumentError.notNull('huData.id');
    }
    if (statusCard.id == null) {
      throw ArgumentError.notNull('statusCard.id');
    }

    var $huData = huData.copyWith(statusCardId: statusCard.id);
    await session.dbNext.updateRow<HuData>(
      $huData,
      columns: [HuData.t.statusCardId],
    );
  }

  Future<void> project(
    _i1.Session session,
    HuData huData,
    _i2.TaigaProject project,
  ) async {
    if (huData.id == null) {
      throw ArgumentError.notNull('huData.id');
    }
    if (project.id == null) {
      throw ArgumentError.notNull('project.id');
    }

    var $huData = huData.copyWith(projectId: project.id);
    await session.dbNext.updateRow<HuData>(
      $huData,
      columns: [HuData.t.projectId],
    );
  }
}

class HuDataDetachRowRepository {
  const HuDataDetachRowRepository._();

  Future<void> sprint(
    _i1.Session session,
    HuData hudata,
  ) async {
    if (hudata.id == null) {
      throw ArgumentError.notNull('hudata.id');
    }

    var $hudata = hudata.copyWith(sprintId: null);
    await session.dbNext.updateRow<HuData>(
      $hudata,
      columns: [HuData.t.sprintId],
    );
  }

  Future<void> statusCard(
    _i1.Session session,
    HuData hudata,
  ) async {
    if (hudata.id == null) {
      throw ArgumentError.notNull('hudata.id');
    }

    var $hudata = hudata.copyWith(statusCardId: null);
    await session.dbNext.updateRow<HuData>(
      $hudata,
      columns: [HuData.t.statusCardId],
    );
  }
}

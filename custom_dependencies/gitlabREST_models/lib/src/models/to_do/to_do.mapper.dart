// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'to_do.dart';

class ToDoMapper extends ClassMapperBase<ToDo> {
  ToDoMapper._();

  static ToDoMapper? _instance;
  static ToDoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToDoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ToDo';

  static String _$name(ToDo v) => v.name;
  static const Field<ToDo, String> _f$name = Field('name', _$name);
  static String? _$description(ToDo v) => v.description;
  static const Field<ToDo, String> _f$description =
      Field('description', _$description, opt: true);
  static int? _$priority(ToDo v) => v.priority;
  static const Field<ToDo, int> _f$priority =
      Field('priority', _$priority, opt: true);
  static String? _$assignedUserName(ToDo v) => v.assignedUserName;
  static const Field<ToDo, String> _f$assignedUserName = Field(
      'assignedUserName', _$assignedUserName,
      key: 'assigned_user_name', opt: true);

  @override
  final Map<Symbol, Field<ToDo, dynamic>> fields = const {
    #name: _f$name,
    #description: _f$description,
    #priority: _f$priority,
    #assignedUserName: _f$assignedUserName,
  };

  static ToDo _instantiate(DecodingData data) {
    return ToDo(
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        priority: data.dec(_f$priority),
        assignedUserName: data.dec(_f$assignedUserName));
  }

  @override
  final Function instantiate = _instantiate;

  static ToDo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToDo>(map);
  }

  static ToDo fromJson(String json) {
    return ensureInitialized().decodeJson<ToDo>(json);
  }
}

mixin ToDoMappable {
  String toJson() {
    return ToDoMapper.ensureInitialized().encodeJson<ToDo>(this as ToDo);
  }

  Map<String, dynamic> toMap() {
    return ToDoMapper.ensureInitialized().encodeMap<ToDo>(this as ToDo);
  }

  ToDoCopyWith<ToDo, ToDo, ToDo> get copyWith =>
      _ToDoCopyWithImpl(this as ToDo, $identity, $identity);
  @override
  String toString() {
    return ToDoMapper.ensureInitialized().stringifyValue(this as ToDo);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ToDoMapper.ensureInitialized().isValueEqual(this as ToDo, other));
  }

  @override
  int get hashCode {
    return ToDoMapper.ensureInitialized().hashValue(this as ToDo);
  }
}

extension ToDoValueCopy<$R, $Out> on ObjectCopyWith<$R, ToDo, $Out> {
  ToDoCopyWith<$R, ToDo, $Out> get $asToDo =>
      $base.as((v, t, t2) => _ToDoCopyWithImpl(v, t, t2));
}

abstract class ToDoCopyWith<$R, $In extends ToDo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? description,
      int? priority,
      String? assignedUserName});
  ToDoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToDoCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, ToDo, $Out>
    implements ToDoCopyWith<$R, ToDo, $Out> {
  _ToDoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToDo> $mapper = ToDoMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          Object? description = $none,
          Object? priority = $none,
          Object? assignedUserName = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (priority != $none) #priority: priority,
        if (assignedUserName != $none) #assignedUserName: assignedUserName
      }));
  @override
  ToDo $make(CopyWithData data) => ToDo(
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      priority: data.get(#priority, or: $value.priority),
      assignedUserName:
          data.get(#assignedUserName, or: $value.assignedUserName));

  @override
  ToDoCopyWith<$R2, ToDo, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ToDoCopyWithImpl($value, $cast, t);
}

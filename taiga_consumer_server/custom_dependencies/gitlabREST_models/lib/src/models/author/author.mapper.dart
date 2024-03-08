// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'author.dart';

class AuthorMapper extends ClassMapperBase<Author> {
  AuthorMapper._();

  static AuthorMapper? _instance;
  static AuthorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Author';

  static String _$name(Author v) => v.name;
  static const Field<Author, String> _f$name = Field('name', _$name);
  static String _$email(Author v) => v.email;
  static const Field<Author, String> _f$email = Field('email', _$email);

  @override
  final Map<Symbol, Field<Author, dynamic>> fields = const {
    #name: _f$name,
    #email: _f$email,
  };

  static Author _instantiate(DecodingData data) {
    return Author(name: data.dec(_f$name), email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static Author fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Author>(map);
  }

  static Author fromJson(String json) {
    return ensureInitialized().decodeJson<Author>(json);
  }
}

mixin AuthorMappable {
  String toJson() {
    return AuthorMapper.ensureInitialized().encodeJson<Author>(this as Author);
  }

  Map<String, dynamic> toMap() {
    return AuthorMapper.ensureInitialized().encodeMap<Author>(this as Author);
  }

  AuthorCopyWith<Author, Author, Author> get copyWith =>
      _AuthorCopyWithImpl(this as Author, $identity, $identity);
  @override
  String toString() {
    return AuthorMapper.ensureInitialized().stringifyValue(this as Author);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthorMapper.ensureInitialized()
                .isValueEqual(this as Author, other));
  }

  @override
  int get hashCode {
    return AuthorMapper.ensureInitialized().hashValue(this as Author);
  }
}

extension AuthorValueCopy<$R, $Out> on ObjectCopyWith<$R, Author, $Out> {
  AuthorCopyWith<$R, Author, $Out> get $asAuthor =>
      $base.as((v, t, t2) => _AuthorCopyWithImpl(v, t, t2));
}

abstract class AuthorCopyWith<$R, $In extends Author, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? email});
  AuthorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthorCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Author, $Out>
    implements AuthorCopyWith<$R, Author, $Out> {
  _AuthorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Author> $mapper = AuthorMapper.ensureInitialized();
  @override
  $R call({String? name, String? email}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (email != null) #email: email}));
  @override
  Author $make(CopyWithData data) => Author(
      name: data.get(#name, or: $value.name),
      email: data.get(#email, or: $value.email));

  @override
  AuthorCopyWith<$R2, Author, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AuthorCopyWithImpl($value, $cast, t);
}

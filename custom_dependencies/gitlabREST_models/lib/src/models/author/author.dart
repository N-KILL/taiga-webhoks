import 'package:dart_mappable/dart_mappable.dart';

part 'author.mapper.dart';

// TODO(Nacho): Create doc here

///
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Author with AuthorMappable{
  /// Author class constructor
  Author({
    required this.name,
    required this.email,
  });

  /// Name thats appear on gitlab account
  String name;

  /// Email thats appear on gitlab account
  String email;

  /// FromJson method, convert a json type object into this Author Object
  static const fromJson = AuthorMapper.fromJson;
}

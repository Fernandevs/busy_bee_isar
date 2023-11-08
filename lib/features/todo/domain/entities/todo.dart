import 'package:isar/isar.dart';

part 'todo.g.dart';

@collection
class Todo {
  Id id = Isar.autoIncrement;
  String title;
  String description;
  int color;
  TodoImg? image;
  String char;
  DateTime? createdAt = DateTime.now();

  @Index()
  bool isDone = false;

  Todo({
    required this.color,
    required this.description,
    required this.title,
    required this.char,
    this.image,
  });
}

@embedded
class TodoImg {
  String? url;
  String? name;
  String? type;

  TodoImg({this.url, this.name, this.type});
}

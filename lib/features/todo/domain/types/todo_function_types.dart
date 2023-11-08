import 'package:busy_bee/features/todo/domain/entities/todo.dart';

typedef OnDeleteTodo = Future<Todo> Function(int id);
typedef OnSwitchTodoStatus = Future<void> Function(int id);

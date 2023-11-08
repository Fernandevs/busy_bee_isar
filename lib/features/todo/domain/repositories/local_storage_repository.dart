import 'package:busy_bee/features/todo/domain/entities/todo.dart';

abstract class LocalStorageRepository {
  Future<List<Todo>> readTodos({int limit = 10, int offset = 0});

  Future<List<Todo>> readDoneTodos({int limit = 10, int offset = 0});

  Future<List<Todo>> readPendingTodos({int limit = 10, int offset = 0});

  Future<Todo?> readTodo(int id);

  Future<int> insertTodo(Todo todo);

  Future<Todo> updateTodo(Todo todo);

  Future<Todo> deleteTodo(int id);

  Future<void> markTodoAsDone(int id);

  Future<void> markTodoAsPending(int id);

  Future<bool> switchTodoStatus(int id);
}

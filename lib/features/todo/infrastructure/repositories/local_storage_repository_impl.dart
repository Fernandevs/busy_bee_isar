import 'package:busy_bee/features/todo/domain/domain.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDatasource _datasource;

  LocalStorageRepositoryImpl(this._datasource);

  @override
  Future<List<Todo>> readTodos({int limit = 10, int offset = 0}) =>
      _datasource.readTodos(limit: limit, offset: offset);

  @override
  Future<List<Todo>> readDoneTodos({int limit = 10, int offset = 0}) =>
      _datasource.readDoneTodos(limit: limit, offset: offset);

  @override
  Future<List<Todo>> readPendingTodos({int limit = 10, int offset = 0}) =>
      _datasource.readPendingTodos(limit: limit, offset: offset);

  @override
  Future<Todo?> readTodo(int id) =>
      _datasource.readTodo(id);

  @override
  Future<int> insertTodo(Todo todo) =>
      _datasource.insertTodo(todo);

  @override
  Future<Todo> updateTodo(Todo todo) =>
      _datasource.updateTodo(todo);

  @override
  Future<Todo> deleteTodo(int id) =>
      _datasource.deleteTodo(id);

  @override
  Future<void> markTodoAsDone(int id) =>
      _datasource.markTodoAsDone(id);

  @override
  Future<void> markTodoAsPending(int id) =>
      _datasource.markTodoAsPending(id);

  @override
  Future<bool> switchTodoStatus(int id) =>
      _datasource.switchTodoStatus(id);
}

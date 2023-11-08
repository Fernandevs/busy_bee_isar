import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:busy_bee/features/todo/domain/entities/todo.dart';
import 'package:busy_bee/features/todo/presentation/providers/local_storage_repository_provider.dart';

part 'todos_provider.g.dart';

@riverpod
class Todos extends _$Todos {
  late final _isar = ref.watch(localStorageRepositoryProvider);
  int _page = 0;

  @override
  Future<List<Todo>> build() async => await _isar.readTodos(
        offset: _page * 10,
        limit: 10,
      );

  Future<Todo?> readTodo(int id) async => await _isar.readTodo(id);

  Future<int> insertTodo(Todo todo) async {
    final id = await _isar.insertTodo(todo);
    final newTodo = await _isar.readTodo(id);
    final todos = [...?state.value, newTodo!];

    todos.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));

    state = AsyncData(todos);

    return id;
  }

  Future<Todo> updateTodo(Todo todo) async {
    final updatedTodo = await _isar.updateTodo(todo);
    final todos = [...?state.value, updatedTodo];

    todos.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));

    state = AsyncData(todos);

    return updatedTodo;
  }

  Future<Todo> deleteTodo(int id) async {
    final todo = await _isar.deleteTodo(id);
    final todos = state.value;

    todos?.removeWhere((todo) => todo.id == id);

    state = AsyncData(todos!);

    return todo;
  }

  Future<void> markTodoAsPending(int id) async {
    final todos = state.value;

    await _isar.markTodoAsPending(id);

    todos?.forEach((todo) {
      if (todo.id == id) todo.isDone = false;
    });

    state = AsyncData(todos!);
  }

  Future<void> markTodoAsDone(int id) async {
    final todos = state.value;

    await _isar.markTodoAsDone(id);

    todos?.forEach((todo) {
      if (todo.id == id) todo.isDone = true;
    });

    state = AsyncData(todos!);
  }

  Future<bool> switchTodoStatus(int id) async {
    final todos = state.value;
    bool isDone = (await _isar.readTodo(id))!.isDone;

    isDone = !isDone;

    await _isar.switchTodoStatus(id);

    todos?.forEach((todo) {
      if (todo.id == id) todo.isDone = isDone;
    });

    state = AsyncData(todos!);

    return isDone;
  }

  Future<void> loadNextPage() async {
    final newTodos = await _isar.readTodos(offset: ++_page * 10, limit: 10);
    final todos = state.value;

    state = AsyncData([...?todos, ...newTodos]);
  }
}

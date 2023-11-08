import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:busy_bee/features/todo/domain/domain.dart';

class IsarDatasource extends LocalStorageDatasource {
  late Future<Isar> db;

  IsarDatasource() {
    db = _open();
  }

  Future<Isar> _open() async {
    if (Isar.instanceNames.isEmpty) {
      final directory = await getApplicationDocumentsDirectory();

      return await Isar.open(
        [TodoSchema],
        inspector: true,
        directory: directory.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  @override
  Future<List<Todo>> readTodos({int limit = 10, int offset = 0}) async {
    final isar = await db;

    return isar.todos
        .where()
        .sortByCreatedAt()
        .offset(offset)
        .limit(limit)
        .findAll();
  }

  @override
  Future<List<Todo>> readDoneTodos({int limit = 10, int offset = 0}) async {
    final isar = await db;

    return isar.todos
        .where()
        .isDoneEqualTo(true)
        .sortByCreatedAt()
        .offset(offset)
        .limit(limit)
        .findAll();
  }

  @override
  Future<List<Todo>> readPendingTodos({int limit = 10, int offset = 0}) async {
    final isar = await db;

    return await isar.todos
        .where()
        .isDoneEqualTo(false)
        .sortByCreatedAt()
        .offset(offset)
        .limit(limit)
        .findAll();
  }

  @override
  Future<Todo?> readTodo(int id) async {
    final isar = await db;

    return await isar.todos.get(id);
  }

  @override
  Future<int> insertTodo(Todo todo) async {
    final isar = await db;

    final task = await isar.writeTxn(() async => await isar.todos.put(todo));

    return task;
  }

  @override
  Future<Todo> updateTodo(Todo todo) async {
    final isar = await db;

    return await isar.writeTxn<Todo>(() async {
      final task = await isar.todos.get(todo.id);

      task?.isDone = false;

      await isar.todos.put(task!);

      return task;
    });
  }

  @override
  Future<Todo> deleteTodo(int id) async {
    final isar = await db;

    return await isar.writeTxn<Todo>(() async {
      final task = await isar.todos.get(id);

      await isar.todos.delete(id);

      return task!;
    });
  }

  @override
  Future<void> markTodoAsDone(int id) async {
    final isar = await db;

    await isar.writeTxn<void>(() async {
      final task = await isar.todos.get(id);

      task?.isDone = true;

      await isar.todos.put(task!);
    });
  }

  @override
  Future<void> markTodoAsPending(int id) async {
    final isar = await db;

    await isar.writeTxn<void>(() async {
      final task = await isar.todos.get(id);

      task?.isDone = false;

      await isar.todos.put(task!);
    });
  }

  @override
  Future<bool> switchTodoStatus(int id) async {
    final isar = await db;

    return await isar.writeTxn<bool>(() async {
      final task = await isar.todos.get(id);

      task?.isDone = !task.isDone;

      await isar.todos.put(task!);

      return task.isDone;
    });
  }
}

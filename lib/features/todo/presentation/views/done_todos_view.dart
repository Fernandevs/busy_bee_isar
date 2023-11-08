import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:busy_bee/features/shared/presentation/presentation.dart';
import 'package:busy_bee/features/todo/domain/entities/todo.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';

class DoneTodosView extends ConsumerWidget {
  const DoneTodosView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.watch(todosProvider.future),
      builder: (context, snapshot) {
        final List<Todo> todos = snapshot.data?.where(
              (todo) => todo.isDone,
        ).toList() ?? [];

        return snapshot.connectionState == ConnectionState.waiting
            ? const Center(child: CircularProgressIndicator())
            : todos.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TodoList(
                      onDeleteTodo: ref
                          .read(todosProvider.notifier)
                          .deleteTodo,
                      onSwitchTodoStatus: ref
                          .read(todosProvider.notifier)
                          .markTodoAsPending,
                      todos: todos,
                    ),
                  )
                : const NoContent();
      },
    );
  }
}

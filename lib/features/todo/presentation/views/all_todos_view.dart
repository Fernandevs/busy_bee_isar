import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:busy_bee/features/shared/presentation/widgets/no_content.dart';
import 'package:busy_bee/features/todo/domain/entities/todo.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';

class AllTodosView extends ConsumerWidget {
  const AllTodosView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.watch(todosProvider.future),
      builder: (context, snapshot) {
        final List<Todo> todos = snapshot.data ?? [];

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
                          .switchTodoStatus,
                      todos: todos,
                    ),
                  )
                : const NoContent();
      },
    );
  }
}

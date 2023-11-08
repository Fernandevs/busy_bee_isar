import 'package:flutter/material.dart';

import 'package:busy_bee/features/todo/domain/entities/todo.dart';
import 'package:busy_bee/features/todo/domain/types/todo_function_types.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';

class TodoList extends StatefulWidget {
  final List<Todo> todos;
  final VoidCallback? loadNextPage;
  final OnDeleteTodo onDeleteTodo;
  final OnSwitchTodoStatus onSwitchTodoStatus;

  const TodoList({
    super.key,
    required this.todos,
    required this.onDeleteTodo,
    required this.onSwitchTodoStatus,
    this.loadNextPage,
  });

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (widget.loadNextPage == null) return;

      if ((scrollController.position.pixels + 100) >=
          scrollController.position.maxScrollExtent) {
        widget.loadNextPage!();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: widget.todos.length,
      itemBuilder: (context, index) {
        final todo = widget.todos[index];

        return TodoTile(
          onDeleteTodo: widget.onDeleteTodo,
          onSwitchTodoStatus: widget.onSwitchTodoStatus,
          todo: todo,
        );
      },
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}

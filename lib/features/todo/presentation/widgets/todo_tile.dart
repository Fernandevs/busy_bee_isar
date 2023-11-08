import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:busy_bee/features/todo/domain/entities/todo.dart';
import 'package:busy_bee/features/todo/domain/types/todo_function_types.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';

class TodoTile extends StatelessWidget {
  final OnDeleteTodo onDeleteTodo;
  final OnSwitchTodoStatus onSwitchTodoStatus;
  final Todo todo;

  const TodoTile({
    super.key,
    required this.onDeleteTodo,
    required this.onSwitchTodoStatus,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey<int>(todo.id),
      direction: DismissDirection.horizontal,
      background: Container(
        color: !todo.isDone ? Colors.green : Colors.deepPurpleAccent,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(width: 20),
              Text(!todo.isDone ? 'Terminar' : 'Pendiente'),
              const SizedBox(width: 20),
              !todo.isDone
                  ? const Icon(Icons.task_alt_outlined, color: Colors.white)
                  : const Icon(Icons.pending_outlined, color: Colors.white),
            ],
          ),
        ),
      ),
      secondaryBackground: Container(
        color: Colors.red,
        child: const Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: 20),
              Text('Eliminar'),
              SizedBox(width: 20),
              Icon(Icons.delete, color: Colors.white),
              SizedBox(width: 20),
            ],
          ),
        ),
      ),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.endToStart) {
          final bool? result = await showDialog<bool>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text("¿Está seguro de eliminar ${todo.title}?"),
                actions: <Widget>[
                  TextButton(
                    child: const Text(
                      "Cancelar",
                      style: TextStyle(color: Colors.green),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  TextButton(
                    onPressed: () {
                      onDeleteTodo(todo.id);
                      context.pop();
                    },
                    child: const Text(
                      "Eliminar",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              );
            },
          );
          return result ?? false;
        } else {
          final bool? result = await showDialog<bool>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text(
                  "¿Está seguro de cambiar el estado de ${todo.title}?",
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text(
                      "Cancelar",
                      style: TextStyle(color: Colors.red),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  TextButton(
                    onPressed: () {
                      onSwitchTodoStatus(todo.id);
                      context.pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            !todo.isDone
                                ? 'Tarea marcada como terminada'
                                : 'Tarea marcada como pendiente',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      "Confirmar",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              );
            },
          );
          return result ?? false;
        }
      },
      child: Card(
        elevation: 1,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(todo.color),
            child: Text(todo.char),
          ),
          title: Text(todo.title),
          subtitle: Text(todo.description),
          onTap: () => context.goNamed(
            TodoScreen.name,
            pathParameters: {'id': '${todo.id}'},
          ),
        ),
      ),
    );
  }
}

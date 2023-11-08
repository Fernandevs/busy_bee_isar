import 'dart:io';

import 'package:busy_bee/features/shared/presentation/presentation.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoScreen extends ConsumerWidget {
  static const String name = 'todo-screen';

  final int id;

  const TodoScreen({super.key, this.id = 0});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getTodoById = ref.watch(todosProvider.notifier).readTodo(id);

    return FutureBuilder(
      future: getTodoById,
      builder: (context, snapshot) {
        final todo = snapshot.data;

        return snapshot.connectionState == ConnectionState.waiting
            ? const Center(child: CircularProgressIndicator())
            : todo != null
                ? Scaffold(
                    appBar: AppBar(
                      elevation: 8,
                      centerTitle: true,
                      title: const Text('Busy Bee'),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FDottedLine(
                            color: Color(todo.color),
                            strokeWidth: 2.0,
                            dottedLength: 10.0,
                            space: 5,
                            width: double.infinity,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              width: double.infinity,
                              height: 200,
                              child: todo.image?.url != null
                                  ? Image.file(
                                      File(todo.image!.url!),
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      'assets/images/no_image_available.png',
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Título: ${todo.title}',
                            style: const TextStyle(fontSize: 32),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Descripción: ${todo.description}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )
                : const NoContent();
      },
    );
  }
}

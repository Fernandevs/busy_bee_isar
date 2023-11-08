/* import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:busy_bee/features/todo/infrastructure/helpers/date_format.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';

class UpdateTodoScreen extends ConsumerWidget {
  static const String name = 'update-todo-screen';

  final int id;

  const UpdateTodoScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        centerTitle: true,
        title: const Text('Actualizar tarea'),
      ),
      body: FutureBuilder(
        future: ref.watch(todosProvider.notifier).readTodo(id),
        builder: (context, snapshot) {
          final todoImage = ref.watch(todoImageProvider);
          final todoForm = ref.watch(todoFormProvider());

          return snapshot.connectionState == ConnectionState.done
              ? CreateOrUpdateTodoForm(
                  descriptionErrorMessage: todoForm.description.errorMessage,
                  onDescriptionChanged: todoForm.onDescriptionChanged,
                  titleErrorMessage: todoForm.title.errorMessage,
                  onColorChanged: (color) => todoForm.onColorChanged(
                    color.value,
                  ),
                  onTitleChanged: todoForm.onTitleChanged,
                  onDeleteImage: () {},
                  onSelectPhoto: () {},
                  onFormSubmit: todoForm.onFormSubmit,
                  date: dateFormat(snapshot.data!.createdAt!),
                  todoForm: todoForm,
                  image: todoImage,
                  todo: snapshot.data!,
                )
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
*/
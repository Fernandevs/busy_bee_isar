import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:busy_bee/features/todo/infrastructure/helpers/date_format.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';

class CreateTodoScreen extends ConsumerWidget {
  static const String name = 'create-todo-screen';

  const CreateTodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoFormMethods = ref.read(todoFormProvider().notifier);
    final todoImageMethods = ref.read(todoImageProvider.notifier);
    final todoImage = ref.watch(todoImageProvider);
    final todoForm = ref.watch(todoFormProvider());

    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        centerTitle: true,
        title: const Text('Crear tarea'),
      ),
      body: CreateOrUpdateTodoForm(
        descriptionErrorMessage: todoForm.description.errorMessage,
        onDescriptionChanged: todoFormMethods.onDescriptionChanged,
        titleErrorMessage: todoForm.title.errorMessage,
        onColorChanged: (color) => todoFormMethods.onColorChanged(color.value),
        onImageChanged: todoFormMethods.onImageChanged,
        onTitleChanged: todoFormMethods.onTitleChanged,
        onDeleteImage: todoImageMethods.deletePhoto,
        onSelectPhoto: todoImageMethods.selectPhoto,
        onFormSubmit: todoFormMethods.onFormSubmit,
        date: dateFormat(DateTime.now()),
        todoForm: todoForm,
        image: todoImage,
      ),
    );
  }
}

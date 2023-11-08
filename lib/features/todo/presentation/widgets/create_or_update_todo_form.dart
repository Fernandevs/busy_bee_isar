import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:busy_bee/features/shared/presentation/widgets/widgets.dart';
import 'package:busy_bee/features/todo/domain/entities/entities.dart';
import 'package:busy_bee/features/todo/infrastructure/models/todo_model.dart';
import 'package:busy_bee/features/todo/presentation/widgets/widgets.dart';

class CreateOrUpdateTodoForm extends StatelessWidget {
  final Function(String) onDescriptionChanged;
  final Future<bool> Function() onFormSubmit;
  final Function(Color color) onColorChanged;
  final void Function({File? image}) onImageChanged;
  final Function(String) onTitleChanged;
  final String? descriptionErrorMessage;
  final String? titleErrorMessage;
  final Function() onDeleteImage;
  final Function() onSelectPhoto;
  final AsyncValue<File?> image;
  final TodoModel todoForm;
  final String date;
  final Todo? todo;

  const CreateOrUpdateTodoForm({
    super.key,
    required this.descriptionErrorMessage,
    required this.onDescriptionChanged,
    required this.titleErrorMessage,
    required this.onColorChanged,
    required this.onImageChanged,
    required this.onTitleChanged,
    required this.onDeleteImage,
    required this.onSelectPhoto,
    required this.onFormSubmit,
    required this.todoForm,
    required this.image,
    required this.date,
    this.todo,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 8),
          child: SizedBox(
            height: size.height - kToolbarHeight - 70,
            child: Column(
              children: <Widget>[
                image.when(
                  data: (data) => TodoImagePicker(
                    color: colors.primary,
                    image: data,
                    onImageChanged: onImageChanged,
                    onDeleteImage: onDeleteImage,
                    onPressed: onSelectPhoto,
                  ),
                  error: (error, stackTrace) => Center(
                    child: Text(error.toString()),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  label: 'Título',
                  initialValue: todo?.title,
                  errorMessage: titleErrorMessage,
                  onChanged: onTitleChanged,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  label: 'Descripción',
                  initialValue: todo?.description,
                  errorMessage: descriptionErrorMessage,
                  onChanged: onDescriptionChanged,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  initialValue: date,
                  prefixIcon: const Icon(Icons.calendar_month_outlined),
                  readOnly: true,
                ),
                const SizedBox(height: 16),
                TodoColorPicker(
                  color: todo != null
                      ? Color(todo!.color)
                      : Color(todoForm.color),
                  onColorChanged: onColorChanged,
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    final status = onFormSubmit();

                    status.then(
                      (value) {
                        if (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                todo != null
                                    ? 'Tarea actualizada'
                                    : 'Tarea creada',
                              ),
                            ),
                          );

                          context.pop();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Error')),
                          );
                        }
                      },
                    );
                  },
                  child: const Text('Guardar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:formz/formz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:busy_bee/features/shared/infrastructure/infrastructure.dart';
import 'package:busy_bee/features/todo/domain/entities/todo.dart';
import 'package:busy_bee/features/todo/infrastructure/infrastructure.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';

part 'todo_form_provider.g.dart';

@riverpod
class TodoForm extends _$TodoForm {
  @override
  TodoModel build({int id = 0}) => TodoModel(
        id: id,
        onFormSubmit: onFormSubmit,
        onTitleChanged: onTitleChanged,
        onDescriptionChanged: onDescriptionChanged,
        onColorChanged: onColorChanged,
      );

  Future<bool> onFormSubmit() async {
    _touchedEverything();

    state = state.copyWith(status: FormzSubmissionStatus.inProgress);

    if (!state.isFormValid) return false;

    try {
      final repository = ref.watch(todosProvider.notifier);

      if (id == 0) {
        final todo = Todo(
          color: state.color,
          description: state.description.value,
          title: state.title.value,
          char: getRandomCharacter(text: state.title.value),
          image: TodoImg(
            name: state.todoImage?.name,
            type: state.todoImage?.type,
            url: state.todoImage?.url,
          ),
        );

        print('Imagen: ${state.todoImage}');

        await repository.insertTodo(todo);
      } else {
        final todo = await repository.readTodo(id);

        if (todo == null) return false;

        todo.description = state.description.value;
        todo.title = state.title.value;
        todo.color = state.color;

        await repository.updateTodo(todo);
      }

      state = state.copyWith(status: FormzSubmissionStatus.success);

      return true;
    } catch (e) {
      state = state.copyWith(status: FormzSubmissionStatus.failure);
      return false;
    }
  }

  void onTitleChanged(String value) {
    final title = TitleFormz.dirty(value);

    state = state.copyWith(title: title);
  }

  void onDescriptionChanged(String value) {
    final description = DescriptionFormz.dirty(value);

    state = state.copyWith(description: description);
  }

  void onColorChanged(int color) => state = state.copyWith(color: color);

  void onImageChanged({File? image}) {
    print(image);

    if (image == null) return;

    final path = image.path;
    final name = path[path.length - 1].split('.')[0];
    final type = path[path.length - 1].split('.')[1];

    state = state.copyWith(
      todoImage: TodoImageModel(
        url: path,
        type: type,
        name: name,
      ),
    );
  }

  void _touchedEverything() => state = state.copyWith(
        isFormValid: Formz.validate([
          TitleFormz.dirty(state.title.value),
          DescriptionFormz.dirty(state.description.value)
        ]),
      );
}

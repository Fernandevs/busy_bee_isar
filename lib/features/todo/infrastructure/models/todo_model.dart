import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:busy_bee/features/shared/infrastructure/inputs/inputs.dart';
import 'package:busy_bee/features/todo/infrastructure/infrastructure.dart';

part 'todo_model.freezed.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    int? id,
    @Default(TitleFormz.pure()) TitleFormz title,
    @Default(DescriptionFormz.pure()) DescriptionFormz description,
    @Default('') String char,
    @Default(false) bool isDone,
    @Default(0xFFFFC107) int color,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) isFormValid,
    required Future<bool> Function() onFormSubmit,
    required void Function(String value) onTitleChanged,
    required void Function(String value) onDescriptionChanged,
    required void Function(int color) onColorChanged,
    DateTime? createdAt,
    TodoImageModel? todoImage,
  }) = _TodoModel;
}

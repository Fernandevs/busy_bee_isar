// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoModel {
  int? get id => throw _privateConstructorUsedError;
  TitleFormz get title => throw _privateConstructorUsedError;
  DescriptionFormz get description => throw _privateConstructorUsedError;
  String get char => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  dynamic get isFormValid => throw _privateConstructorUsedError;
  Future<bool> Function() get onFormSubmit =>
      throw _privateConstructorUsedError;
  void Function(String) get onTitleChanged =>
      throw _privateConstructorUsedError;
  void Function(String) get onDescriptionChanged =>
      throw _privateConstructorUsedError;
  void Function(int) get onColorChanged => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  TodoImageModel? get todoImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res, TodoModel>;
  @useResult
  $Res call(
      {int? id,
      TitleFormz title,
      DescriptionFormz description,
      String char,
      bool isDone,
      int color,
      FormzSubmissionStatus status,
      dynamic isFormValid,
      Future<bool> Function() onFormSubmit,
      void Function(String) onTitleChanged,
      void Function(String) onDescriptionChanged,
      void Function(int) onColorChanged,
      DateTime? createdAt,
      TodoImageModel? todoImage});

  $TodoImageModelCopyWith<$Res>? get todoImage;
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res, $Val extends TodoModel>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? char = null,
    Object? isDone = null,
    Object? color = null,
    Object? status = null,
    Object? isFormValid = freezed,
    Object? onFormSubmit = null,
    Object? onTitleChanged = null,
    Object? onDescriptionChanged = null,
    Object? onColorChanged = null,
    Object? createdAt = freezed,
    Object? todoImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TitleFormz,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as DescriptionFormz,
      char: null == char
          ? _value.char
          : char // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isFormValid: freezed == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onFormSubmit: null == onFormSubmit
          ? _value.onFormSubmit
          : onFormSubmit // ignore: cast_nullable_to_non_nullable
              as Future<bool> Function(),
      onTitleChanged: null == onTitleChanged
          ? _value.onTitleChanged
          : onTitleChanged // ignore: cast_nullable_to_non_nullable
              as void Function(String),
      onDescriptionChanged: null == onDescriptionChanged
          ? _value.onDescriptionChanged
          : onDescriptionChanged // ignore: cast_nullable_to_non_nullable
              as void Function(String),
      onColorChanged: null == onColorChanged
          ? _value.onColorChanged
          : onColorChanged // ignore: cast_nullable_to_non_nullable
              as void Function(int),
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      todoImage: freezed == todoImage
          ? _value.todoImage
          : todoImage // ignore: cast_nullable_to_non_nullable
              as TodoImageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoImageModelCopyWith<$Res>? get todoImage {
    if (_value.todoImage == null) {
      return null;
    }

    return $TodoImageModelCopyWith<$Res>(_value.todoImage!, (value) {
      return _then(_value.copyWith(todoImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodoModelImplCopyWith<$Res>
    implements $TodoModelCopyWith<$Res> {
  factory _$$TodoModelImplCopyWith(
          _$TodoModelImpl value, $Res Function(_$TodoModelImpl) then) =
      __$$TodoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      TitleFormz title,
      DescriptionFormz description,
      String char,
      bool isDone,
      int color,
      FormzSubmissionStatus status,
      dynamic isFormValid,
      Future<bool> Function() onFormSubmit,
      void Function(String) onTitleChanged,
      void Function(String) onDescriptionChanged,
      void Function(int) onColorChanged,
      DateTime? createdAt,
      TodoImageModel? todoImage});

  @override
  $TodoImageModelCopyWith<$Res>? get todoImage;
}

/// @nodoc
class __$$TodoModelImplCopyWithImpl<$Res>
    extends _$TodoModelCopyWithImpl<$Res, _$TodoModelImpl>
    implements _$$TodoModelImplCopyWith<$Res> {
  __$$TodoModelImplCopyWithImpl(
      _$TodoModelImpl _value, $Res Function(_$TodoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? char = null,
    Object? isDone = null,
    Object? color = null,
    Object? status = null,
    Object? isFormValid = freezed,
    Object? onFormSubmit = null,
    Object? onTitleChanged = null,
    Object? onDescriptionChanged = null,
    Object? onColorChanged = null,
    Object? createdAt = freezed,
    Object? todoImage = freezed,
  }) {
    return _then(_$TodoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TitleFormz,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as DescriptionFormz,
      char: null == char
          ? _value.char
          : char // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isFormValid: freezed == isFormValid ? _value.isFormValid! : isFormValid,
      onFormSubmit: null == onFormSubmit
          ? _value.onFormSubmit
          : onFormSubmit // ignore: cast_nullable_to_non_nullable
              as Future<bool> Function(),
      onTitleChanged: null == onTitleChanged
          ? _value.onTitleChanged
          : onTitleChanged // ignore: cast_nullable_to_non_nullable
              as void Function(String),
      onDescriptionChanged: null == onDescriptionChanged
          ? _value.onDescriptionChanged
          : onDescriptionChanged // ignore: cast_nullable_to_non_nullable
              as void Function(String),
      onColorChanged: null == onColorChanged
          ? _value.onColorChanged
          : onColorChanged // ignore: cast_nullable_to_non_nullable
              as void Function(int),
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      todoImage: freezed == todoImage
          ? _value.todoImage
          : todoImage // ignore: cast_nullable_to_non_nullable
              as TodoImageModel?,
    ));
  }
}

/// @nodoc

class _$TodoModelImpl implements _TodoModel {
  const _$TodoModelImpl(
      {this.id,
      this.title = const TitleFormz.pure(),
      this.description = const DescriptionFormz.pure(),
      this.char = '',
      this.isDone = false,
      this.color = 0xFFFFC107,
      this.status = FormzSubmissionStatus.initial,
      this.isFormValid = false,
      required this.onFormSubmit,
      required this.onTitleChanged,
      required this.onDescriptionChanged,
      required this.onColorChanged,
      this.createdAt,
      this.todoImage});

  @override
  final int? id;
  @override
  @JsonKey()
  final TitleFormz title;
  @override
  @JsonKey()
  final DescriptionFormz description;
  @override
  @JsonKey()
  final String char;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final int color;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final dynamic isFormValid;
  @override
  final Future<bool> Function() onFormSubmit;
  @override
  final void Function(String) onTitleChanged;
  @override
  final void Function(String) onDescriptionChanged;
  @override
  final void Function(int) onColorChanged;
  @override
  final DateTime? createdAt;
  @override
  final TodoImageModel? todoImage;

  @override
  String toString() {
    return 'TodoModel(id: $id, title: $title, description: $description, char: $char, isDone: $isDone, color: $color, status: $status, isFormValid: $isFormValid, onFormSubmit: $onFormSubmit, onTitleChanged: $onTitleChanged, onDescriptionChanged: $onDescriptionChanged, onColorChanged: $onColorChanged, createdAt: $createdAt, todoImage: $todoImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.char, char) || other.char == char) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.isFormValid, isFormValid) &&
            (identical(other.onFormSubmit, onFormSubmit) ||
                other.onFormSubmit == onFormSubmit) &&
            (identical(other.onTitleChanged, onTitleChanged) ||
                other.onTitleChanged == onTitleChanged) &&
            (identical(other.onDescriptionChanged, onDescriptionChanged) ||
                other.onDescriptionChanged == onDescriptionChanged) &&
            (identical(other.onColorChanged, onColorChanged) ||
                other.onColorChanged == onColorChanged) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.todoImage, todoImage) ||
                other.todoImage == todoImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      char,
      isDone,
      color,
      status,
      const DeepCollectionEquality().hash(isFormValid),
      onFormSubmit,
      onTitleChanged,
      onDescriptionChanged,
      onColorChanged,
      createdAt,
      todoImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      __$$TodoModelImplCopyWithImpl<_$TodoModelImpl>(this, _$identity);
}

abstract class _TodoModel implements TodoModel {
  const factory _TodoModel(
      {final int? id,
      final TitleFormz title,
      final DescriptionFormz description,
      final String char,
      final bool isDone,
      final int color,
      final FormzSubmissionStatus status,
      final dynamic isFormValid,
      required final Future<bool> Function() onFormSubmit,
      required final void Function(String) onTitleChanged,
      required final void Function(String) onDescriptionChanged,
      required final void Function(int) onColorChanged,
      final DateTime? createdAt,
      final TodoImageModel? todoImage}) = _$TodoModelImpl;

  @override
  int? get id;
  @override
  TitleFormz get title;
  @override
  DescriptionFormz get description;
  @override
  String get char;
  @override
  bool get isDone;
  @override
  int get color;
  @override
  FormzSubmissionStatus get status;
  @override
  dynamic get isFormValid;
  @override
  Future<bool> Function() get onFormSubmit;
  @override
  void Function(String) get onTitleChanged;
  @override
  void Function(String) get onDescriptionChanged;
  @override
  void Function(int) get onColorChanged;
  @override
  DateTime? get createdAt;
  @override
  TodoImageModel? get todoImage;
  @override
  @JsonKey(ignore: true)
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

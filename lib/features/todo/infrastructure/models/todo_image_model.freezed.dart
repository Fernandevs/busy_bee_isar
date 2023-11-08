// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoImageModel {
  String? get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoImageModelCopyWith<TodoImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoImageModelCopyWith<$Res> {
  factory $TodoImageModelCopyWith(
          TodoImageModel value, $Res Function(TodoImageModel) then) =
      _$TodoImageModelCopyWithImpl<$Res, TodoImageModel>;
  @useResult
  $Res call({String? url, String? name, String? type});
}

/// @nodoc
class _$TodoImageModelCopyWithImpl<$Res, $Val extends TodoImageModel>
    implements $TodoImageModelCopyWith<$Res> {
  _$TodoImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoImageModelImplCopyWith<$Res>
    implements $TodoImageModelCopyWith<$Res> {
  factory _$$TodoImageModelImplCopyWith(_$TodoImageModelImpl value,
          $Res Function(_$TodoImageModelImpl) then) =
      __$$TodoImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? name, String? type});
}

/// @nodoc
class __$$TodoImageModelImplCopyWithImpl<$Res>
    extends _$TodoImageModelCopyWithImpl<$Res, _$TodoImageModelImpl>
    implements _$$TodoImageModelImplCopyWith<$Res> {
  __$$TodoImageModelImplCopyWithImpl(
      _$TodoImageModelImpl _value, $Res Function(_$TodoImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$TodoImageModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TodoImageModelImpl implements _TodoImageModel {
  const _$TodoImageModelImpl({this.url, this.name, this.type});

  @override
  final String? url;
  @override
  final String? name;
  @override
  final String? type;

  @override
  String toString() {
    return 'TodoImageModel(url: $url, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImageModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImageModelImplCopyWith<_$TodoImageModelImpl> get copyWith =>
      __$$TodoImageModelImplCopyWithImpl<_$TodoImageModelImpl>(
          this, _$identity);
}

abstract class _TodoImageModel implements TodoImageModel {
  const factory _TodoImageModel(
      {final String? url,
      final String? name,
      final String? type}) = _$TodoImageModelImpl;

  @override
  String? get url;
  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$TodoImageModelImplCopyWith<_$TodoImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

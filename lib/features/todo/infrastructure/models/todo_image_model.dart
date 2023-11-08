import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_image_model.freezed.dart';

@freezed
class TodoImageModel with _$TodoImageModel {
  const factory TodoImageModel({
    String? url,
    String? name,
    String? type,
  }) = _TodoImageModel;
}

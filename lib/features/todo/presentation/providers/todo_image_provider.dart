import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:busy_bee/features/shared/infrastructure/infrastructure.dart';

part 'todo_image_provider.g.dart';

@riverpod
class TodoImage extends _$TodoImage {
  final CameraGalleryService _service = CameraGalleryServiceImpl();

  @override
  Future<File?> build() async => null;

  Future<void> selectPhoto() async {
    final path = await _service.selectPhoto();

    if (path != null) state = AsyncData(File(path));
  }

  Future<void> takePhoto() async {
    final path = await _service.takePhoto();

    if (path != null) state = AsyncData(File(path));
  }

  Future<void> deletePhoto() async => state = const AsyncValue.data(null);
}

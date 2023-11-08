import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:busy_bee/features/todo/infrastructure/infrastructure.dart';

part 'local_storage_repository_provider.g.dart';

@Riverpod(keepAlive: true)
LocalStorageRepositoryImpl localStorageRepository(
  LocalStorageRepositoryRef ref,
) => LocalStorageRepositoryImpl(IsarDatasource());

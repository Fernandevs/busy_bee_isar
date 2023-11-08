// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_form_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoFormHash() => r'5f7d2c2d180daba2d7e4f32a1b921df0b07365cd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TodoForm extends BuildlessAutoDisposeNotifier<TodoModel> {
  late final int id;

  TodoModel build({
    int id = 0,
  });
}

/// See also [TodoForm].
@ProviderFor(TodoForm)
const todoFormProvider = TodoFormFamily();

/// See also [TodoForm].
class TodoFormFamily extends Family<TodoModel> {
  /// See also [TodoForm].
  const TodoFormFamily();

  /// See also [TodoForm].
  TodoFormProvider call({
    int id = 0,
  }) {
    return TodoFormProvider(
      id: id,
    );
  }

  @override
  TodoFormProvider getProviderOverride(
    covariant TodoFormProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoFormProvider';
}

/// See also [TodoForm].
class TodoFormProvider
    extends AutoDisposeNotifierProviderImpl<TodoForm, TodoModel> {
  /// See also [TodoForm].
  TodoFormProvider({
    int id = 0,
  }) : this._internal(
          () => TodoForm()..id = id,
          from: todoFormProvider,
          name: r'todoFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoFormHash,
          dependencies: TodoFormFamily._dependencies,
          allTransitiveDependencies: TodoFormFamily._allTransitiveDependencies,
          id: id,
        );

  TodoFormProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  TodoModel runNotifierBuild(
    covariant TodoForm notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(TodoForm Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoFormProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<TodoForm, TodoModel> createElement() {
    return _TodoFormProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoFormProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TodoFormRef on AutoDisposeNotifierProviderRef<TodoModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TodoFormProviderElement
    extends AutoDisposeNotifierProviderElement<TodoForm, TodoModel>
    with TodoFormRef {
  _TodoFormProviderElement(super.provider);

  @override
  int get id => (origin as TodoFormProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

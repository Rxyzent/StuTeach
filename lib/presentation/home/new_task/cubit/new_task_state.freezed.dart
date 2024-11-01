// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewTaskBuildable {
  bool get loading => throw _privateConstructorUsedError;
  String? get taskId => throw _privateConstructorUsedError;
  TaskModel? get task => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  String? get taskName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  PlatformFile? get file => throw _privateConstructorUsedError;

  /// Create a copy of NewTaskBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewTaskBuildableCopyWith<NewTaskBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTaskBuildableCopyWith<$Res> {
  factory $NewTaskBuildableCopyWith(
          NewTaskBuildable value, $Res Function(NewTaskBuildable) then) =
      _$NewTaskBuildableCopyWithImpl<$Res, NewTaskBuildable>;
  @useResult
  $Res call(
      {bool loading,
      String? taskId,
      TaskModel? task,
      DateTime? deadline,
      String? taskName,
      String? description,
      PlatformFile? file});

  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class _$NewTaskBuildableCopyWithImpl<$Res, $Val extends NewTaskBuildable>
    implements $NewTaskBuildableCopyWith<$Res> {
  _$NewTaskBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewTaskBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? taskId = freezed,
    Object? task = freezed,
    Object? deadline = freezed,
    Object? taskName = freezed,
    Object? description = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ) as $Val);
  }

  /// Create a copy of NewTaskBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskModelCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewTaskBuildableImplCopyWith<$Res>
    implements $NewTaskBuildableCopyWith<$Res> {
  factory _$$NewTaskBuildableImplCopyWith(_$NewTaskBuildableImpl value,
          $Res Function(_$NewTaskBuildableImpl) then) =
      __$$NewTaskBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String? taskId,
      TaskModel? task,
      DateTime? deadline,
      String? taskName,
      String? description,
      PlatformFile? file});

  @override
  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class __$$NewTaskBuildableImplCopyWithImpl<$Res>
    extends _$NewTaskBuildableCopyWithImpl<$Res, _$NewTaskBuildableImpl>
    implements _$$NewTaskBuildableImplCopyWith<$Res> {
  __$$NewTaskBuildableImplCopyWithImpl(_$NewTaskBuildableImpl _value,
      $Res Function(_$NewTaskBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTaskBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? taskId = freezed,
    Object? task = freezed,
    Object? deadline = freezed,
    Object? taskName = freezed,
    Object? description = freezed,
    Object? file = freezed,
  }) {
    return _then(_$NewTaskBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$NewTaskBuildableImpl implements _NewTaskBuildable {
  const _$NewTaskBuildableImpl(
      {this.loading = false,
      this.taskId,
      this.task,
      this.deadline,
      this.taskName,
      this.description,
      this.file});

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? taskId;
  @override
  final TaskModel? task;
  @override
  final DateTime? deadline;
  @override
  final String? taskName;
  @override
  final String? description;
  @override
  final PlatformFile? file;

  @override
  String toString() {
    return 'NewTaskBuildable(loading: $loading, taskId: $taskId, task: $task, deadline: $deadline, taskName: $taskName, description: $description, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTaskBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, taskId, task, deadline,
      taskName, description, file);

  /// Create a copy of NewTaskBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTaskBuildableImplCopyWith<_$NewTaskBuildableImpl> get copyWith =>
      __$$NewTaskBuildableImplCopyWithImpl<_$NewTaskBuildableImpl>(
          this, _$identity);
}

abstract class _NewTaskBuildable implements NewTaskBuildable {
  const factory _NewTaskBuildable(
      {final bool loading,
      final String? taskId,
      final TaskModel? task,
      final DateTime? deadline,
      final String? taskName,
      final String? description,
      final PlatformFile? file}) = _$NewTaskBuildableImpl;

  @override
  bool get loading;
  @override
  String? get taskId;
  @override
  TaskModel? get task;
  @override
  DateTime? get deadline;
  @override
  String? get taskName;
  @override
  String? get description;
  @override
  PlatformFile? get file;

  /// Create a copy of NewTaskBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewTaskBuildableImplCopyWith<_$NewTaskBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewTaskListenable {
  NewTaskEffects get effect => throw _privateConstructorUsedError;

  /// Create a copy of NewTaskListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewTaskListenableCopyWith<NewTaskListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTaskListenableCopyWith<$Res> {
  factory $NewTaskListenableCopyWith(
          NewTaskListenable value, $Res Function(NewTaskListenable) then) =
      _$NewTaskListenableCopyWithImpl<$Res, NewTaskListenable>;
  @useResult
  $Res call({NewTaskEffects effect});
}

/// @nodoc
class _$NewTaskListenableCopyWithImpl<$Res, $Val extends NewTaskListenable>
    implements $NewTaskListenableCopyWith<$Res> {
  _$NewTaskListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewTaskListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_value.copyWith(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as NewTaskEffects,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewTaskListenableImplCopyWith<$Res>
    implements $NewTaskListenableCopyWith<$Res> {
  factory _$$NewTaskListenableImplCopyWith(_$NewTaskListenableImpl value,
          $Res Function(_$NewTaskListenableImpl) then) =
      __$$NewTaskListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewTaskEffects effect});
}

/// @nodoc
class __$$NewTaskListenableImplCopyWithImpl<$Res>
    extends _$NewTaskListenableCopyWithImpl<$Res, _$NewTaskListenableImpl>
    implements _$$NewTaskListenableImplCopyWith<$Res> {
  __$$NewTaskListenableImplCopyWithImpl(_$NewTaskListenableImpl _value,
      $Res Function(_$NewTaskListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTaskListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_$NewTaskListenableImpl(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as NewTaskEffects,
    ));
  }
}

/// @nodoc

class _$NewTaskListenableImpl implements _NewTaskListenable {
  const _$NewTaskListenableImpl({required this.effect});

  @override
  final NewTaskEffects effect;

  @override
  String toString() {
    return 'NewTaskListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTaskListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  /// Create a copy of NewTaskListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTaskListenableImplCopyWith<_$NewTaskListenableImpl> get copyWith =>
      __$$NewTaskListenableImplCopyWithImpl<_$NewTaskListenableImpl>(
          this, _$identity);
}

abstract class _NewTaskListenable implements NewTaskListenable {
  const factory _NewTaskListenable({required final NewTaskEffects effect}) =
      _$NewTaskListenableImpl;

  @override
  NewTaskEffects get effect;

  /// Create a copy of NewTaskListenable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewTaskListenableImplCopyWith<_$NewTaskListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

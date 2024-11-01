// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  String? get teacherId => throw _privateConstructorUsedError;
  String? get taskId => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get taskName => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _deadlineFromJson)
  DateTime? get deadline => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Solution>? get solutions => throw _privateConstructorUsedError;

  /// Serializes this TaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {String? teacherId,
      String? taskId,
      String? fileName,
      String? taskName,
      String? fileUrl,
      @JsonKey(fromJson: _deadlineFromJson) DateTime? deadline,
      String? description,
      List<Solution>? solutions});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = freezed,
    Object? taskId = freezed,
    Object? fileName = freezed,
    Object? taskName = freezed,
    Object? fileUrl = freezed,
    Object? deadline = freezed,
    Object? description = freezed,
    Object? solutions = freezed,
  }) {
    return _then(_value.copyWith(
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      solutions: freezed == solutions
          ? _value.solutions
          : solutions // ignore: cast_nullable_to_non_nullable
              as List<Solution>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
          _$TaskModelImpl value, $Res Function(_$TaskModelImpl) then) =
      __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? teacherId,
      String? taskId,
      String? fileName,
      String? taskName,
      String? fileUrl,
      @JsonKey(fromJson: _deadlineFromJson) DateTime? deadline,
      String? description,
      List<Solution>? solutions});
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
      _$TaskModelImpl _value, $Res Function(_$TaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = freezed,
    Object? taskId = freezed,
    Object? fileName = freezed,
    Object? taskName = freezed,
    Object? fileUrl = freezed,
    Object? deadline = freezed,
    Object? description = freezed,
    Object? solutions = freezed,
  }) {
    return _then(_$TaskModelImpl(
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      solutions: freezed == solutions
          ? _value._solutions
          : solutions // ignore: cast_nullable_to_non_nullable
              as List<Solution>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskModelImpl implements _TaskModel {
  _$TaskModelImpl(
      {this.teacherId,
      this.taskId,
      this.fileName,
      this.taskName,
      this.fileUrl,
      @JsonKey(fromJson: _deadlineFromJson) this.deadline,
      this.description,
      final List<Solution>? solutions})
      : _solutions = solutions;

  factory _$TaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelImplFromJson(json);

  @override
  final String? teacherId;
  @override
  final String? taskId;
  @override
  final String? fileName;
  @override
  final String? taskName;
  @override
  final String? fileUrl;
  @override
  @JsonKey(fromJson: _deadlineFromJson)
  final DateTime? deadline;
  @override
  final String? description;
  final List<Solution>? _solutions;
  @override
  List<Solution>? get solutions {
    final value = _solutions;
    if (value == null) return null;
    if (_solutions is EqualUnmodifiableListView) return _solutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TaskModel(teacherId: $teacherId, taskId: $taskId, fileName: $fileName, taskName: $taskName, fileUrl: $fileUrl, deadline: $deadline, description: $description, solutions: $solutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._solutions, _solutions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      teacherId,
      taskId,
      fileName,
      taskName,
      fileUrl,
      deadline,
      description,
      const DeepCollectionEquality().hash(_solutions));

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      __$$TaskModelImplCopyWithImpl<_$TaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskModelImplToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  factory _TaskModel(
      {final String? teacherId,
      final String? taskId,
      final String? fileName,
      final String? taskName,
      final String? fileUrl,
      @JsonKey(fromJson: _deadlineFromJson) final DateTime? deadline,
      final String? description,
      final List<Solution>? solutions}) = _$TaskModelImpl;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$TaskModelImpl.fromJson;

  @override
  String? get teacherId;
  @override
  String? get taskId;
  @override
  String? get fileName;
  @override
  String? get taskName;
  @override
  String? get fileUrl;
  @override
  @JsonKey(fromJson: _deadlineFromJson)
  DateTime? get deadline;
  @override
  String? get description;
  @override
  List<Solution>? get solutions;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Solution _$SolutionFromJson(Map<String, dynamic> json) {
  return _Solution.fromJson(json);
}

/// @nodoc
mixin _$Solution {
  String? get fullName => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _deadlineFromJson)
  DateTime? get submittedAt => throw _privateConstructorUsedError;

  /// Serializes this Solution to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SolutionCopyWith<Solution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolutionCopyWith<$Res> {
  factory $SolutionCopyWith(Solution value, $Res Function(Solution) then) =
      _$SolutionCopyWithImpl<$Res, Solution>;
  @useResult
  $Res call(
      {String? fullName,
      String? fileName,
      String? fileUrl,
      @JsonKey(fromJson: _deadlineFromJson) DateTime? submittedAt});
}

/// @nodoc
class _$SolutionCopyWithImpl<$Res, $Val extends Solution>
    implements $SolutionCopyWith<$Res> {
  _$SolutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? submittedAt = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SolutionImplCopyWith<$Res>
    implements $SolutionCopyWith<$Res> {
  factory _$$SolutionImplCopyWith(
          _$SolutionImpl value, $Res Function(_$SolutionImpl) then) =
      __$$SolutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? fileName,
      String? fileUrl,
      @JsonKey(fromJson: _deadlineFromJson) DateTime? submittedAt});
}

/// @nodoc
class __$$SolutionImplCopyWithImpl<$Res>
    extends _$SolutionCopyWithImpl<$Res, _$SolutionImpl>
    implements _$$SolutionImplCopyWith<$Res> {
  __$$SolutionImplCopyWithImpl(
      _$SolutionImpl _value, $Res Function(_$SolutionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? submittedAt = freezed,
  }) {
    return _then(_$SolutionImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SolutionImpl implements _Solution {
  _$SolutionImpl(
      {this.fullName,
      this.fileName,
      this.fileUrl,
      @JsonKey(fromJson: _deadlineFromJson) this.submittedAt});

  factory _$SolutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SolutionImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? fileName;
  @override
  final String? fileUrl;
  @override
  @JsonKey(fromJson: _deadlineFromJson)
  final DateTime? submittedAt;

  @override
  String toString() {
    return 'Solution(fullName: $fullName, fileName: $fileName, fileUrl: $fileUrl, submittedAt: $submittedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolutionImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, fileName, fileUrl, submittedAt);

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SolutionImplCopyWith<_$SolutionImpl> get copyWith =>
      __$$SolutionImplCopyWithImpl<_$SolutionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SolutionImplToJson(
      this,
    );
  }
}

abstract class _Solution implements Solution {
  factory _Solution(
          {final String? fullName,
          final String? fileName,
          final String? fileUrl,
          @JsonKey(fromJson: _deadlineFromJson) final DateTime? submittedAt}) =
      _$SolutionImpl;

  factory _Solution.fromJson(Map<String, dynamic> json) =
      _$SolutionImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get fileName;
  @override
  String? get fileUrl;
  @override
  @JsonKey(fromJson: _deadlineFromJson)
  DateTime? get submittedAt;

  /// Create a copy of Solution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SolutionImplCopyWith<_$SolutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

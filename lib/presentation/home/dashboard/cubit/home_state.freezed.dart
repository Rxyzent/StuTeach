// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<TaskModel>? get allTasks => throw _privateConstructorUsedError;
  List<TaskModel>? get newTasks => throw _privateConstructorUsedError;
  List<TaskModel>? get completedTasks => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeBuildableCopyWith<HomeBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBuildableCopyWith<$Res> {
  factory $HomeBuildableCopyWith(
          HomeBuildable value, $Res Function(HomeBuildable) then) =
      _$HomeBuildableCopyWithImpl<$Res, HomeBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      List<TaskModel>? allTasks,
      List<TaskModel>? newTasks,
      List<TaskModel>? completedTasks,
      UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$HomeBuildableCopyWithImpl<$Res, $Val extends HomeBuildable>
    implements $HomeBuildableCopyWith<$Res> {
  _$HomeBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? allTasks = freezed,
    Object? newTasks = freezed,
    Object? completedTasks = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      allTasks: freezed == allTasks
          ? _value.allTasks
          : allTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
      newTasks: freezed == newTasks
          ? _value.newTasks
          : newTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
      completedTasks: freezed == completedTasks
          ? _value.completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeBuildableImplCopyWith<$Res>
    implements $HomeBuildableCopyWith<$Res> {
  factory _$$HomeBuildableImplCopyWith(
          _$HomeBuildableImpl value, $Res Function(_$HomeBuildableImpl) then) =
      __$$HomeBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      List<TaskModel>? allTasks,
      List<TaskModel>? newTasks,
      List<TaskModel>? completedTasks,
      UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$HomeBuildableImplCopyWithImpl<$Res>
    extends _$HomeBuildableCopyWithImpl<$Res, _$HomeBuildableImpl>
    implements _$$HomeBuildableImplCopyWith<$Res> {
  __$$HomeBuildableImplCopyWithImpl(
      _$HomeBuildableImpl _value, $Res Function(_$HomeBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? allTasks = freezed,
    Object? newTasks = freezed,
    Object? completedTasks = freezed,
    Object? user = freezed,
  }) {
    return _then(_$HomeBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      allTasks: freezed == allTasks
          ? _value._allTasks
          : allTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
      newTasks: freezed == newTasks
          ? _value._newTasks
          : newTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
      completedTasks: freezed == completedTasks
          ? _value._completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$HomeBuildableImpl implements _HomeBuildable {
  const _$HomeBuildableImpl(
      {this.loading = true,
      this.error = false,
      final List<TaskModel>? allTasks,
      final List<TaskModel>? newTasks,
      final List<TaskModel>? completedTasks,
      this.user})
      : _allTasks = allTasks,
        _newTasks = newTasks,
        _completedTasks = completedTasks;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  final List<TaskModel>? _allTasks;
  @override
  List<TaskModel>? get allTasks {
    final value = _allTasks;
    if (value == null) return null;
    if (_allTasks is EqualUnmodifiableListView) return _allTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TaskModel>? _newTasks;
  @override
  List<TaskModel>? get newTasks {
    final value = _newTasks;
    if (value == null) return null;
    if (_newTasks is EqualUnmodifiableListView) return _newTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TaskModel>? _completedTasks;
  @override
  List<TaskModel>? get completedTasks {
    final value = _completedTasks;
    if (value == null) return null;
    if (_completedTasks is EqualUnmodifiableListView) return _completedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'HomeBuildable(loading: $loading, error: $error, allTasks: $allTasks, newTasks: $newTasks, completedTasks: $completedTasks, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._allTasks, _allTasks) &&
            const DeepCollectionEquality().equals(other._newTasks, _newTasks) &&
            const DeepCollectionEquality()
                .equals(other._completedTasks, _completedTasks) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      const DeepCollectionEquality().hash(_allTasks),
      const DeepCollectionEquality().hash(_newTasks),
      const DeepCollectionEquality().hash(_completedTasks),
      user);

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBuildableImplCopyWith<_$HomeBuildableImpl> get copyWith =>
      __$$HomeBuildableImplCopyWithImpl<_$HomeBuildableImpl>(this, _$identity);
}

abstract class _HomeBuildable implements HomeBuildable {
  const factory _HomeBuildable(
      {final bool loading,
      final bool error,
      final List<TaskModel>? allTasks,
      final List<TaskModel>? newTasks,
      final List<TaskModel>? completedTasks,
      final UserModel? user}) = _$HomeBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  List<TaskModel>? get allTasks;
  @override
  List<TaskModel>? get newTasks;
  @override
  List<TaskModel>? get completedTasks;
  @override
  UserModel? get user;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeBuildableImplCopyWith<_$HomeBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeListenable {}

/// @nodoc
abstract class $HomeListenableCopyWith<$Res> {
  factory $HomeListenableCopyWith(
          HomeListenable value, $Res Function(HomeListenable) then) =
      _$HomeListenableCopyWithImpl<$Res, HomeListenable>;
}

/// @nodoc
class _$HomeListenableCopyWithImpl<$Res, $Val extends HomeListenable>
    implements $HomeListenableCopyWith<$Res> {
  _$HomeListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeListenableImplCopyWith<$Res> {
  factory _$$HomeListenableImplCopyWith(_$HomeListenableImpl value,
          $Res Function(_$HomeListenableImpl) then) =
      __$$HomeListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeListenableImplCopyWithImpl<$Res>
    extends _$HomeListenableCopyWithImpl<$Res, _$HomeListenableImpl>
    implements _$$HomeListenableImplCopyWith<$Res> {
  __$$HomeListenableImplCopyWithImpl(
      _$HomeListenableImpl _value, $Res Function(_$HomeListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeListenableImpl implements _HomeListenable {
  const _$HomeListenableImpl();

  @override
  String toString() {
    return 'HomeListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _HomeListenable implements HomeListenable {
  const factory _HomeListenable() = _$HomeListenableImpl;
}

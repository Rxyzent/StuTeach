// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterBuildable {
  bool get loading => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get loginError => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;
  String? get nameError => throw _privateConstructorUsedError;

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterBuildableCopyWith<RegisterBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBuildableCopyWith<$Res> {
  factory $RegisterBuildableCopyWith(
          RegisterBuildable value, $Res Function(RegisterBuildable) then) =
      _$RegisterBuildableCopyWithImpl<$Res, RegisterBuildable>;
  @useResult
  $Res call(
      {bool loading,
      String? email,
      String? password,
      String? name,
      String? role,
      String? loginError,
      String? passwordError,
      String? nameError});
}

/// @nodoc
class _$RegisterBuildableCopyWithImpl<$Res, $Val extends RegisterBuildable>
    implements $RegisterBuildableCopyWith<$Res> {
  _$RegisterBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? loginError = freezed,
    Object? passwordError = freezed,
    Object? nameError = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      loginError: freezed == loginError
          ? _value.loginError
          : loginError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBuildableImplCopyWith<$Res>
    implements $RegisterBuildableCopyWith<$Res> {
  factory _$$RegisterBuildableImplCopyWith(_$RegisterBuildableImpl value,
          $Res Function(_$RegisterBuildableImpl) then) =
      __$$RegisterBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String? email,
      String? password,
      String? name,
      String? role,
      String? loginError,
      String? passwordError,
      String? nameError});
}

/// @nodoc
class __$$RegisterBuildableImplCopyWithImpl<$Res>
    extends _$RegisterBuildableCopyWithImpl<$Res, _$RegisterBuildableImpl>
    implements _$$RegisterBuildableImplCopyWith<$Res> {
  __$$RegisterBuildableImplCopyWithImpl(_$RegisterBuildableImpl _value,
      $Res Function(_$RegisterBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? loginError = freezed,
    Object? passwordError = freezed,
    Object? nameError = freezed,
  }) {
    return _then(_$RegisterBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      loginError: freezed == loginError
          ? _value.loginError
          : loginError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RegisterBuildableImpl implements _RegisterBuildable {
  const _$RegisterBuildableImpl(
      {this.loading = false,
      this.email,
      this.password,
      this.name,
      this.role,
      this.loginError,
      this.passwordError,
      this.nameError});

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? name;
  @override
  final String? role;
  @override
  final String? loginError;
  @override
  final String? passwordError;
  @override
  final String? nameError;

  @override
  String toString() {
    return 'RegisterBuildable(loading: $loading, email: $email, password: $password, name: $name, role: $role, loginError: $loginError, passwordError: $passwordError, nameError: $nameError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.loginError, loginError) ||
                other.loginError == loginError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.nameError, nameError) ||
                other.nameError == nameError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, email, password, name,
      role, loginError, passwordError, nameError);

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBuildableImplCopyWith<_$RegisterBuildableImpl> get copyWith =>
      __$$RegisterBuildableImplCopyWithImpl<_$RegisterBuildableImpl>(
          this, _$identity);
}

abstract class _RegisterBuildable implements RegisterBuildable {
  const factory _RegisterBuildable(
      {final bool loading,
      final String? email,
      final String? password,
      final String? name,
      final String? role,
      final String? loginError,
      final String? passwordError,
      final String? nameError}) = _$RegisterBuildableImpl;

  @override
  bool get loading;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get name;
  @override
  String? get role;
  @override
  String? get loginError;
  @override
  String? get passwordError;
  @override
  String? get nameError;

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterBuildableImplCopyWith<_$RegisterBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterListenable {
  RegisterEffects get effect => throw _privateConstructorUsedError;

  /// Create a copy of RegisterListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterListenableCopyWith<RegisterListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterListenableCopyWith<$Res> {
  factory $RegisterListenableCopyWith(
          RegisterListenable value, $Res Function(RegisterListenable) then) =
      _$RegisterListenableCopyWithImpl<$Res, RegisterListenable>;
  @useResult
  $Res call({RegisterEffects effect});
}

/// @nodoc
class _$RegisterListenableCopyWithImpl<$Res, $Val extends RegisterListenable>
    implements $RegisterListenableCopyWith<$Res> {
  _$RegisterListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterListenable
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
              as RegisterEffects,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterListenableImplCopyWith<$Res>
    implements $RegisterListenableCopyWith<$Res> {
  factory _$$RegisterListenableImplCopyWith(_$RegisterListenableImpl value,
          $Res Function(_$RegisterListenableImpl) then) =
      __$$RegisterListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterEffects effect});
}

/// @nodoc
class __$$RegisterListenableImplCopyWithImpl<$Res>
    extends _$RegisterListenableCopyWithImpl<$Res, _$RegisterListenableImpl>
    implements _$$RegisterListenableImplCopyWith<$Res> {
  __$$RegisterListenableImplCopyWithImpl(_$RegisterListenableImpl _value,
      $Res Function(_$RegisterListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_$RegisterListenableImpl(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as RegisterEffects,
    ));
  }
}

/// @nodoc

class _$RegisterListenableImpl implements _RegisterListenable {
  const _$RegisterListenableImpl({required this.effect});

  @override
  final RegisterEffects effect;

  @override
  String toString() {
    return 'RegisterListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  /// Create a copy of RegisterListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterListenableImplCopyWith<_$RegisterListenableImpl> get copyWith =>
      __$$RegisterListenableImplCopyWithImpl<_$RegisterListenableImpl>(
          this, _$identity);
}

abstract class _RegisterListenable implements RegisterListenable {
  const factory _RegisterListenable({required final RegisterEffects effect}) =
      _$RegisterListenableImpl;

  @override
  RegisterEffects get effect;

  /// Create a copy of RegisterListenable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterListenableImplCopyWith<_$RegisterListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterBuildable with _$RegisterBuildable {
  const factory RegisterBuildable({
    @Default(false) bool loading,
    String? email,
    String? password,
    String? name,
    String? role,
    String? loginError,
    String? passwordError,
    String? nameError,
}) = _RegisterBuildable;
}

@freezed
class RegisterListenable with _$RegisterListenable {
  const factory RegisterListenable({required RegisterEffects effect}) = _RegisterListenable;
}

enum RegisterEffects {login}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInBuildable with _$SignInBuildable {
  const factory SignInBuildable({
    @Default(false) bool loading,
    String? email,
    String? password,
    String? role,
    String? loginError,
    String? passwordError,
}) = _SignInBuildable;
}

@freezed
class SignInListenable with _$SignInListenable {
  const factory SignInListenable({
    required SignInEffects effect,
}) = _SignInListenable;
}

enum SignInEffects {home,error}
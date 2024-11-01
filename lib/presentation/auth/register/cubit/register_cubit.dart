import 'package:injectable/injectable.dart';
import 'package:stu_teach/common/base/base_cubit.dart';
import 'package:stu_teach/domain/repo/auth_repo.dart';
import 'package:stu_teach/presentation/auth/register/cubit/register_state.dart';

@injectable
class RegisterCubit extends BaseCubit<RegisterBuildable, RegisterListenable> {
  RegisterCubit(this._repo) : super(const RegisterBuildable());

  final AuthRepo _repo;

  void onLoginChanged(String email) {
    if (!RegExp(
      r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}',
      caseSensitive: false,
    ).hasMatch(email)) {
      build(
        (buildable) =>
            buildable.copyWith(loginError: 'Please enter a valid email'),
      );
      return;
    } else {
      build((buildable) => buildable.copyWith(loginError: null));
    }
    build((buildable) => buildable.copyWith(email: email));
  }

  void onPasswordChanged(String password) {
    if (password.length < 6) {
      build((buildable) => buildable.copyWith(
          passwordError: 'please enter valid password min. 6 character'));
      return;
    } else {
      build((buildable) => buildable.copyWith(passwordError: null));
    }
    build((buildable) => buildable.copyWith(password: password));
  }

  void onRoleChanged(String? role) {
    build((buildable) => buildable.copyWith(role: role));
  }

  void onNameChanged(String name) {
    if (name.isEmpty) {
      build((buildable) =>
          buildable.copyWith(nameError: 'This field cannot be empty'));
      return;
    } else {
      build((buildable) => buildable.copyWith(nameError: null));
    }
    build((buildable) => buildable.copyWith(name: name));
  }

  Future<void> createUser() => callable(
        future: _repo.createUser(
          buildable.email!,
          buildable.password!,
          buildable.role!,
          buildable.name!,
        ),
        buildOnStart: () => buildable.copyWith(loading: true),
        onErrorData: (e) => display.error(e),
        buildOnDone: ()=>buildable.copyWith(loading: false),
        invokeOnDone: () =>
            const RegisterListenable(effect: RegisterEffects.login),
      );
}

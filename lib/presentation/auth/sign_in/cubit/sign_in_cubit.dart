import 'package:injectable/injectable.dart';
import 'package:stu_teach/common/base/base_cubit.dart';
import 'package:stu_teach/domain/repo/auth_repo.dart';
import 'package:stu_teach/presentation/auth/sign_in/cubit/sign_in_state.dart';

@injectable
class SignInCubit extends BaseCubit<SignInBuildable, SignInListenable> {
  SignInCubit(this._repo) : super(const SignInBuildable());

  final AuthRepo _repo;

  Future<void> signIn() => callable(
        future: _repo.signIn(
          buildable.email!,
          buildable.password!,
        ),
        buildOnStart: () => buildable.copyWith(loading: true),
        onErrorData: (e) => display.error(e),
        invokeOnData: (effect) => SignInListenable(effect: effect),
        buildOnDone: () => buildable.copyWith(loading: false),
      );

  void onEmailChange(String email) {
    if (!RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}',
      caseSensitive: false,).hasMatch(email)) {
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

  void onPasswordChange(String password) {
    if (password.length < 6) {
      build((buildable) => buildable.copyWith(
          passwordError: 'please enter valid password min. 6 character'));
      return;
    } else {
      build((buildable) => buildable.copyWith(passwordError: null));
    }
    build((buildable) => buildable.copyWith(password: password));
  }
}

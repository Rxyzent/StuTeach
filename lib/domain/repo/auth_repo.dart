import 'package:stu_teach/presentation/auth/sign_in/cubit/sign_in_state.dart';

abstract class AuthRepo {
  Future<void> createUser(String email,String password, String role,String name);

  Future<SignInEffects> signIn(String email,String password);

  Future<void> logout();
}
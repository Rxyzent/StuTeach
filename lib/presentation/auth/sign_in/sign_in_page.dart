import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/common/base/base_page.dart';
import 'package:stu_teach/common/extensions/text_extensions.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/common/router/app_router.dart';
import 'package:stu_teach/common/widgets/common_button.dart';
import 'package:stu_teach/common/widgets/common_text_filed.dart';
import 'package:stu_teach/presentation/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:stu_teach/presentation/auth/sign_in/cubit/sign_in_state.dart';
import 'package:stu_teach/presentation/main/cubit/main_cubit.dart';

@RoutePage()
class SignInPage
    extends BasePage<SignInCubit, SignInBuildable, SignInListenable> {
  const SignInPage({super.key});

  @override
  void listener(BuildContext context, SignInListenable state) {
    super.listener(context, state);
    switch (state.effect) {
      case SignInEffects.home:
        context.read<MainCubit>().setTheme();
        context.router.replaceAll([const MainRoute()]);
        break;
      case SignInEffects.error:
        break;
    }
  }

  @override
  Widget builder(BuildContext context, SignInBuildable state) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 1),
              Align(
                alignment: Alignment.center,
                child: 'Sign in'.w(500).c(context.colors.black).s(20),
              ),
              const Spacer(flex: 1),
              'Login'.w(500).c(context.colors.black).s(18),
              const SizedBox(height: 8),
              CommonTextField(
                hint: 'email',
                keyboardType: TextInputType.emailAddress,
                errorText: state.loginError,
                onChanged: context.read<SignInCubit>().onEmailChange,
              ),
              const SizedBox(height: 16),
              'Password'.w(500).c(context.colors.black).s(18),
              const SizedBox(height: 8),
              CommonTextField(
                hint: 'password',
                errorText: state.passwordError,
                onChanged: context.read<SignInCubit>().onPasswordChange,
              ),
              const Spacer(flex: 2),
              CommonButton.elevated(
                text: 'Sign in',
                loading: state.loading,
                enabled:
                    state.loginError == null && state.passwordError == null,
                onPressed: context.read<SignInCubit>().signIn,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Don't have account?".w(500).c(context.colors.black),
                  TextButton(
                    onPressed: () => context.router.push(const RegisterRoute()),
                    child: 'Register'.w(500).c(context.colors.primary),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

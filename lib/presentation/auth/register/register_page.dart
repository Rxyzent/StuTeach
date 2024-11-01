import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/common/base/base_page.dart';
import 'package:stu_teach/common/extensions/text_extensions.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/common/router/app_router.dart';
import 'package:stu_teach/common/widgets/common_button.dart';
import 'package:stu_teach/common/widgets/common_text_filed.dart';
import 'package:stu_teach/presentation/auth/register/cubit/register_cubit.dart';
import 'package:stu_teach/presentation/auth/register/cubit/register_state.dart';

@RoutePage()
class RegisterPage
    extends BasePage<RegisterCubit, RegisterBuildable, RegisterListenable> {
  const RegisterPage({super.key});

  @override
  void listener(BuildContext context, RegisterListenable state) {
    super.listener(context, state);
    switch (state.effect) {
      case RegisterEffects.login:
        context.router.push(const SignInRoute());
    }
  }

  @override
  Widget builder(BuildContext context, RegisterBuildable state) {
    const roles = ['Student', 'Teacher'];
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: 'Registration'.w(500).c(context.colors.black).s(20),
                    ),
                    'Full name'.w(500).c(context.colors.black).s(18),
                    const SizedBox(height: 8),
                    CommonTextField(
                      hint: 'Name Surname',
                      onChanged: context.read<RegisterCubit>().onNameChanged,
                      errorText: state.nameError,
                    ),
                    const SizedBox(height: 16),
                    'Login'.w(500).c(context.colors.black).s(18),
                    const SizedBox(height: 8),
                    CommonTextField(
                      hint: 'email',
                      onChanged: context.read<RegisterCubit>().onLoginChanged,
                      errorText: state.loginError,
                    ),
                    const SizedBox(height: 16),
                    'Password'.w(500).c(context.colors.black).s(18),
                    const SizedBox(height: 8),
                    CommonTextField(
                      hint: 'password',
                      onChanged: context.read<RegisterCubit>().onPasswordChanged,
                      errorText: state.passwordError,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        'Role:'.w(500).s(20).c(context.colors.black),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: context.colors.primary,
                                width: 2,
                              )),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: 'Role'.w(500).c(context.colors.label),
                              borderRadius: BorderRadius.circular(8),
                              underline: null,
                              value: state.role,
                              items: roles.map((role) {
                                return DropdownMenuItem(
                                  value: role,
                                  child: role.w(500).s(18).c(context.colors.black),
                                );
                              }).toList(),
                              onChanged: context.read<RegisterCubit>().onRoleChanged,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Spacer(),
                    CommonButton.elevated(
                      text: 'Register',
                      loading: state.loading,
                      enabled: state.role != null &&
                          state.loginError == null &&
                          state.passwordError == null &&
                          state.nameError == null,
                      onPressed: () => context.read<RegisterCubit>().createUser(),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => context.router.push(const SignInRoute()),
                        child: 'Sign in'.w(500).c(context.colors.primary),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

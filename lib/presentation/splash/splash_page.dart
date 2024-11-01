import 'package:auto_route/auto_route.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:stu_teach/common/base/base_page.dart';
import 'package:stu_teach/common/router/app_router.dart';
import 'package:stu_teach/presentation/splash/cubit/splash_cubit.dart';
import 'package:stu_teach/presentation/splash/cubit/splash_state.dart';

@RoutePage()
class SplashPage
    extends BasePage<SplashCubit, SplashBuildable, SplashListenable> {
  const SplashPage({super.key});

  @override
  void listener(BuildContext context, SplashListenable state) {
    super.listener(context, state);
    switch (state.effect) {
      case SplashEffect.login:
        context.router.replace(const SignInRoute());
        break;
      case SplashEffect.home:
        context.router.replaceAll([const MainRoute()]);
        break;
    }
  }

  @override
  Widget builder(BuildContext context, SplashBuildable state) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(
            color: context.colors.primary,
          ),
        ),
      ),
    );
  }
}

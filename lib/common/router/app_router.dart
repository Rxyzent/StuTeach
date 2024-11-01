import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/presentation/auth/register/register_page.dart';
import 'package:stu_teach/presentation/auth/sign_in/sign_in_page.dart';
import 'package:stu_teach/presentation/home/dashboard/home_page.dart';
import 'package:stu_teach/presentation/home/new_task/new_task_page.dart';
import 'package:stu_teach/presentation/main/main_page.dart';
import 'package:stu_teach/presentation/profile/profile_page.dart';
import 'package:stu_teach/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page,initial: true, ),
    AutoRoute(page: MainRoute.page, children: [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(page: ProfileRoute.page),
    ]),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: NewTaskRoute.page),
  ];
}

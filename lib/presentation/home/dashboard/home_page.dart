import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/common/base/base_page.dart';
import 'package:stu_teach/common/extensions/text_extensions.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/presentation/home/dashboard/cubit/home_cubit.dart';
import 'package:stu_teach/presentation/home/dashboard/cubit/home_state.dart';
import 'package:stu_teach/presentation/home/dashboard/widgets/solutions.dart';
import 'package:stu_teach/presentation/home/dashboard/widgets/tasks.dart';

@RoutePage()
class HomePage extends BasePage<HomeCubit, HomeBuildable, HomeListenable> {
  const HomePage({super.key});

  @override
  void onFocusGained(BuildContext context) {
    super.onFocusGained(context);
    context.read<HomeCubit>().refresh();
  }

  @override
  Widget builder(BuildContext context, HomeBuildable state) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: context.colors.primary,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'Welcome'.w(500).c(context.colors.white),
                state.user!.fullName!.w(500).s(16).c(context.colors.white),
              ],
            ),
            actions: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    state.user!.role!.w(500).s(16).c(context.colors.white),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ],
            bottom: TabBar(
              indicatorColor: context.colors.white,
              tabs: [
                'New'.w(500).c(context.colors.white),
                'Completed'.w(500).c(context.colors.white),
              ],
            ),
          ),
          body: loadable(
            loading: state.loading,
            error: state.error,
            builder: () => const Padding(
              padding: EdgeInsets.all(16.0),
              child: TabBarView(
                children: [
                  Tasks(),
                  Solutions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

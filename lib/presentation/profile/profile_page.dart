import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/common/base/base_page.dart';
import 'package:stu_teach/common/extensions/text_extensions.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/common/router/app_router.dart';
import 'package:stu_teach/common/widgets/common_button.dart';
import 'package:stu_teach/presentation/profile/cubit/profile_cubit.dart';
import 'package:stu_teach/presentation/profile/cubit/profile_state.dart';

@RoutePage()
class ProfilePage
    extends BasePage<ProfileCubit, ProfileBuildable, ProfileListenable> {
  const ProfilePage({super.key});

  @override
  Widget builder(BuildContext context, ProfileBuildable state) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonButton.elevated(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (dialogContext) => AlertDialog(
                      backgroundColor: context.colors.onPrimary,
                      title: 'Log out'.w(500).s(15).c(context.colors.black),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(dialogContext);
                          },
                          child: Text(
                            'No',
                            style: TextStyle(color: context.colors.primary),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.read<ProfileCubit>().logout();
                            Navigator.pop(dialogContext);
                            context.router.replaceAll([const SignInRoute()]);
                          },
                          child: Text(
                            'Yes',
                            style: TextStyle(color: context.colors.primary),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                text: 'Log out',
                backgroundColor: context.colors.error,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

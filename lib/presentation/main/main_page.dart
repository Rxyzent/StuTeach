import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/common/router/app_router.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            backgroundColor: context.colors.white,
            showUnselectedLabels: true,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            unselectedItemColor: context.colors.primary,
            selectedItemColor: context.colors.primary,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: context.colors.primary,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: context.colors.primary,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: context.colors.primary,
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: context.colors.primary,
                ),
                label: 'Profile',
              ),
            ]);
      },
    );
  }
}

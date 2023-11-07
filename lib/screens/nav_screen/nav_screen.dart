import 'package:all_chef/colors.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:all_chef/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class NavBaseScreen extends StatelessWidget {
  const NavBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const HomeRoute(),
        SavedRoute(),
        const CreateRoute(),
        const ShopRoute(),
        const ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
            // selectedIconTheme: IconThemeData(color: kPrimaryColor),
            // unselectedIconTheme: IconThemeData(color: black_03),
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            elevation: 10,
            showUnselectedLabels: true,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w700,
                color: kPrimaryColor,
                fontSize: 10.sp),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
            ),
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: black_03,
            items: [
              BottomNavigationBarItem(
                  icon: Assets.icons.svgHome.svg(
                    width: 22.5.w,
                    height: 19.5.h,
                  ),
                  activeIcon: Assets.icons.svgHomeA.svg(),
                  label: 'Home'),
              BottomNavigationBarItem(
                  activeIcon: Assets.icons.svgSavedA.svg(),
                  icon: Assets.icons.svgSaved.svg(),
                  label: 'Saved'),
              BottomNavigationBarItem(
                  icon: Assets.icons.svgCreate.svg(),
                  activeIcon: Assets.icons.svgCreateA.svg(),
                  label: 'Create'),
              BottomNavigationBarItem(
                  icon: Assets.icons.svgShop.svg(),
                  activeIcon: Assets.icons.svgShopA.svg(),
                  label: 'Shop'),
              BottomNavigationBarItem(
                  icon: Assets.icons.svgProfile.svg(),
                  activeIcon: Assets.icons.svgProfileA.svg(),
                  label: 'Profile'),
            ]);
      },
    );
  }
}

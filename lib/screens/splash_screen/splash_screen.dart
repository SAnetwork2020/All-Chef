import 'package:all_chef/extension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import '../../routes/routes_names.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToOnboarding(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.splashBg.provider(),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.mainLogo.image(),
                Text(
                  "All Chef",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36.sp,
                    color: Colors.white,
                    height: 32.05.toLineHeight(36),
                  ),
                ),
                Text(
                  "Ignite Your Inner Chef",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.white,
                    height: 17.6.toLineHeight(14),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void navigateToOnboarding(BuildContext context) {
  final router = AutoRouter.of(context);
  Future.delayed(
    const Duration(
      seconds: 3,
    ),
    () => router.replaceNamed(
      onboardingScreenRoute,
    ),
  );
}

import 'package:all_chef/extension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.dart';
import '../../gen/assets.gen.dart';
import '../../routes/routes_names.dart';
import '../onboarding_screen/onboarding_screen.dart';

@RoutePage()
class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.onb4.provider(),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Spacer(),
            Center(
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
                ],
              ),
            ),
            188.toColumnSizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: DefaultButton(
                onTap: () => context.router.pushNamed(loginScreenRoute),
                text: 'Sign In',
              ),
            ),
            32.toColumnSizedBox(),
            TextButton(
              onPressed: () => context.router.pushNamed(signUpScreenRoute),
              child: Text(
                "Sign Up",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                  color: Colors.white,
                  height: 17.6.toLineHeight(18),
                ),
              ),
            ),
            49.toColumnSizedBox(),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}

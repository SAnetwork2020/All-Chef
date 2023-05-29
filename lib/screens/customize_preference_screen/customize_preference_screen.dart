import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:all_chef/routes/routes.gr.dart';
import 'package:all_chef/screens/onboarding_screen/onboarding_screen.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class CustomizePreferenceScreen extends StatelessWidget {
  const CustomizePreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    48.toColumnSizedBox(),
                    Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: kPrimaryColor,
                      ),
                    ),
                    50.22.toColumnSizedBox(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 68.03.w, right: 77.52.w),
                child: Assets.images.chefPix.image(),
              ),
              32.toColumnSizedBox(),
              Text(
                "Customize Preference",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: black_10,
                ),
              ),
              Text(
                "Choose a few of your favourite diet types, then \n we’ll build your personalized preference",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: black_04,
                ),
              ),
              28.toColumnSizedBox(),
              Wrap(
                spacing: 24,
                runSpacing: 16,
                children: List.generate(
                  customizePrefsList.length,
                  (index) => Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: secondary_200,
                    ),
                    child: Text(
                      customizePrefsList[index],
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: black_08,
                      ),
                    ),
                  ),
                ),
              ),
              33.toColumnSizedBox(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: DefaultButton(
                  height: 50,
                  text: "Build preference",
                  onTap: () {
                    context.pushRoute(const NavBaseRoute());
                  },
                ),
              ),
              46.toColumnSizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

List customizePrefsList = [
  "Sugar free",
  "Lactose Free",
  "Gluten free",
  "Vegetarian",
  "Low carb",
  "High fibre",
  "Mediterranean diet",
  "Paleo",
  "Vegan",
  "Keto",
  "Weight watchers",
  "Low Fat",
];

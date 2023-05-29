import 'package:all_chef/extension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';
import '../../gen/assets.gen.dart';
import '../../routes/routes_names.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int indexPage = 0;
  int currentPage = 0;
  int? totalPage;
  // final bool iscurrentIndex;

  final PageController controller = PageController();

  final List<Map<String, String>> onboarding = [
    {
      "image": Assets.images.onb1.path,
      "title": "Personalised \nRecipe Discovery",
      "desc":
          "Tell us your preferences and we’ll only \nserve you delicious recipe ideas",
    },
    {
      "image": Assets.images.onb2.path,
      "title": "Cooking Experience\n Like a Chef",
      "desc":
          "Let’s make a delicious meal with the \nbest recipe for the family",
    },
    {
      "image": Assets.images.onb3.path,
      "title": "Explore and Ignite \nYour Inner Chef",
      "desc":
          "Discover more than 1200 recipes in your\n hand  and cook it easily",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            onPageChanged: (value) => setState(
              () {
                indexPage = value;
                totalPage = indexPage + 1;
              },
            ),
            itemCount: onboarding.length,
            itemBuilder: (BuildContext context, int index) => Image.asset(
              fit: BoxFit.fill,
              onboarding[index]["image"]!,
            ),
          ),
          Positioned(
            top: 459.h,
            // bottom: 65.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  onboarding[indexPage]["title"]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28.sp,
                    color: kPrimaryColor,
                    height: 32.05.toLineHeight(28),
                  ),
                ),
                8.toColumnSizedBox(),
                Text(
                  onboarding[indexPage]["desc"]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: Colors.white,
                    height: 17.6.toLineHeight(13),
                  ),
                ),
                64.toColumnSizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onboarding.length,
                      (index) => InkWell(
                        onTap: () => controller.jumpToPage(index),
                        child: Container(
                          // child: AnimatedContainer(
                          margin: EdgeInsets.all(3.w),
                          width: index == indexPage ? 31.w : 9.h,
                          height: 9.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: index == indexPage
                                ? kPrimaryColor
                                : kPrimaryColor.withOpacity(.40),
                          ),
                          // duration: const Duration(milliseconds: 150),
                        ),
                      ),
                    ),
                  ],
                ),
                32.toColumnSizedBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: totalPage == onboarding.length
                      ? DefaultButton(
                          text: 'Get Started',
                          onTap: () =>
                              context.router.replaceNamed(authScreenRoute),
                        )
                      : Column(
                          children: [
                            DefaultButton(
                              text: "Next",
                              onTap: () => controller.nextPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.linear,
                              ),
                            ),
                            32.toColumnSizedBox(),
                            TextButton(
                              onPressed: () => controller.jumpToPage(
                                (onboarding.length - 1),
                              ),
                              child: Text(
                                "Skip",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.sp,
                                  color: kPrimaryColor,
                                  height: 17.6.toLineHeight(18),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
                51.toColumnSizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    this.btnColor = kPrimaryColor,
    required this.onTap,
    this.width,
    this.height,
  });
  final String text;
  final Color? btnColor;
  final VoidCallback onTap;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 56.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          backgroundColor: btnColor,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            color: Colors.white,
            height: 17.6.toLineHeight(18),
          ),
        ),
      ),
    );
  }
}

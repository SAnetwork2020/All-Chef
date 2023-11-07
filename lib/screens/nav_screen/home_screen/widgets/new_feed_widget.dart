import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewFeedsWidget extends StatelessWidget {
  const NewFeedsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: const Text(
            'Feeds',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: 'Poppins',
              color: black_10,
            ),
          ),
        ),
        16.toColumnSizedBox(),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              top: -8,
              bottom: 4.h,
              child: Container(
                height: 80.h,
                margin: EdgeInsets.symmetric(horizontal: 26.w),
                padding: EdgeInsets.symmetric(
                    vertical: 10.h, horizontal: 8.w),
                decoration: BoxDecoration(
                  color: error_20,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            Positioned.fill(
              top: -4,
              bottom: 4.h,
              child: Container(
                height: 80.h,
                margin: EdgeInsets.symmetric(horizontal: 22.w),
                padding: EdgeInsets.symmetric(
                    vertical: 10.h, horizontal: 8.w),
                decoration: BoxDecoration(
                  color: secondary_300,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            Container(
              height: 80.h,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding:
                  EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Assets.images.rss.image(),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You have 12 recipes that \nyou haven’t tried yet',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'See more',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
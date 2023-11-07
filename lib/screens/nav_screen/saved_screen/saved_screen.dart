import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SavedScreen extends StatelessWidget {
  SavedScreen({super.key});
  final savedItem = <Map<String, dynamic>>[
    {
      "title": "Pounded yam \nand vegetable",
      "time": "30 Mins | 2 Serving ",
      "icon": Assets.images.saved.path,
      "image": Assets.images.savedFood1.path,
    },
    {
      "title": "Fried yam and \nplantain",
      "time": "30 Mins | 2 Serving ",
      "icon": Assets.images.saved.path,
      "image": Assets.images.savedFood2.path,
    },
    {
      "title": "Whole Chicken",
      "time": "30 Mins | 2 Serving ",
      "icon": Assets.images.saved.path,
      "image": Assets.images.savedFood3.path,
    },
    {
      "title": "Cooked fried \nmeat",
      "time": "30 Mins | 2 Serving ",
      "icon": Assets.images.saved.path,
      "image": Assets.images.savedFood4.path,
    },
    {
      "title": "Meat Pie",
      "time": "30 Mins | 2 Serving ",
      "icon": Assets.images.saved.path,
      "image": Assets.images.savedFood5.path,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                48.toColumnSizedBox(),
                Text(
                  "Saved",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: black_10,
                  ),
                ),
                Text(
                  "Check out all your saved recipes here.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlack,
                  ),
                ),
                SizedBox(
                  width: 358.w,
                  child: const Divider(
                    thickness: 1,
                    color: primary_10,
                  ),
                ),
              ],
            ),
          ),
          24.toColumnSizedBox(),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                // runAlignment: WrapAlignment.spaceBetween,
                spacing: 16,
                runSpacing: 16,
                children: List.generate(
                  savedItem.length,
                  (index) => Container(
                    height: 213.h,
                    width: 171.w,
                    padding: EdgeInsets.symmetric(horizontal: 4.5.w),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(savedItem[index]["image"]),
                        // image: AssetImage(savedItem[index]["image"]),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: BuildCardWidget(
                      height: 64.71.h, width: 162.w,
                      content: savedItem[index]["title"],
                      image: savedItem[index]["icon"],
                      time: savedItem[index]["time"],
                      // time: savedItem[index]["time2"],
                    ),
                  ),
                ),

                // },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildCardWidget extends StatelessWidget {
  const BuildCardWidget({
    Key? key,
    required this.image,
    required this.content,
    required this.time,
    this.width,
    this.height,
  }) : super(key: key);
  final String image, content, time;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: width ?? 180.w,
            height: height ?? 72.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff242424).withOpacity(0.6),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(4.w, 4.h, 11.34.w, 6.0.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        content,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.7.sp,
                            color: const Color(0xffFFFFFF)),
                      ),
                      Image.asset(image),
                    ],
                  ),
                  // SizedBox(height: 8.h),
                  Text(
                    time,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

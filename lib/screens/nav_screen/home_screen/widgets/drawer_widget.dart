import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerWidget extends StatefulWidget {
  DrawerWidget({
    super.key,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

int selectedItem = -1;

class _DrawerWidgetState extends State<DrawerWidget> {
  List<Map<String, dynamic>> drawerItem = [
    {"icon": Assets.icons.svgArticles.svg(), "title": "Articles"},
    {"icon": Assets.icons.svgNewsletter.svg(), "title": "Newsletter"},
    {"icon": Assets.icons.svgChats.svg(), "title": "Chats"},
    {"icon": Assets.icons.svgFaq.svg(), "title": "FAQ"},
    {"icon": Assets.icons.svgHelp.svg(), "title": "Help"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(16.r),
            ),
          ),
          child: Column(
            children: [
              72.toColumnSizedBox(),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Row(
                  children: [
                    Assets.images.profilePix.image(
                      width: 44.w,
                      height: 44.w,
                    ),
                    8.toRowSizedBox(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Miracle Oshadare',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: black_10,
                          ),
                        ),
                        Text(
                          '@miracool_',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: black_05,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              51.toColumnSizedBox(),
              Expanded(
                child: ListView.separated(
                  itemCount: drawerItem.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedItem == index
                              ? primary_10
                              : Colors.transparent,
                          borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(20),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 21.w, vertical: 19.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                drawerItem[index]["icon"],
                                10.toRowSizedBox(),
                                Text(
                                  drawerItem[index]["title"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.sp,
                                    color: black_05,
                                  ),
                                ),
                              ],
                            ),
                            Assets.icons.svgForward.svg(),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 8.h,
                  ),
                ),
              ),
              // 282.toColumnSizedBox(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18.w),
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                height: 60.h,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(31),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign Out',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: white_grey_07,
                      ),
                    ),
                    Assets.icons.signOut.svg(),
                  ],
                ),
              ),
              48.toColumnSizedBox(),
            ],
          )),
    );
  }
}

import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../domain/model/card_item.dart';
import 'build_cards_popular_recipies.dart';

class CategoriesAndPopularRecipiesWidget extends StatelessWidget {
  const CategoriesAndPopularRecipiesWidget({
    super.key,
    required TabController tabController,
    required List<String> categories,
    required this.items,
  })  : _tabController = tabController,
        _categories = categories;

  final TabController _tabController;
  final List<String> _categories;
  final List<CardItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Text(
            'Categories',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        8.toColumnSizedBox(),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 24.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TabBar(
                unselectedLabelColor: const Color(0xffFAFAFA),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: secondary_100,
                // overlayColor: MaterialStatePropertyAll(kBlack),
                // indicatorPadding: EdgeInsets.symmetric(horizontal: 8.w),
                labelPadding: EdgeInsets.symmetric(horizontal: 10.w),

                indicator: BoxDecoration(
                  color: secondary_100,
                  borderRadius: BorderRadius.circular(4.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(.12),
                      blurRadius: 30,
                      spreadRadius: 5,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                isScrollable: true,
                dividerColor: kPrimaryColor,
                controller: _tabController,
                tabs: _categories
                    .map(
                      (tabTitle) => Tab(
                        // text: tabTitle,
                        child: Container(
                            // width: 78.w,

                            margin: EdgeInsets.only(right: 8.w, left: 8.w),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              // color: const Color(0xffFAFAFA),
                              borderRadius: BorderRadius.circular(4.r),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xff000000).withOpacity(.12),
                                  blurRadius: 30,
                                  spreadRadius: 5,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                tabTitle,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 9, color: black_10),
                              ),
                            )),
                      ),
                    )
                    .toList(),
              ),
            ),
            Positioned(
              right: 16.w,
              child: Container(
                width: 10.w,
                height: 10.w,
                // padding: EdgeInsets.all(3.64.w),
                decoration: const BoxDecoration(
                  color: Color(0xff212121),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Assets.icons.svgForward.svg(color: white_grey_01),
                  ),
                ),
              ),
            )
          ],
        ),
        // const CategoriesItemsWidget(),
        16.toColumnSizedBox(),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Popular Recipes',
            style: TextStyle(
              color: white_grey_10,
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
          ),
        ),
        8.toColumnSizedBox(),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: List.generate(
              _categories.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 237,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          separatorBuilder: (context, _) => const SizedBox(
                            width: 20,
                          ),
                          itemBuilder: (context, index) => Container(
                            height: 237,
                            width: 190,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(items[index].image)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: BuildCardWidget(
                              content: items[index].content,
                              image: Assets.images.saved.path,
                              time: items[index].time,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 237,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          separatorBuilder: (context, _) => const SizedBox(
                            width: 20,
                          ),
                          itemBuilder: (context, index) => Container(
                            height: 237,
                            width: 190,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(items[index].image)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: BuildCardWidget(
                              content: items[index].content,
                              image: Assets.images.saved.path,
                              time: items[index].time,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'domain/model/card_item.dart';
import 'widgets/categories_widget.dart';
import 'widgets/drawer_widget.dart';
import 'widgets/new_feed_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> _categories = [
    'All',
    'Diet Type',
    'Day Time',
    'Preparation Time',
    'Drink Type',
    'More'
  ];
  @override
  void initState() {
    _tabController = TabController(length: _categories.length, vsync: this);
    super.initState();
  }

  final List<CardItem> items = [
    const CardItem(
        image: 'assets/images/food_1.png',
        content: 'Pasta with \nshrimp sauce',
        time: '30 Mins | 2 Serving'),
    const CardItem(
        image: 'assets/images/food_3.png',
        content: 'Basmati rice \nwith egg sauce',
        time: '45 Mins | 2 Serving'),
    const CardItem(
        image: 'assets/images/food_1.png',
        content: 'Pasta with \nshrimp sauce',
        time: '30 Mins | 2 Serving'),
    const CardItem(
        image: 'assets/images/food_4.png',
        content: 'Basmati rice \nwith egg sauce',
        time: '45 Mins | 2 Serving'),
    const CardItem(
        image: 'assets/images/food_1.png',
        content: 'Pasta with \nshrimp sauce',
        time: '30 Mins | 2 Serving'),
    const CardItem(
        image: 'assets/images/food_4.png',
        content: 'Basmati rice \nwith egg sauce',
        time: '45 Mins | 2 Serving'),
    const CardItem(
        image: 'assets/images/food_1.png',
        content: 'Pasta with \nshrimp sauce',
        time: '30 Mins | 2 Serving'),
    const CardItem(
        image: 'assets/images/food_3.png',
        content: 'Basmati rice \nwith egg sauce',
        time: '45 Mins | 2 Serving'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          48.75.toColumnSizedBox(),
          Padding(
            padding: EdgeInsets.only(left: 18.0.w, right: 18.25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        child: Assets.icons.svgMenuIcon.svg()),
                    14.toRowSizedBox(),
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: kPrimaryColor,
                          ),
                        ),
                        Text(
                          'Miracle',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: black_10),
                        ),
                      ],
                    ),
                    // const SizedBox(width: 14,),
                  ],
                ),
                Assets.icons.svgNotification.svg(),
              ],
            ),
          ),
          29.toColumnSizedBox(),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: const Text(
              'What would you like to cook?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontFamily: 'Poppins',
                color: black_10,
              ),
            ),
          ),
          8.toColumnSizedBox(),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16),
            child: SizedBox(
              height: 50.h,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xfff0f0f0),
                    hintText: 'Fried yam and sauce',
                    suffixIcon: const Icon(Icons.search_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: black_02),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const NewFeedsWidget(),
          16.toColumnSizedBox(),
          Expanded(
            child: CategoriesAndPopularRecipiesWidget(
              tabController: _tabController,
              categories: _categories,
              items: items,
            ),
          ),
          8.toColumnSizedBox(),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}

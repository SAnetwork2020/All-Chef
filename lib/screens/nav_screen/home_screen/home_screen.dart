import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);
  static final List<String> _categories = [
    'All',
    'Diet Type',
    'Day Time',
    'Preparation Time',
    'Drink Type',
    'More'
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedCategories = 0;
  // void isSelected(int index){
  //   setState((){
  //     _selectedCategories = !_selectedCategories;
  //   });
  // }
  // bool _selectedCategories = false;

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
      body: SafeArea(
        child: Column(
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
                      Assets.icons.svgMenuIcon.svg(),
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
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: const Text('Feeds',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: black_10)),
            ),
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
            categories_items(),
            Text(
              'Popular Recipes',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.merge(const TextStyle(color: black_10)),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
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
                          child: buildCard(
                            content: items[index].content,
                            image: items[index].image,
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
                          child: buildCard(
                            content: items[index].content,
                            image: items[index].image,
                            time: items[index].time,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categories_items() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 24,
            width: 300,
            child: ListView.builder(
              itemCount: HomeScreen._categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () => setState(() {
                  _selectedCategories = index;
                }),
                child: Container(
                    height: 24.h,
                    width: 78.w,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: _selectedCategories == index
                          ? secondary_100
                          : const Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(.12),
                          blurRadius: 30,
                          spreadRadius: 5,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text(
                      HomeScreen._categories[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1?.merge(
                          const TextStyle(fontSize: 9, color: black_10)),
                    ))),
              ),
            ),
          ),
        ],
      ),
    );
  }
  // Container(
  //   height: 10,
  //   width: 10,
  //   decoration: const BoxDecoration(
  //       color: Color(0xff212121), shape: BoxShape.circle),
  //   child: InkWell(
  //     child: Assets.icons.listForward.svg(),
  //   ),
  // ),
}

class CardItem {
  final String image, content, time;
  const CardItem(
      {required this.image, required this.content, required this.time});
}

class buildCard extends StatelessWidget {
  const buildCard({
    Key? key,
    required this.image,
    required this.content,
    required this.time,
  }) : super(key: key);
  final String image, content, time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: 180,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff242424).withOpacity(0.6),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 11.34, 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        content,
                        style: Theme.of(context).textTheme.button?.merge(
                            const TextStyle(
                                fontSize: 13, color: Color(0xffFFFFFF))),
                      ),
                      Image.asset('assets/images/saved.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    time,
                    style: Theme.of(context).textTheme.button?.merge(
                        const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFFFF))),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

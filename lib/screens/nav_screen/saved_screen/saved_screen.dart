import 'package:all_chef/colors.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SavedScreen extends StatefulWidget {
  const SavedScreen({
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
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      padding: EdgeInsets.all(0),
                      // splashRadius: 2,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Assets.icons.svgMenuIcon.svg(),
                    );
                  },
                ),
                // const SizedBox(width: 14,),
                const Text(
                  'Good morning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            Assets.icons.svgNotification.svg()
            // Image.asset('assets/images/carbon_notification.png',height: 21.75,
            //   width: 19.5,)
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 48.0, bottom: 29),
          child: Text(
            'Miracle',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 24, color: black_10),
          ),
        ),
        const Text('What would you like to cook?',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: 'Poppins',
              color: black_10,
            )),
        const SizedBox(
          height: 8,
        ),
        TextField(
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
        const SizedBox(
          height: 14,
        ),
        const Text('Feeds',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontFamily: 'Poppins',
                color: black_10)),
        const SizedBox(
          height: 8,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Categories',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.merge(const TextStyle(color: black_10)),
        ),
        categories_items(),
        const SizedBox(
          height: 16,
        ),
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
    );
  }

  Center categories_items() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 24,
            width: 400,
            child: ListView.builder(
              itemCount: SavedScreen._categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () => setState(() {
                  _selectedCategories = index;
                }),
                child: Container(
                    height: 24,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 18.0),
                      child: Center(
                          child: Text(
                        SavedScreen._categories[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1?.merge(
                            const TextStyle(fontSize: 9, color: black_10)),
                      )),
                    )),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
                color: Color(0xff212121), shape: BoxShape.circle),
            child: InkWell(
                child: Center(
                    child: SvgPicture.asset('assets/icons/list_forward.svg'))),
          ),
        ],
      ),
    );
  }
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

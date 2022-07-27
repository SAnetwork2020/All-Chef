import 'package:first_challenge/components/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_body_contents.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/homescreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget>_pages = [
    Home_Page(),
    const Text('Saved'),
    const Text('Create'),
    const Text('Shop'),
    const Text('Profile'),
  ];
  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: _pages[_selectedIndex],
              ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ));
    }



  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
          showUnselectedLabels: true, selectedFontSize: 10,
        unselectedFontSize: 10, selectedLabelStyle: const TextStyle(fontWeight:
    FontWeight.w700), unselectedLabelStyle: const TextStyle(fontWeight:
    FontWeight.w400),
          selectedItemColor: kPrimaryColor, unselectedItemColor: black_03,
          items: [
            BottomNavigationBarItem(icon: SvgPicture.asset
              ('assets/icons/svg_home_nona.svg'), activeIcon: SvgPicture.asset
              ('assets/icons/svg_home.svg'),
                label: 'Home'),
            BottomNavigationBarItem(icon: SvgPicture.asset
              ('assets/icons/svg_saved.svg'),activeIcon: SvgPicture.asset
              ('assets/icons/svg_saved_a.svg'),
                label: 'Saved'),
            BottomNavigationBarItem(icon: SvgPicture.asset
              ('assets/icons/svg_create.svg'),activeIcon: SvgPicture.asset
              ('assets/icons/svg_create_a.svg'),
                label: 'Create'),
            BottomNavigationBarItem(icon: SvgPicture.asset
              ('assets/icons/svg_shop.svg'),activeIcon: SvgPicture.asset
              ('assets/icons/svg_shop_a.svg'),
                label: 'Shop'),
            BottomNavigationBarItem(icon: SvgPicture.asset
              ('assets/icons/svg_saved.svg'),activeIcon: SvgPicture.asset
              ('assets/icons/svg_saved_a.svg'),
                label: 'Profile'),
          ]);
  }
  }



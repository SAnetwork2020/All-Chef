import 'package:first_challenge/components/color_constants.dart';
import 'package:first_challenge/components/customSuffixSvgIcon.dart';
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
      drawer: NavigationDrawer(),),
    );
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

  class NavigationDrawer extends StatelessWidget {
    const NavigationDrawer({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
    }

    buildHeader(BuildContext context) =>Container(
        // padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,
        // color: Colors.greenAccent,
      child: Padding(
        padding: const EdgeInsets.only(top:72, left:40.0),
        child: Row(
          children: [
            Container(
                height: 45,width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(image: AssetImage('assets/images/profile_pix.png'))
                ),
              ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              Text('Miracle Oshadare', style: Theme.of(context).textTheme
                  .subtitle1?.merge(const TextStyle(fontSize: 13, fontWeight:
              FontWeight.w500, color: black_10)),),
              Text('@miracool_', style: Theme.of(context).textTheme
                  .subtitle1?.merge(const TextStyle(fontSize: 13, color: black_05)
              ),),
            ],
        ),
        ]),
      ),
    );

    buildMenuItems(BuildContext context) =>
        Container(padding: EdgeInsets.all(16),
          child: Wrap(
            runSpacing: 10,
            children:  [
              ListTile(
                leading: const customSufixSvg(SvgIcon: 'assets/icons/svg_articles.svg'),
                title: Text('Articles', style: Theme.of(context).textTheme
                    .subtitle1?.merge(const TextStyle(fontSize: 18)),),
                trailing: const customSufixSvg(SvgIcon: 'assets/icons/svg_forward.svg'),
                onTap: (){},
              ),
              ListTile(
                leading: const customSufixSvg(SvgIcon: 'assets/icons/svg_newsle'
                    'tter.svg'),
                title: Text('Newsletter', style: Theme.of(context).textTheme
                    .subtitle1?.merge(const TextStyle(fontSize: 18)),),
                trailing: const customSufixSvg(SvgIcon: 'assets/icons/svg_forward.svg'),
                onTap: (){},
              ),
              ListTile(
                leading: const customSufixSvg(SvgIcon: 'assets/icons/svg_chats.svg'),
                title: Text('Chats', style: Theme.of(context).textTheme
                    .subtitle1?.merge(const TextStyle(fontSize: 18)),),
                trailing: const customSufixSvg(SvgIcon: 'assets/icons/svg_forward.svg'),
                onTap: (){},
              ),
              ListTile(
                leading: const customSufixSvg(SvgIcon: 'assets/icons/svg_faq.svg'),
                title: Text('FAQ', style: Theme.of(context).textTheme
                    .subtitle1?.merge(const TextStyle(fontSize: 18)),),
                trailing: const customSufixSvg(SvgIcon: 'assets/icons/svg_forward.svg'),
                onTap: (){},
              ),
              ListTile(
                leading: const customSufixSvg(SvgIcon: 'assets/icons/svg_help.svg'),
                title: Text('Help', style: Theme.of(context).textTheme
                    .subtitle1?.merge(const TextStyle(fontSize: 18)),),
                trailing: const customSufixSvg(SvgIcon: 'assets/icons/svg_forward.svg'),
                onTap: (){},
              ),
              SizedBox(height: 350),
              Container(
                width: 249,height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31),
                  color: kPrimaryColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign Out', style: Theme.of(context).textTheme
                        .subtitle1?.merge(const TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: white_grey_01)
                    ),),
                    SizedBox(width: 108,),
                    customSufixSvg(SvgIcon: 'assets/icons/svg_uil_sign-out-alt.svg')
                  ],
                ),
              ),

            ],
          ),
        );
  }
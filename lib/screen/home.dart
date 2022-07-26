import 'package:first_challenge/components/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/homescreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final kTextStyle = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 16, fontFamily: 'Poppins',
    color: kPrimaryColor
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    Image.asset('assets/images/menu.png', height: 14, width: 20,),
                    SizedBox(width: 14,),
                    Text('Good morning', textAlign: TextAlign.center, style: kTextStyle,),

                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //
                    //   ],
                    // ),
                  ],
                ),
                Image.asset('assets/images/carbon_notification.png',height: 21.75,
                  width: 19.5,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34.0, bottom: 29),
              child: Text('Miracle', textAlign: TextAlign.center, style: kTextStyle
                  .copyWith(fontWeight: FontWeight.w700,fontSize: 24, color:
              black_10),),
            ),
            Text('What would you like to cook?', style: kTextStyle.copyWith
              (color: black_10, fontSize: 12, fontWeight: FontWeight.w400),),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xfff0f0f0),
                hintText: 'Fried yam and sauce',
                suffixIcon: Icon(Icons.search_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: black_02),
                )
              ),
            ),
            SizedBox(height: 14,),
            Text('Feeds', style: kTextStyle.copyWith
              (color: black_10, fontSize: 12, fontWeight: FontWeight.w400),),
            SizedBox(height: 8,),


                // Positioned(
                //   child: Container(
                //     height:  80, width: 458,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       color: secondary_300,
                //     ),
                //   ),
                // ),
                // Positioned(
                //   child: Container(
                //     height:  80, width: 442,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       color: error_20,
                //     ),
                //   ),
                // ),
                ],
              ),
            ),
    ));
  }
}

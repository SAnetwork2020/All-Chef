import 'package:first_challenge/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../screen/log_in_and_sign_up.dart';

class sTack extends StatefulWidget {
  static String routeName = '/stack';

  const sTack({Key? key}) : super(key: key);

  @override
  State<sTack> createState() => _sTackState();
}

class _sTackState extends State<sTack> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2);
            },
            controller: controller,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/unsplash_02.png'),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 472,
                    ),
                    Text(
                      'Personalised \nRecipe Discovery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Popp'
                            'ins',
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      'Tell us your preferences and we’ll only \nserve you '
                      'delicious recipe ideas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Popp'
                            'ins',
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/unsplash_03.png'),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 472,
                    ),
                    Text(
                      'Cooking Experience\n Like a Chef',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      'Let’s make a delicious meal with the \nbest recipe for'
                      ' the family',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Popp'
                            'ins',
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/unsplash_04.png'),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 472,
                    ),
                    Text(
                      'Explore and Ignite \nYour Inner Chef',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Popp'
                            'ins',
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      'Discover more than 1200 recipes in your\n hand  and '
                      'cook it easily',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Popp'
                            'ins',
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: isLastPage? Column(
                  children: [
                    SizedBox(
                      height: 64,
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: kPrimaryColor.withOpacity(.4),
                        activeDotColor: kPrimaryColor,
                      ),
                      onDotClicked: (index) {
                        controller.animateToPage(index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    InkWell(
                      onTap: () {
                        // controller.nextPage(
                        //     duration: Duration(milliseconds: 500),
                        //     curve: Curves.easeInOut);
                        Navigator.pushReplacement(context, MaterialPageRoute
                        (builder: (context)=>SignIn_SignUp()));
                      },
                      child: Container(
                          height: 60,
                          width: 358,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kPrimaryColor,
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                          )),
                    ),
                    // SizedBox(
                    //   height: 83,
                    // ),
                    // TextButton(
                    //   onPressed: () {
                    //     controller.jumpToPage(2);
                    //   },
                    //   child: Text(
                    //     'Skip',
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(
                    //       color: kPrimaryColor,
                    //       fontWeight: FontWeight.w500,
                    //       fontFamily: 'Poppins',
                    //       fontSize: 18,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 83,
                    ),
                  ],
                ) : Column(
                  children: [
                    SizedBox(
                      height: 64,
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: kPrimaryColor.withOpacity(.4),
                        activeDotColor: kPrimaryColor,
                      ),
                      onDotClicked: (index) {
                        controller.animateToPage(index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: Container(
                          height: 60,
                          width: 358,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kPrimaryColor,
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 68,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );

    // Container(
    //     alignment: Alignment.center,
    //     padding: EdgeInsets.all(32),
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //           image: AssetImage('assets/images/unsplash_04.png',),
    //           fit: BoxFit.fill
    //       ),
    //     ),
    //     child: Scaffold(
    //       backgroundColor: Colors.transparent,
    //     body:Column(
    //         children: [TextFormField(
    //           decoration: InputDecoration(
    //             hintText: 'Enter your data here'
    //           ),
    //         ),
    //           Container(
    //             width: 358, height: 60,
    //             decoration: BoxDecoration(
    //               color: kPrimaryColor,
    //               borderRadius: BorderRadius.circular(8),
    //             ),child: Center(
    //               child: Text('Get Started', textAlign: TextAlign.center, style:
    //           TextStyle(color:
    //           Colors.white, fontWeight: FontWeight.w700),),
    //             ),
    //           ),
    //         ],
    //       ),
    //     )
    //     // Stack(
    //     //   children: [
    //     //     // Image.asset('assets/images/unsplash_04.png',
    //     //     // fit: BoxFit.cover,
    //     //     // height: 200, width: 120,),
    //     //     Positioned(
    //     //       top: 227,
    //     //       left: 40,
    //     //       width: 338,
    //     //       height: 80,
    //     //       child: Container(
    //     //         decoration: BoxDecoration(
    //     //             color: Color(0xffF8AAAA),
    //     //             borderRadius: BorderRadius.circular(16)
    //     //         ),
    //     //
    //     //       ),),
    //     //     Positioned(
    //     //       top: 231,
    //     //       left: 40,
    //     //       width: 346,
    //     //       height: 80,
    //     //       child: Container(
    //     //         decoration: BoxDecoration(
    //     //             color: Color(0xff88C7C6),
    //     //             borderRadius: BorderRadius.circular(16)
    //     //         ),
    //     //
    //     //       ),),
    //     //     Positioned(
    //     //       top: 235,
    //     //       left: 40,
    //     //       width: 358,
    //     //       height: 80,
    //     //       child: Container(
    //     //         decoration: BoxDecoration(
    //     //             color: Color(0xffFF8F2B),
    //     //             borderRadius: BorderRadius.circular(16)
    //     //         ),
    //     //
    //     //       ),),
    //     //   ],
    //     // )
    // );
  }
}

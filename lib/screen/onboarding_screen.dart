import'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/constants.dart';

class OnBoardingScreen extends StatefulWidget {
  // static String routeName = '/OnBoardingScreen';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
final conta =  BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: kPrimaryColor,
    );


  final controller = PageController();
  int index = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
      backgroundColor: Colors.transparent,
      body:  Column(
        children: <Widget>[
          Stack(
            children:<Widget>[
              PageView.builder(
              itemCount: model_slides.length,
                itemBuilder: (context, index) => onboarding_contents(
                    // title: model_slides[index].title,
                    // desc: model_slides[index].desc,
                  image: model_slides[index].image,
                ),),
               Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: Color(0xffFF8F2B).withOpacity(.4),
                        activeDotColor: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 32,),
                  kPryBtn(text: 'Next'),
                  SizedBox(height: 32,),
                  TextButton(
                      onPressed: (){
                        controller.jumpToPage(2);
                      },
                      child: Text('Skip', textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Poppins', fontSize:
                        18, fontWeight: FontWeight.w500, color:
                        kPrimaryColor),)),
                  SizedBox(height: 65,),],
            ),
          ]
          ),
        ],
      )),
      );
    }
  }

class Model {
  // final String title, desc;
  final String image;
  Model({required this.image});
}

final List<Model> model_slides = [
  Model(
    // title:'Personalised \nRecipe Discovery',
    // desc: 'Tell us your preferences and we’ll only \nserve you delicious '
    //     'recipe ideas',
    image: 'assets/images/unsplash_02.png'
  ),

  Model(
    // title:'Cooking Experience \nLike a Chef',
    // desc: 'Let’s make a delicious meal with the \nbest recipe for the '
    //     'family',
    image: 'assets/images/unsplash_03.png'
  ),

  Model(
    // title:'Explore and Ignite \nYour Inner Chef',
    // desc: 'Discover more than 1200 recipes in your \nhand  and cook it '
    //     'easily',
    image: 'assets/images/unsplash_04.png'
  ),
];







class onboarding_contents extends StatelessWidget {
  const onboarding_contents({
    Key? key, required this.image,
    // required this.desc,
  }) : super(key: key);
// final String title, desc;
final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(image),
      Text(
        'title',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Poppins',
            fontWeight: FontWeight.w700, fontSize: 28,
            color: kPrimaryColor),),
      Text('desc',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Poppins',
          fontWeight: FontWeight.w400, fontSize: 13,
          color: Color(0xffFEFEFE),),),]
    );
  }
}

class kPryBtn extends StatelessWidget {
  const kPryBtn({
    Key? key, required this.text,
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 56, width: 358,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Poppins',
              fontWeight: FontWeight.w500, fontSize: 18,
              color: Colors.white,),),
        ),
      ),
    );
  }
}













// Container(
// child: Stack(
// fit: StackFit.expand,
// children: [
// Image.asset('assets/images/unsplash_02.png',
// fit: BoxFit.cover,
// color: Color(0xff1AFF8F2B),
// colorBlendMode: BlendMode.colorBurn,),

// ],
//
// ),
// ),
// Container(
// child: Stack(
// fit: StackFit.expand,
// children: [
// Image.asset('assets/images/unsplash_03.png',
// fit: BoxFit.cover,),
//
// ],
//
// ),
// ),
// Container(
// child: Stack(
// fit: StackFit.expand,
// children: [
// Image.asset('assets/images/unsplash_04.png',
// fit: BoxFit.cover,
// ),
//
// Text('Explore and Ignite \nYour Inner Chef',
// textAlign: TextAlign.center,
// style: TextStyle(fontFamily: 'Poppins',
// fontWeight: FontWeight.w400, fontSize: 13,
// color: Color(0xffFEFEFE)) ,),
//
// Text('Discover more than 1200 recipes in your \nhand  and '
// 'cook it easily',
// textAlign: TextAlign.center,
// style: TextStyle(fontFamily: 'Poppins',
// fontWeight: FontWeight.w700, fontSize: 28,
// color: kPrimaryColor),)
// ],
//
// ),
// ),



//
// PageView(
// controller: controller,
// children: <Container>[
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// SizedBox(height: 115,),
// Center(
// child: SmoothPageIndicator(
// controller: controller,
// count: 3,
// ),
// ),
// kPryBtn(text: 'Next',),
// SizedBox(height: 115,),
// ],
// )
// ),
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Text('Cooking Experience \nLike a Chef',
// textAlign: TextAlign.center,
// style: TextStyle(fontFamily: 'Poppins',
// fontWeight: FontWeight.w700, fontSize: 28,
// color: kPrimaryColor),),
// Text('Let’s make a delicious meal with the \nbest recipe for the '
// 'family',
// textAlign: TextAlign.center,
// style: TextStyle(fontFamily: 'Poppins',
// fontWeight: FontWeight.w400, fontSize: 13,
// color: Color(0xffFEFEFE),),),
// SizedBox(height: 115,),],
// )
// ),
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Text('Explore and Ignite \nYour Inner Chef',
// textAlign: TextAlign.center,
// style: TextStyle(fontFamily: 'Poppins',
// fontWeight: FontWeight.w700, fontSize: 28,
// color: kPrimaryColor),),
// Text('Discover more than 1200 recipes in your \nhand  and cook it '
// 'easily',
// textAlign: TextAlign.center,
// style: TextStyle(fontFamily: 'Poppins',
// fontWeight: FontWeight.w400, fontSize: 13,
// color: Color(0xffFEFEFE),),),
// SizedBox(height: 115,),],),
// ),
// ],
//
// )











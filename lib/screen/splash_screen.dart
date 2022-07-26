import 'package:first_challenge/screen/onboarding_screen.dart';
import'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/SplashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gohome();
  }
_gohome()async{
    await Future.delayed(Duration(milliseconds: 3500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset('assets/images/unsplash_01.png',
              fit: BoxFit.cover,),
              Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/white_logo.png'),
                    Text(
                        'All Chef',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Poppins',
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                      color: Colors.white),
                    ),
                    Text(
                        'Ignite Your Inner Chef',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                      color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

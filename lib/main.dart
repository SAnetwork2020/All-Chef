import 'package:first_challenge/components/onboarding_body.dart';
import 'package:first_challenge/routes.dart';
import 'package:first_challenge/screen/customize_preference.dart';
import 'package:first_challenge/screen/home.dart';
import 'package:first_challenge/screen/log_in_and_sign_up.dart';
import 'package:first_challenge/screen/login.dart';
import 'package:first_challenge/screen/sign_up.dart';
import 'package:first_challenge/screen/splash_screen.dart';
import 'package:first_challenge/screen/verify_account.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // textTheme: const TextTheme(
        //   //Header 1
        //   headline1: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight
        //       .w400, fontSize: 32, height: 40),
        //
        //   //Header 1 Bold
        //   headline2: TextStyle(fontFamily: 'Poppins', fontWeight:
        // FontWeight
        //       .w700, fontSize: 32, height: 40),
        //
        //   //Header 2
        //   headline3: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w400, fontSize: 24, height: 40),
        //
        //   //Header 2 Bold
        //   headline4: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w700, fontSize: 24, height: 40),
        //
        //   //Header 3
        //   headline5: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w500, fontSize: 16, height: 24),
        //
        //   //Header 3 Bold
        //   headline6: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w700, fontSize: 16, height: 24),
        //
        //   //Body Large
        //   bodyText1: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w400, fontSize: 14, height: 24),
        //
        //   //Body Large Bold
        //   bodyText2: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w700, fontSize: 14, height: 24),
        //
        //   //Body small
        //   subtitle1: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w400, fontSize: 12, height: 16),
        //
        //   //Body small Bold
        //   subtitle2: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w700, fontSize: 12, height: 16),
        //
        //   //Button
        //   button: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w500, fontSize: 10, height: 16),
        //
        //   //Caption
        //   caption: TextStyle(fontFamily: 'Poppins', fontWeight:
        //   FontWeight
        //       .w400, fontSize: 8, height: 16),
        // ),
        primarySwatch: Colors.blue,
      ),
      // home: SignIn_SignUp(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

import 'package:first_challenge/screen/customize_preference.dart';
import 'package:first_challenge/screen/home.dart';
import 'package:first_challenge/screen/log_in_and_sign_up.dart';
import 'package:first_challenge/screen/login.dart';
import 'package:first_challenge/screen/onboarding_screen.dart';
import 'package:first_challenge/screen/sign_up.dart';
import 'package:first_challenge/screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'components/onboarding_body.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  // OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  sTack.routeName: (context) => sTack(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SignUpPage.routeName: (context) => SignUpPage(),
  CustomizePreference.routeName: (context) => CustomizePreference(),
  LogInPage.routeName: (context) => LogInPage(),
  CustomizePreference.routeName: (context) => CustomizePreference(),
};
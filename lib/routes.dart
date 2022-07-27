import 'package:first_challenge/screen/customize_preference.dart';
import 'package:first_challenge/screen/home/home.dart';
import 'package:first_challenge/screen/login.dart';
import 'package:first_challenge/screen/sign_up.dart';
import 'package:first_challenge/screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'components/onboarding_body.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  // OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  sTack.routeName: (context) => const sTack(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  SignUpPage.routeName: (context) => const SignUpPage(),
  CustomizePreference.routeName: (context) => const CustomizePreference(),
  LogInPage.routeName: (context) => const LogInPage(),
  CustomizePreference.routeName: (context) => const CustomizePreference(),
};
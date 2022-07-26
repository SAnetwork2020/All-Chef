import 'package:first_challenge/screen/home.dart';
import 'package:first_challenge/screen/onboarding_screen.dart';
import 'package:first_challenge/screen/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
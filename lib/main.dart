import 'package:first_challenge/routes.dart';
import 'package:first_challenge/screen/splash_screen.dart';
import 'package:first_challenge/theme.dart';
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
      theme: theme(),
      // home: HomeScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }

}

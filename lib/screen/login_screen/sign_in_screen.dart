import 'package:first_challenge/screen/login_screen/body.dart';
import'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = 'sign in screen';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: Body(),
    ));
  }
}

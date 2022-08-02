import 'dart:ffi';

import 'package:first_challenge/sign_in_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatelessWidget {
  // const FormPage({Key? key}) : super(key: key);
final formKey=GlobalKey<FormState>();
String name="";
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState>_scaffoldKey=GlobalKey<ScaffoldState>();
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
            body: form(formKey: formKey, height: height, scaffoldKey: _scaffoldKey),
    ));
  }
}



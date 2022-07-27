import 'package:flutter/material.dart';

import 'components/color_constants.dart';

ThemeData theme(){
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
    fontFamily: 'Poppins',
    textTheme: textTheme(),
    primarySwatch: Colors.blue,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    //Header 1
    headline1: TextStyle(fontWeight: FontWeight
        .w400, fontSize: 32,),

    //Header 1 Bold
    headline2: TextStyle(fontWeight:
    FontWeight
        .w700, fontSize: 32,),

    //Header 2
    headline3: TextStyle(fontWeight:
    FontWeight
        .w400, fontSize: 24,),

    //Header 2 Bold
    headline4: TextStyle(fontWeight:
    FontWeight
        .w700, fontSize: 24,),

    //Header 3
    headline5: TextStyle(fontWeight:
    FontWeight
        .w500, fontSize: 16,),

    //Header 3 Bold
    headline6: TextStyle(fontWeight:
    FontWeight
        .w700, fontSize: 16,),

    //Body Large
    bodyText1: TextStyle(fontWeight:
    FontWeight
        .w400, fontSize: 14,),

    //Body Large Bold
    bodyText2: TextStyle(fontWeight:
    FontWeight
        .w700, fontSize: 14,),

    //Body small
    subtitle1: TextStyle(fontWeight:
    FontWeight
        .w400, fontSize: 12,),

    //Body small Bold
    subtitle2: TextStyle(fontWeight:
    FontWeight
        .w700, fontSize: 12,),

    //Button
    button: TextStyle(fontWeight:
    FontWeight
        .w500, fontSize: 10,),

    //Caption
    caption: TextStyle(fontWeight:
    FontWeight
        .w400, fontSize: 8,),
  );
}
InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: black_02),
    );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.fromLTRB(8, 13, 38, 13),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}
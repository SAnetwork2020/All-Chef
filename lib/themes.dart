import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: "Poppins",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.r),
    borderSide: const BorderSide(color: black_02),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    hintStyle: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      height: 24.toLineHeight(16),
      color: white_grey_09,
    ),
    fillColor: const Color(0xffF0F0F0),
    filled: true,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 8.w,
      vertical: 20.h,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    // systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarTextStyle: const TextTheme(
            titleLarge: TextStyle(fontSize: 16, color: Color(0xff8B8B8B)))
        .bodyMedium,
    titleTextStyle: const TextTheme(
            titleLarge: TextStyle(fontSize: 16, color: Color(0xff8B8B8B)))
        .titleLarge,
  );
}

import 'package:auto_route/auto_route.dart';
import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../../../routes/routes.gr.dart';
import '../../onboarding_screen/onboarding_screen.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isNotVisible = true;
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  40.toColumnSizedBox(),
                  Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp,
                      height: 49.toLineHeight(32),
                    ),
                  ),
                  8.toColumnSizedBox(),
                  Text(
                    "Create account to get started.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      height: 24.toLineHeight(16),
                    ),
                  ),
                  40.toColumnSizedBox(),
                  // 80.toColumnSizedBox(),
                  Text(
                    "Full Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      height: 24.toLineHeight(16),
                    ),
                  ),
                  8.toColumnSizedBox(),
                  TextFormField(
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "Please Enter your email";
                      } else {
                        return null;
                      }
                      // return email != null &&
                      // !EmailValidator.validate(email)
                      //     ? "Enter a valid email"
                      //     : null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      color: white_grey_09,
                      fontSize: 16.sp,
                      height: 25.toLineHeight(16),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child:
                            // SvgPicture.asset(
                            Assets.icons.email.svg(),
                      ),
                      hintText: "Enter your full Name",
                    ),
                  ),
                  16.toColumnSizedBox(),
                  Text(
                    "Email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      height: 24.toLineHeight(16),
                    ),
                  ),
                  8.toColumnSizedBox(),
                  TextFormField(
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "Please Enter your email";
                      } else {
                        return null;
                      }
                      // return email != null &&
                      // !EmailValidator.validate(email)
                      //     ? "Enter a valid email"
                      //     : null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      color: white_grey_09,
                      fontSize: 16.sp,
                      height: 25.toLineHeight(16),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child:
                            // SvgPicture.asset(
                            Assets.icons.email.svg(),
                      ),
                      hintText: "Enter your email",
                    ),
                  ),
                  16.toColumnSizedBox(),
                  Text(
                    "Full Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      height: 24.toLineHeight(16),
                    ),
                  ),
                  8.toColumnSizedBox(),
                  TextFormField(
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "Please Enter your email";
                      } else {
                        return null;
                      }
                      // return email != null &&
                      // !EmailValidator.validate(email)
                      //     ? "Enter a valid email"
                      //     : null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      color: white_grey_09,
                      fontSize: 16.sp,
                      height: 25.toLineHeight(16),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child:
                            // SvgPicture.asset(
                            Assets.icons.email.svg(),
                      ),
                      hintText: "Enter your full Name",
                    ),
                  ),
                  16.toColumnSizedBox(),
                  Text(
                    "Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      height: 24.toLineHeight(16),
                    ),
                  ),
                  8.toColumnSizedBox(),
                  TextFormField(
                    obscureText: _isNotVisible,
                    autofocus: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.send,
                    obscuringCharacter: "*",
                    validator: (value) {
                      return value != null && value.length < 8
                          ? "Password must be a min. 8 characters"
                          : null;
                    },
                    style: TextStyle(
                      color: white_grey_09,
                      fontSize: 16.sp,
                      height: 25.toLineHeight(16),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      suffixIcon: IconButton(
                        icon: _isNotVisible
                            ? Assets.icons.eyeClosed.svg(
                                color: white_grey_09,
                              )
                            : Assets.icons.eyeOpen.svg(
                                color: white_grey_09,
                              ),
                        onPressed: () {
                          setState(() {
                            _isNotVisible = !_isNotVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  8.toColumnSizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Text(
                            "Remember me",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              height: 17.6.toLineHeight(12),
                              letterSpacing: .25,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kPrimaryColor,
                          fontSize: 14.sp,
                          letterSpacing: .25,
                        ),
                      ),
                    ],
                  ),
                  43.toColumnSizedBox(),
                  DefaultButton(
                    onTap: () {
                      context.pushRoute(const VerifyAccountRoute());
                    },
                    text: 'Sign Up',
                  ),
                  16.toColumnSizedBox(),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                                color: black_10,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.svgGoogle.svg(),
                          9.67.toRowSizedBox(),
                          Text(
                            "Sign up with Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: black_10,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  16.toColumnSizedBox(),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                                color: black_10,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.svgApple.svg(),
                          9.67.toRowSizedBox(),
                          Text(
                            "Sign up with Apple",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: black_10,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  16.toColumnSizedBox(),
                  Center(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          height: 17.55.toLineHeight(12),
                          fontWeight: FontWeight.w300,
                          letterSpacing: .25,
                          color: black_03,
                        ),
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                            text: "Sign In",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: black_10,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => context.pushRoute(
                                    const LoginRoute(),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  100.toColumnSizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // void gotoVerifyScreen(BuildContext context) {
  // context.pushRoute(const VerifyAccountRoute());
  // _formKey.currentState!.validate();
  // Future.delayed(const Duration(seconds: 10), () {
  //   context.pushRoute(const VerifyAccountRoute());
  // });
  // loadingDialog(context);
  // }

  Future<dynamic> loadingDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        Future.delayed(const Duration(seconds: 10), () {
          context.pushRoute(const VerifyAccountRoute());
        });
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.white.withOpacity(.5),
                  strokeWidth: 6,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    kPrimaryColor,
                  ),
                ),
                16.toRowSizedBox(),
                Text(
                  "Pleas wait....",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor,
                    fontSize: 16.sp,
                    letterSpacing: .25,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

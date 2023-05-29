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
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    "Log In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp,
                      height: 49.toLineHeight(32),
                    ),
                  ),
                  8.toColumnSizedBox(),
                  Text(
                    "Welcome back Miracle! Log in to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      height: 24.toLineHeight(16),
                    ),
                  ),
                  72.toColumnSizedBox(),
                  Center(
                    child: Column(
                      children: [
                        Assets.icons.mainLogo.svg(),
                        Text(
                          "All Chef",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 33.23.sp,
                            color: kPrimaryColor,
                            height: 24.toLineHeight(16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  80.toColumnSizedBox(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                ?
                                // SvgPicture.asset(
                                Assets.icons.eyeClosed.svg(
                                    color: white_grey_09,
                                  )
                                :
                                // )
                                // :
                                // SvgPicture.asset(
                                Assets.icons.eyeOpen.svg(
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
                          _formKey.currentState!.validate();
                        },
                        text: 'Sign In',
                      ),
                      8.toColumnSizedBox(),
                      Center(
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            text: "Don't have an account yet? ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              height: 17.55.toLineHeight(12),
                              fontWeight: FontWeight.w300,
                              letterSpacing: .25,
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => context.pushRoute(
                                        const SignUpRoute(),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
}

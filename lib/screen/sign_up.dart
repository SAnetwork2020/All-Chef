import 'package:first_challenge/components/customSuffixSvgIcon.dart';
import 'package:first_challenge/screen/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../components/color_constants.dart';

class SignUpPage extends StatefulWidget {
  static String routeName = '/sign up';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 43,
                ),
                const Text('Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Create account to get started.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color:  Color(0xff494949)),
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Full Name',
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff121212)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffF0F0F0),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide( color: Color(0xffb6b6b6),
                                        style: BorderStyle.solid)
                                ),
                                hintText: 'Enter your full name', hintStyle: const TextStyle
                              (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                              fontSize: 16, color: Color(0xffAAAAAA),),
                                suffixIcon: const customSufixSvg(SvgIcon: 'assets/icons/svg_profile_login.svg'),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                )
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Email',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff121212)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffF0F0F0),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide( color: Color(0xffb6b6b6),
                                        style: BorderStyle.solid)
                                ),
                                hintText: 'Enter your email', hintStyle: const TextStyle
                              (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                              fontSize: 16, color: Color(0xffAAAAAA),),
                                suffixIcon: const customSufixSvg(SvgIcon: 'assets/icons/svg_mail.svg'),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                )
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Phone number',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff121212)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffF0F0F0),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide( color: Color(0xffb6b6b6),
                                        style: BorderStyle.solid)
                                ),
                                hintText: 'Enter your phone number', hintStyle:
                            const TextStyle
                              (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                              fontSize: 16, color: Color(0xffAAAAAA),),
                                suffixIcon: const customSufixSvg(SvgIcon: 'assets/icons/svg_phone_login.svg'),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                )
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Password',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff121212)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffF0F0F0),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide( color: Color(0xffb6b6b6),
                                        style: BorderStyle.solid)
                                ),
                                hintText: 'Enter your password', hintStyle: const TextStyle
                              (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                              fontSize: 16, color: Color(0xffAAAAAA),),
                                suffixIcon: const customSufixSvg(SvgIcon: 'assets/icons/svg_eye.svg'),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                )
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),

                          Column(
                            children: [
                              InkWell(
                                child:
                                Container(
                                  height:50, width: 450,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(child: Text('Sign Up', textAlign:
                                  TextAlign.center, style: Theme.of(context)
                                      .textTheme.headline5?.merge(const TextStyle(color: white_grey_07))
                                  ),),
                                ),),
                              const SizedBox(height: 16,),
                              InkWell(
                                child:
                                Container(
                                  height:50, width: 450,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: white_grey_07,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const customSufixSvg(SvgIcon: 'assets/icons/svg_google.svg'),
                                      Text('Sign Up with Google',
                                          textAlign:
                                          TextAlign.center, style: Theme.of(context)
                                              .textTheme.headline5?.merge(const TextStyle(color: black_10))
                                      ),
                                    ],
                                  ),
                                ),),
                              const SizedBox(height: 16,),
                              InkWell(
                                child:
                                Container(
                                  height:50, width: 450,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: white_grey_07,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const customSufixSvg(SvgIcon: 'assets/icons/svg_apple.svg'),
                                      Text('Sign Up with Apple',
                                          textAlign:
                                          TextAlign.center, style: Theme.of(context)
                                              .textTheme.headline5?.merge(const TextStyle(color: black_10))
                                      ),
                                    ],
                                  ),
                                ),),
                              const SizedBox(
                                height: 16,
                              ),

                              Text.rich(
                                TextSpan(children: [
                                  const TextSpan(
                                    text: "Already have an "
                                        "account?",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff919191)),
                                  ),
                                  TextSpan(
                                    text: "Sign In",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => Navigator.pushNamed(
                                          context, LogInPage.routeName),
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff121212)),
                                  )
                                ]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

import '../components/constants.dart';
import 'onboarding_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(padding: EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 43,),
            Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 32, fontWeight: FontWeight.w700
                )
            ),
            SizedBox(height: 8,),
            Text(
              'Create account to get started.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                  .w500, color: Color(0xff494949)),),
            SizedBox(height: 40,),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                        .w500, color: Color(0xff121212)),),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF0F0F0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide( color: Color(0xffb6b6b6),
                                style: BorderStyle.solid)
                        ),
                        hintText: 'Enter your full name', hintStyle: TextStyle
                      (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                      fontSize: 16, color: Color(0xffAAAAAA),),
                        suffixIcon: Icon(Icons.mail),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                        .w500, color: Color(0xff121212)),),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF0F0F0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide( color: Color(0xffb6b6b6),
                                style: BorderStyle.solid)
                        ),
                        hintText: 'Enter your email', hintStyle: TextStyle
                      (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                      fontSize: 16, color: Color(0xffAAAAAA),),
                        suffixIcon: Icon(Icons.mail),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Phone number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                        .w500, color: Color(0xff121212)),),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF0F0F0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide( color: Color(0xffb6b6b6),
                                style: BorderStyle.solid)
                        ),
                        hintText: 'Enter your phone number', hintStyle:
                    TextStyle
                      (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                      fontSize: 16, color: Color(0xffAAAAAA),),
                        suffixIcon: Icon(Icons.mail),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                        .w500, color: Color(0xff121212)),),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF0F0F0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide( color: Color(0xffb6b6b6),
                                style: BorderStyle.solid)
                        ),
                        hintText: 'Enter your password', hintStyle: TextStyle
                      (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                      fontSize: 16, color: Color(0xffAAAAAA),),
                        suffixIcon: Icon(Icons.visibility_off),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                  ),
                  SizedBox(height: 32,),
                  Center(
                    child: Column(
                      children: [
                        kPryBtn(text: 'Sign Up'),
                        SizedBox(height: 16,),
                        kPryBtn(text: 'Sign Up'),
                        SizedBox(height: 16,),
                        kPryBtn(text: 'Sign Up'),
                        Text.rich(
                          TextSpan(
                              children: [ TextSpan( text: "Already have an "
                                  "account?",
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12, fontWeight:
                                FontWeight
                                    .w300, color: Color(0xff919191)),
                              ),
                                TextSpan( text: "Sign In",
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 12, fontWeight:
                                  FontWeight
                                      .w700, color: Color(0xff121212)),
                                )
                              ]),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),

          ],
        ),),
    ));
  }
}

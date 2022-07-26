import 'package:first_challenge/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../components/constants.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Padding(padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 43,),
              Text(
                  'Log In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 32, fontWeight: FontWeight.w700
                )
              ),
              SizedBox(height: 8,),
              Text(
                  'Welcome back Miracle! Log in to continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                    .w500, color: Color(0xff494949)),),
              SizedBox(height: 72,),
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/pry_logo.png'),
                    Text(
                        'All Chef',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 33.23, fontWeight: FontWeight
                          .w700, color: kPrimaryColor),),
                  ],
                ),
              ),
              SizedBox(height: 80,),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                          .w500, color: Color(0xff121212)),),
                    SizedBox(height: 8,),
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
                      'Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                          .w500, color: Color(0xff121212)),),
                    SizedBox(height: 8,),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: _isChecked, onChanged: (bool? value){
                              setState((){_isChecked = !_isChecked;});}),
                            Text(
                              'Remember me',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12, fontWeight:
                              FontWeight
                                  .w400, color: Color(0xff1333333)),),
                          ],
                        ),
                        Text(
                          'Forgot password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins', fontSize: 14, fontWeight:
                          FontWeight
                              .w700, color: kPrimaryColor),),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Center(
                      child: Column(
                        children: [
                          kPryBtn(text: 'Sign In'),
                          SizedBox(height: 8,),
                          Text.rich(
                              TextSpan(
                                children: [ TextSpan( text: "Don't have an "
                                    "account yet? ",
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12, fontWeight:
                                FontWeight
                                    .w300, color: Color(0xff919191)),
                                ),
                                  TextSpan( text: "Sign Up",
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
      ),
        ),),
    ));
  }
}

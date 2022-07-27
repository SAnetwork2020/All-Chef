import 'package:first_challenge/components/customSuffixSvgIcon.dart';
import 'package:first_challenge/screen/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../components/color_constants.dart';
import 'home/home.dart';

class LogInPage extends StatefulWidget {
  static String routeName = '/login page';
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
      body: Padding(padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 43,),
              const Text(
                  'Log In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 32, fontWeight: FontWeight
                    .w700,
                  
                )
              ),
              const SizedBox(height: 8,),
              const Text(
                  'Welcome back Miracle! Log in to continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                    .w500, color: Color(0xff494949)),),
              const SizedBox(height: 72,),
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/pry_logo.png',height:89.43 ,
                      width: 78.42,),
                    const Text(
                        'All Chef',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 33.23, fontWeight: FontWeight
                          .w700, color: kPrimaryColor),),
                  ],
                ),
              ),
              const SizedBox(height: 80,),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                          .w500, color: Color(0xff121212)),),
                    const SizedBox(height: 8,),
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
                    const SizedBox(height: 16,),
                    const Text(
                      'Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight
                          .w500, color: Color(0xff121212)),),
                    const SizedBox(height: 8,),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: _isChecked, onChanged: (bool? value){
                              setState((){_isChecked = !_isChecked;});}),
                            const Text(
                              'Remember me',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12, fontWeight:
                              FontWeight
                                  .w400, color: Color(0xff333333)),),
                          ],
                        ),
                        const Text(
                          'Forgot password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins', fontSize: 14, fontWeight:
                          FontWeight
                              .w700, color: kPrimaryColor),),
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Center(
                      child: Column(
                        children:  [
                          // kPryBtn(text: 'Sign In'),
                          Center(
                            child: InkWell(
                              onTap: (){
                                // if (_formKey.currentState!.validate()){
                                //   _formKey.currentState!.save();
                                // }
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context)=>const HomeScreen()));
                              },
                              child: Container(
                                  width: 358, height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: kPrimaryColor,
                                  ),
                                  child: Center(
                                    child: Text('Sign In',
                                      textAlign: TextAlign.center, style: Theme.of(context).textTheme
                                          .headline5?.merge(const TextStyle(color: white_grey_07)),),)
                              ),
                            ),
                          ),
                          const SizedBox(height: 8,),
                          Text.rich(
                              TextSpan(
                                children: [ const TextSpan( text: "Don't have an "
                                    "account yet? ",
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12, fontWeight:
                                FontWeight
                                    .w300, color: Color(0xff919191)),
                                ),
                                  TextSpan( text: "Sign Up",
                                    style: const TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12, fontWeight:
                                    FontWeight
                                        .w700, color: Color(0xff121212)),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap =()=> Navigator.pushNamed(context, SignUpPage.routeName),
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

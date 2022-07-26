import 'package:first_challenge/components/constants.dart';
import 'package:flutter/material.dart';

class SignIn_SignUp extends StatelessWidget {
  const SignIn_SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/unsplash_05'
              '.png'),
              fit: BoxFit.fill),
        ),
        child:
          Scaffold(
            backgroundColor: Colors.transparent,
              body:  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 357,),
                    Image.asset('assets/images/white_logo.png', width: 85,
                      height: 96.88,),
                    Text('All Chef', textAlign: TextAlign.center, style: TextStyle
                      (fontFamily: 'Poppins', fontWeight: FontWeight.w700,
                        fontSize: 36, color: Colors.white),),
                    SizedBox(height: 188,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 56, width: 358,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kPrimaryColor,
                        ),
                        child: Center(child:  Text('Sign In', textAlign: TextAlign
                            .center, style: TextStyle
                          (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                            fontSize: 18, color: Colors.white),),),
                      ),
                    ),
                    SizedBox(height: 51,),
                    TextButton(onPressed: (){}, child: Text('Sign Up', textAlign:
                    TextAlign
                        .center, style: TextStyle
                      (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                        fontSize: 18, color: Colors.white),),)
                    // InkWell(
                    //   onTap: (){},
                    //   child: Container(
                    //     height: 56, width: 358,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(8),
                    //       color: kPrimaryColor,
                    //     ),
                    //     child: Center(child:  Text('Sign Up', textAlign:
                    //     TextAlign
                    //         .center, style: TextStyle
                    //       (fontFamily: 'Poppins', fontWeight: FontWeight.w500,
                    //         fontSize: 18, color: Colors.white),),),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
      ));
  }
}

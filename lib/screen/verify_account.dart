import 'package:first_challenge/components/constants.dart';
import 'package:first_challenge/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({Key? key}) : super(key: key);

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify Your Account',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 20, fontWeight:
          FontWeight
              .w400, color: Colors.white),),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(height: 16,),
            Center(
              child:
              Column(
                children: [
                  Container(
                    height: 140, width: 140,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(41.0),
                        child: Image.asset('assets/images/verify.png',
                        width: 54, height: 46,),
                      )),
                  SizedBox(height: 24,),
                  Text(
                    'A 6-digit verification code has been sent to '
                        '\n+234678708708xxx and ynwa@hotmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins', fontSize: 13, fontWeight:
                    FontWeight
                        .w400, color: Color(0xff121212)),),
                  SizedBox(height: 21,),
                  Form(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(height:50,width:50,
                          child:
                          TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter
                              (1), FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                          ),),
                        SizedBox(height:50,width:50,
                          child:
                          TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter
                              (1), FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                          ),),
                        SizedBox(height:50,width:50,
                          child:
                          TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter
                              (1), FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                          ),),
                        SizedBox(height:50,width:50,
                          child:
                          TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter
                              (1), FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                          ),),
                        SizedBox(height:50,width:50,
                          child:
                          TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter
                              (1), FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                          ),),
                        SizedBox(height:50,width:50,
                          child:
                          TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter
                              (1), FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                          ),),
                      ],

                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    height: 50, width: 358,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    ));
  }
}

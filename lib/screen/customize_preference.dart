import 'package:first_challenge/components/constants.dart';
import 'package:flutter/material.dart';

class CustomizePreference extends StatefulWidget {
  const CustomizePreference({Key? key}) : super(key: key);


  @override
  State<CustomizePreference> createState() => _CustomizePreferenceState();
}

class _CustomizePreferenceState extends State<CustomizePreference> {
  final kTextCustomization = TextStyle(
      fontFamily: 'Poppins', fontSize: 14, fontWeight:
  FontWeight
      .w400, color:Color(0xff6D6D6D));
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(padding: EdgeInsets.all(16), child:
        Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Skip',
                  textAlign: TextAlign.center,
                  // style: Theme.of(context).textTheme.headlineMedium),
                )
              ],
            ),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/chef_pix.png'),
                  SizedBox(height: 32),
                  Text(
                    'Customize Preference',
                    textAlign: TextAlign.center,
                    style: kTextCustomization.copyWith( fontSize: 24, 
                        fontWeight: FontWeight.w700, color: Color(0xff121212)),
                   
                  ),
                  Text(
                    'Choose a few of your favourite diet types, then \nwe’ll '
                        'build your personalized preference', textAlign:
                  TextAlign.center, style: kTextCustomization,
                   ),
                  SizedBox(height: 28),
                  Row(
                    children: <Widget>[
                      TextButton(
                          onPressed: (){},
                          child: Text(
                            'Sugar free',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins', fontSize: 14, fontWeight:
                            FontWeight
                                .w400, color:Colors.black),),),
                      TextButton(
                          onPressed: (){},
                          child: Text(
                            'Sugar free',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins', fontSize: 14, fontWeight:
                            FontWeight
                                .w400, color:Colors.black),),),
                      TextButton(
                        style: ButtonStyle(
                        ),
                        onPressed: (){},
                        child: Text(
                          'Sugar free',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins', fontSize: 14, fontWeight:
                          FontWeight
                              .w400, color:Colors.black),),),

                    ],
                  )
                ],

              ),
            )
          ],
        ),),
    ));
  }
}

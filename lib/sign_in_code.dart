import 'package:flutter/material.dart';

class form extends StatelessWidget {
  const form({
    Key? key,
    required this.formKey,
    required this.height,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey, super(key: key);

  final GlobalKey<FormState> formKey;
  final double height;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height*0.04,),
            Text('Here to Get'),
            Text('Welcome'),
            SizedBox(height: height*0.05,),
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Enter your name'
                ),
                validator: (value){
                  if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$')
                      .hasMatch(value)){
                    return 'Enter correct Name!!!';}
                  else{
                    return null;
                  }
                }
            ),
            SizedBox(height: height*0.05,),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Enter your password'
                ),
                validator: (value){
                  if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$')
                      .hasMatch(value)){
                    return 'Enter correct password!!!';}
                  else{
                    return null;
                  }
                }
            ),
            SizedBox(height: height*0.05,),
            TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: 'Enter your phone number'
                ),
                validator: (value){
                  if(value!.isEmpty ||!RegExp(r'^[+]*[(]{0,1}[0-9]{1,'
                  r'4}[)]{0,1}[-\s\.0-9]+$').hasMatch(value)){
                    return 'Enter correct phone number!!!';}
                  else{
                    return null;
                  }
                }
            ),
            SizedBox(height: height*0.05,),
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Enter your email'
                ),
                validator: (value){
                  if(value!.isEmpty ||!RegExp(r'^[\w-\.]+@([\w-]+\.)'
                  r'+[\w]{2,4}')
                      .hasMatch(value)){
                    return 'Enter correct email!!!';}
                  else{
                    return null;
                  }
                }
            ),
            SizedBox(height: height*0.05,),
            ElevatedButton(
              onPressed: (){
                if (formKey.currentState!.validate()){
                  final snackBar = SnackBar(content: Text('Submitting form'));
                  _scaffoldKey.currentState!.showSnackBar
                    (snackBar);
                }
              },
              child: Center(child: Text('Sign Up')),
            ),

          ],

        ),
      ),
    );
  }
}

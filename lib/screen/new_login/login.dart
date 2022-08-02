import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
        child: Column(children: [
          SignForm(),
          SizedBox(height: 50, width: 50,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                // fillColor: Color(0xffF0F0F0),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        ),
      ),
    ));
  }
}


class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter your email',
              labelText: 'Email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Color(0xffB6B6B6),),
              )
            ),
        ),
      ],

    ));
  }
}

import 'package:apq/Screens/signUp/controller.dart';
import 'package:apq/Screens/signUp/model.dart';
import 'package:apq/helpers/button.dart';
import 'package:apq/helpers/textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignIpController signIpController = SignIpController();
  SignUpModel signUpModel = SignUpModel();

  @override
  void initState() {
    super.initState();
  }

  _postSignUp() async {
    signUpModel = await signIpController.postSignUp(
        name: 'sdfghjk',
        email: 'jsjd@hhf.jj',
        password: '1234567u',
        phone: '01893939487');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          textField(hitText: 'اسم المستخدم'),
          textField(hitText: 'البريد الالكتروني '),
          textField(hitText: 'رقم الجوال'),
          textField(hitText: 'كلمة المرور'),
          customButton(onTap: () {
            _postSignUp();
          }, context: context, title: 'SignUp')
        ],
      ),
    );
  }
}

import 'package:apq/Screens/home/view.dart';
import 'package:apq/Screens/signUp/view.dart';
import 'package:apq/helpers/button.dart';
import 'package:flutter/material.dart';

class UserTypeScreen extends StatefulWidget {
  @override
  _UserTypeScreenState createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Image.asset('assets/logo.png'),
            ),
          ),
          customButton(
              title: 'تسجيل حساب مستخدم',
              context: context,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              })
        ],
      ),
    );
  }
}

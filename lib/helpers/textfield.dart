import 'package:flutter/material.dart';

Widget textField({String hitText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: hitText
      ),
    ),
  );
}

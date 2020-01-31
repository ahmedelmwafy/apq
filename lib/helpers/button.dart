import 'package:flutter/material.dart';

Widget customButton({BuildContext context, String title, Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(top: 30, left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(title),
      ),
    ),
  );
}

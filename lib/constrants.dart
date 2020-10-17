import 'package:flutter/material.dart';

Color backgroundcolor = Color(0xFFF1F2F6);
Color bgColor = Color.fromRGBO(100, 128, 252, 1);
Color shadowcolor = Color(0xFFDADFF0);
Color textcolor = Color(0xFF707070);
Color selectedLabelText = Colors.black;
Color unselectedLabelText = Colors.grey;

final boxDecoration = BoxDecoration(
  color: backgroundcolor,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(color: Colors.grey[300], offset: Offset(1, 1), blurRadius: 1),
    BoxShadow(color: Colors.grey[300], offset: Offset(-1, -1), blurRadius: 1)
  ],
);

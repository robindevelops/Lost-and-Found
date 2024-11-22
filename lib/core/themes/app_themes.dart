import 'package:flutter/material.dart';

class AppThemes {
  static const Darkblue = Color.fromARGB(255, 4, 76, 159);
  static var Mediumblue = Colors.blue[800];
  static var appScaffoaldColor = Colors.grey[100];

  static TextStyle linethrough = TextStyle(
    fontSize: 19,
    color: AppThemes.Mediumblue,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationColor: AppThemes.Mediumblue,
    decorationThickness: 2,
  );
}

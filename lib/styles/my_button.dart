import 'package:flutter/material.dart';

class MyButtonStyle {
  static ButtonStyle myButtonStyle = ButtonStyle(
      backgroundColor:
          MaterialStateColor.resolveWith((states) => Colors.black));
}

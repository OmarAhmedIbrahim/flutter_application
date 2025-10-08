import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle mediumText({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 15, 
      color: color ?? Colors.black,
      fontWeight: fontWeight,
    );
  }

  static TextStyle veryLargeText() {
    return TextStyle(
      fontSize: 50, 
      fontWeight: FontWeight.bold, 
      color: Colors.white
    );
  }

  static TextStyle largeText({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 25, 
      color: color ?? Colors.white, 
      fontWeight: fontWeight,
    );
  }
}
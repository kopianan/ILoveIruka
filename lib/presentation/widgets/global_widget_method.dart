import 'package:flutter/material.dart';

class GlobalWidgetMethod {
  static Text pageTitle(String title, {Color color = Colors.black, double size = 40}) {
    return Text(
      title,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold, color: color),
    );
  }
}

import 'package:flutter/material.dart';

class GlobalWidgetMethod {
  static Text pageTitle(String title, {Color color = Colors.black}) {
    return Text(
      title,
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: color),
    );
  }
}

import 'package:flutter/material.dart';

class GlobalWidgetMethod {
  static Text pageTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}

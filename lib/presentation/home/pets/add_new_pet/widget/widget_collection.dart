import 'package:flutter/material.dart';

class WidgetCollection {
  static Container getTitle(String title) => Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}

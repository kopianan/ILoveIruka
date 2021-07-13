import 'package:flutter/material.dart';

class WidgetCollection {
  static Widget getTitle(String title) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        ],
      );
}

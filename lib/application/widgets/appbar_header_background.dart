import 'package:flutter/material.dart';

class AppBarHeaderBackground extends StatelessWidget {
  const AppBarHeaderBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xff54A3F1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          )),
    );
  }
}

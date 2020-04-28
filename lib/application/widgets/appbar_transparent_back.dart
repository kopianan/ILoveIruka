import 'package:flutter/material.dart';

class AppBarTransparentBack extends StatelessWidget {
  AppBarTransparentBack({@required this.function});

  final Function function;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            function();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
        ));
  }
}

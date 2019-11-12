import 'package:flutter/material.dart';

class RegisterAdditional {
  static String validateName(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length == 0)
      return 'Must Be filled';
    else
      return null;
  }

  static String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  void backAnimated(BuildContext context, ScrollController c, int offset) {
    c.animateTo(MediaQuery.of(context).size.width * offset,
        duration: new Duration(seconds: 1), curve: Curves.bounceOut);
  }

  void nextAnimated(BuildContext context, ScrollController c, int offset) {
    c.animateTo(MediaQuery.of(context).size.width * offset,
        duration: new Duration(seconds: 1), curve: Curves.easeInCubic);
  }

  bool validateUserType(int index) {
    if (index == 0) {
      return false;
    } else
      return true;
  }
}

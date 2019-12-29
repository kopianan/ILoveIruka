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
    c.jumpTo(MediaQuery.of(context).size.width * offset,);
  }

  void nextAnimated(BuildContext context, ScrollController c, int offset) {
    c.jumpTo(MediaQuery.of(context).size.width * offset,);
  }

  bool validateUserType(int index) {
    if (index == 0) {
      return false;
    } else
      return true;
  }
}

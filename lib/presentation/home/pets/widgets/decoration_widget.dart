import 'package:flutter/material.dart';

class DecorationWidget {
  static InputDecoration getInput(String hint, {String suffix}) {
    return InputDecoration(
        suffixText: suffix,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey[400])),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey[400])),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue)),
        hintText: hint);
  }
}

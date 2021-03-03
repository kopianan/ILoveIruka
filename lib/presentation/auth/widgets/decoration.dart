import 'package:flutter/material.dart';

BoxDecoration textFieldShadow() {
  return BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
    BoxShadow(
        blurRadius: 3,
        spreadRadius: 3,
        color: Colors.grey[200],
        offset: Offset.fromDirection(45, 3))
  ]);
}

import 'package:flutter/material.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/app_widget.dart';
import 'package:injectable/injectable.dart';


void main() {
  configureInjection(Environment.prod); 
  runApp(AppWidget());
}

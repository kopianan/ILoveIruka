import 'package:flutter/material.dart';

class DashboardPage2 extends StatefulWidget {
  DashboardPage2({Key key}) : super(key: key);

  _DashboardPage2State createState() => _DashboardPage2State();
}

class _DashboardPage2State extends State<DashboardPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      body: Icon(Icons.arrow_forward_ios),
    ); 
  }
}
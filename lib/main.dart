import 'package:flutter/material.dart';
import 'package:i_love_iruka/routes/route.dart';
import 'package:i_love_iruka/screens/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Love Iruka',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
        primaryColor: Colors.white,
        accentColor: Colors.blue, 
        iconTheme: IconThemeData(color: Colors.white),
        errorColor: Colors.red, 
        
      ),
      home: LoginPage(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

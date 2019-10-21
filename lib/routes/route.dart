import 'package:flutter/material.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/screens/login/login_page.dart';
import 'package:i_love_iruka/screens/profile/profile_page.dart';
import 'package:i_love_iruka/screens/register/register_page.dart';

import '../main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());
      case '/login':
        // Validation of correct data type
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());

      case '/dashboard':
      return MaterialPageRoute(builder: (_) => DashboardPage()); 

      case '/profile_page': 
      return MaterialPageRoute(builder: (_) => ProfilePage()); 

      // if (args is String) {
      //   return MaterialPageRoute(
      //     builder: (_) => LoginPage(
      //         ),
      //   );
      // }
      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development.
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

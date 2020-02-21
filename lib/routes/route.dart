import 'package:flutter/material.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:i_love_iruka/screens/profile/groomer_page_profile.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/screens/register/register2_page.dart';
import '../main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());
 

      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardPage());
        break;
      case EditProfile.id:
        if (args == LoginResponse) {
          return _errorRoute();
        } else {
          return MaterialPageRoute(
              builder: (_) => EditProfile(
                    loginData: args,
                  ));
        }
        break;
      case NewProfilePage.id:
        return MaterialPageRoute(builder: (_) => NewProfilePage());
      case GroomerPageProfile.page_name:
        return MaterialPageRoute(builder: (_) => GroomerPageProfile());
    

      case '/register2_page':
        return MaterialPageRoute(builder: (_) => Register2Page());
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

import 'package:flutter/material.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/screens/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/screens/groomer/groomer_list.dart';
import 'package:i_love_iruka/screens/groomer_detail/groomer_detail.dart';
import 'package:i_love_iruka/screens/login/login_page.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/screens/profile/profile_page.dart';
import 'package:i_love_iruka/screens/register/register2_page.dart';
import 'package:i_love_iruka/screens/transaction/history_transaction.dart';
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

      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardPage());

      case '/profile_page':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/groomer_list':
        return MaterialPageRoute(builder: (_) => GroomerList());
      case EditProfile.id:
        return MaterialPageRoute(builder: (_) => EditProfile());
      case NewProfilePage.id: 
      return MaterialPageRoute(builder:(_) => NewProfilePage());
      case '/groomer_detail':
        {
          return MaterialPageRoute(
              builder: (_) => GroomerDetail(
                  ));
          // if (args == ListUser) {

          // } else {
          //   return _errorRoute();
          // }
        }


        break;

      case '/register2_page':
        return MaterialPageRoute(builder: (_) => Register2Page());

      case FeedDetail.pageAlias:
      return MaterialPageRoute(builder: (_) => FeedDetail() ); 
      break; 
      // if (args is String) {
      //   return MaterialPageRoute(
      //     builder: (_) => LoginPage(
      //         ),
      //   );
      // }
      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development.

      case HistoryTransaction.route : 
      return MaterialPageRoute(builder: (_) => HistoryTransaction()); 
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

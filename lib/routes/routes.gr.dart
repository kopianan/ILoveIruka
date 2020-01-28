// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:i_love_iruka/main.dart';
import 'package:i_love_iruka/screens/login/login_page.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/screens/groomer/groomer_list.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/screens/groomer_detail/groomer_detail.dart';
import 'package:i_love_iruka/screens/register/register2_page.dart';
import 'package:i_love_iruka/screens/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/screens/transaction/history_transaction.dart';

class Routes {
  static const myApp = '/';
  static const loginPage = '/login-page';
  static const dashboardPage = '/dashboard-page';
  static const groomerList = '/groomer-list';
  static const editProfile = '/edit-profile';
  static const newProfilePage = '/new-profile-page';
  static const groomerDetail = '/groomer-detail';
  static const register2page = '/register2page';
  static const feedDetail = '/feed-detail';
  static const historyTransaction = '/history-transaction';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Routes>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.myApp:
        return MaterialPageRoute(
          builder: (_) => MyApp(),
          settings: settings,
        );
      case Routes.loginPage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => LoginPage(key: typedArgs),
          settings: settings,
        );
      case Routes.dashboardPage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => DashboardPage(key: typedArgs),
          settings: settings,
        );
      case Routes.groomerList:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => GroomerList(key: typedArgs),
          settings: settings,
        );
      case Routes.editProfile:
        if (hasInvalidArgs<EditProfileArguments>(args)) {
          return misTypedArgsRoute<EditProfileArguments>(args);
        }
        final typedArgs =
            args as EditProfileArguments ?? EditProfileArguments();
        return MaterialPageRoute(
          builder: (_) =>
              EditProfile(key: typedArgs.key, loginData: typedArgs.loginData),
          settings: settings,
        );
      case Routes.newProfilePage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => NewProfilePage(key: typedArgs),
          settings: settings,
        );
      case Routes.groomerDetail:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => GroomerDetail(key: typedArgs),
          settings: settings,
        );
      case Routes.register2page:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => Register2Page(key: typedArgs),
          settings: settings,
        );
      case Routes.feedDetail:
        return MaterialPageRoute(
          builder: (_) => FeedDetail(),
          settings: settings,
        );
      case Routes.historyTransaction:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => HistoryTransaction(key: typedArgs),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//EditProfile arguments holder class
class EditProfileArguments {
  final Key key;
  final LoginResponse loginData;
  EditProfileArguments({this.key, this.loginData});
}

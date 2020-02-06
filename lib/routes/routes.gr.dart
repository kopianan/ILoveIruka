// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:i_love_iruka/main.dart';
import 'package:i_love_iruka/features/pages/groomer/groomer_list/groomer_list_page.dart';
import 'package:i_love_iruka/users/pages/login/users_login_page.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/features/pages/groomer/groomer_detail/groomer_detail.dart';
import 'package:i_love_iruka/screens/register/register2_page.dart';
import 'package:i_love_iruka/features/pages/feeds/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/features/pages/user_account/transaction/history_transaction.dart';
import 'package:i_love_iruka/features/pages/profile/profile_page.dart';
import 'package:i_love_iruka/screens/profile/groomer_page_profile.dart';

class Routes {
  static const myApp = '/';
  static const groomerLlistPage = '/groomer-llist-page';
  static const userLoginPage = '/user-login-page';
  static const dashboardPage = '/dashboard-page';
  static const editProfile = '/edit-profile';
  static const newProfilePage = '/new-profile-page';
  static const groomerDetail = '/groomer-detail';
  static const register2page = '/register2page';
  static const feedDetail = '/feed-detail';
  static const historyTransaction = '/history-transaction';
  static const profilePage = '/profile-page';
  static const groomerPageProfile = '/groomer-page-profile';
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
      case Routes.groomerLlistPage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => GroomerLlistPage(key: typedArgs),
          settings: settings,
        );
      case Routes.userLoginPage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => UserLoginPage(key: typedArgs),
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
      case Routes.profilePage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => ProfilePage(key: typedArgs),
          settings: settings,
        );
      case Routes.groomerPageProfile:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute(
          builder: (_) => GroomerPageProfile(key: typedArgs),
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

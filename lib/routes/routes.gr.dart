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
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:auto_route/transitions_builders.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/features/pages/groomer/groomer_detail/groomer_detail.dart';
import 'package:i_love_iruka/screens/register/register2_page.dart';
import 'package:i_love_iruka/features/pages/feeds/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/features/pages/user_account/transaction/history_transaction.dart';
import 'package:i_love_iruka/features/pages/profile/profile_page.dart';
import 'package:i_love_iruka/screens/profile/groomer_page_profile.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_success_notif.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';

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
  static const registerForm = '/register-form';
  static const forgotPasswordForm = '/forgot-password-form';
  static const signInForm = '/sign-in-form';
  static const forgotPaswordSuccessNotif = '/forgot-pasword-success-notif';
  static const welcomeScreen = '/welcome-screen';
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
        return MaterialPageRoute(
          builder: (_) => DashboardPage(),
          settings: settings,
        );
      case Routes.editProfile:
        if (hasInvalidArgs<EditProfileArguments>(args)) {
          return misTypedArgsRoute<EditProfileArguments>(args);
        }
        final typedArgs =
            args as EditProfileArguments ?? EditProfileArguments();
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) =>
              EditProfile(key: typedArgs.key, loginData: typedArgs.loginData),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          transitionDuration: Duration(milliseconds: 200),
        );
      case Routes.newProfilePage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) =>
              NewProfilePage(key: typedArgs),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          transitionDuration: Duration(milliseconds: 200),
        );
      case Routes.groomerDetail:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) =>
              GroomerDetail(key: typedArgs),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          transitionDuration: Duration(milliseconds: 200),
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
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) => FeedDetail(),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          transitionDuration: Duration(milliseconds: 200),
        );
      case Routes.historyTransaction:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) =>
              HistoryTransaction(key: typedArgs),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          transitionDuration: Duration(milliseconds: 200),
        );
      case Routes.profilePage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return CupertinoPageRoute(
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
      case Routes.registerForm:
        return MaterialPageRoute(
          builder: (_) => RegisterForm(),
          settings: settings,
        );
      case Routes.forgotPasswordForm:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordForm(),
          settings: settings,
        );
      case Routes.signInForm:
        return MaterialPageRoute(
          builder: (_) => SignInForm(),
          settings: settings,
        );
      case Routes.forgotPaswordSuccessNotif:
        return MaterialPageRoute(
          builder: (_) => ForgotPaswordSuccessNotif(),
          settings: settings,
        );
      case Routes.welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => WelcomeScreen(),
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

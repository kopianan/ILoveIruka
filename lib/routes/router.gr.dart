// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_success_notif.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';
import 'package:i_love_iruka/presentation/account/account_page.dart';
import 'package:i_love_iruka/presentation/appointment/appointment_form.dart';
import 'package:i_love_iruka/presentation/feed_detail/feed_detail_page.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/presentation/splah_screen/splash_screen.dart';

abstract class Routes {
  static const dashboardPage = '/dashboard-page';
  static const registerForm = '/register-form';
  static const forgotPasswordForm = '/forgot-password-form';
  static const signInForm = '/sign-in-form';
  static const forgotPaswordSuccessNotif = '/forgot-pasword-success-notif';
  static const welcomeScreen = '/welcome-screen';
  static const accountPage = '/account-page';
  static const appointmentForm = '/appointment-form';
  static const feedDetailPage = '/feed-detail-page';
  static const splashScreen = '/';
  static const all = {
    dashboardPage,
    registerForm,
    forgotPasswordForm,
    signInForm,
    forgotPaswordSuccessNotif,
    welcomeScreen,
    accountPage,
    appointmentForm,
    feedDetailPage,
    splashScreen,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.dashboardPage:
        if (hasInvalidArgs<DashboardPageArguments>(args)) {
          return misTypedArgsRoute<DashboardPageArguments>(args);
        }
        final typedArgs =
            args as DashboardPageArguments ?? DashboardPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => DashboardPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.registerForm:
        return MaterialPageRoute<dynamic>(
          builder: (context) => RegisterForm(),
          settings: settings,
        );
      case Routes.forgotPasswordForm:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ForgotPasswordForm(),
          settings: settings,
        );
      case Routes.signInForm:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInForm(),
          settings: settings,
        );
      case Routes.forgotPaswordSuccessNotif:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ForgotPaswordSuccessNotif(),
          settings: settings,
        );
      case Routes.welcomeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => WelcomeScreen(),
          settings: settings,
        );
      case Routes.accountPage:
        if (hasInvalidArgs<AccountPageArguments>(args)) {
          return misTypedArgsRoute<AccountPageArguments>(args);
        }
        final typedArgs =
            args as AccountPageArguments ?? AccountPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => AccountPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.appointmentForm:
        if (hasInvalidArgs<AppointmentFormArguments>(args)) {
          return misTypedArgsRoute<AppointmentFormArguments>(args);
        }
        final typedArgs =
            args as AppointmentFormArguments ?? AppointmentFormArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => AppointmentForm(key: typedArgs.key),
          settings: settings,
        );
      case Routes.feedDetailPage:
        if (hasInvalidArgs<FeedDetailPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<FeedDetailPageArguments>(args);
        }
        final typedArgs = args as FeedDetailPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              FeedDetailPage(key: typedArgs.key, feed: typedArgs.feed),
          settings: settings,
        );
      case Routes.splashScreen:
        if (hasInvalidArgs<SplashScreenArguments>(args)) {
          return misTypedArgsRoute<SplashScreenArguments>(args);
        }
        final typedArgs =
            args as SplashScreenArguments ?? SplashScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreen(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//DashboardPage arguments holder class
class DashboardPageArguments {
  final Key key;
  DashboardPageArguments({this.key});
}

//AccountPage arguments holder class
class AccountPageArguments {
  final Key key;
  AccountPageArguments({this.key});
}

//AppointmentForm arguments holder class
class AppointmentFormArguments {
  final Key key;
  AppointmentFormArguments({this.key});
}

//FeedDetailPage arguments holder class
class FeedDetailPageArguments {
  final Key key;
  final Feed feed;
  FeedDetailPageArguments({this.key, @required this.feed});
}

//SplashScreen arguments holder class
class SplashScreenArguments {
  final Key key;
  SplashScreenArguments({this.key});
}

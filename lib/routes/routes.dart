import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/transitions_builders.dart';
import 'package:i_love_iruka/application/auth/forgot_password_form/forgot_password_form.dart';
import 'package:i_love_iruka/application/auth/forgot_password_form/forgot_password_success_notif.dart';
import 'package:i_love_iruka/application/auth/register_form/register_form.dart';
import 'package:i_love_iruka/application/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/application/home/dashboard_page.dart';
import 'package:i_love_iruka/application/welcome/welcome_screen.dart';
// import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/features/pages/feeds/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/features/pages/groomer/groomer_detail/groomer_detail.dart';
import 'package:i_love_iruka/features/pages/groomer/groomer_list/groomer_list_page.dart';
import 'package:i_love_iruka/features/pages/profile/profile_page.dart';
import 'package:i_love_iruka/features/pages/user_account/transaction/history_transaction.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:i_love_iruka/screens/profile/groomer_page_profile.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/screens/register/register2_page.dart';
import 'package:i_love_iruka/users/pages/login/users_login_page.dart';

import '../main.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs
@autoRouter
class $Routes {
  @initial
  MyApp myApp;

  GroomerLlistPage groomerLlistPage;
  UserLoginPage userLoginPage;
  DashboardPage dashboardPage;
  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 200)
  EditProfile editProfile;
  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 200)
  NewProfilePage newProfilePage;
  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 200)
  GroomerDetail groomerDetail;
  Register2Page register2page;
  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 200)
  FeedDetail feedDetail;
  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 200)
  HistoryTransaction historyTransaction;
  @CupertinoRoute()
  @CustomRoute(
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 200)
  ProfilePage profilePage;
  GroomerPageProfile groomerPageProfile;

//auth folder
  RegisterForm registerForm;
  ForgotPasswordForm forgotPasswordForm;
  SignInForm signInForm;
  ForgotPaswordSuccessNotif forgotPaswordSuccessNotif;
  WelcomeScreen welcomeScreen;
}

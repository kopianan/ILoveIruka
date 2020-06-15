import 'package:auto_route/auto_route_annotations.dart';
import 'package:i_love_iruka/presentation/account/account_page.dart';
import 'package:i_love_iruka/presentation/app_widget.dart';
import 'package:i_love_iruka/presentation/appointment/appointment_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_success_notif.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/presentation/feed_detail/feed_detail_page.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';

@MaterialAutoRouter()
class $Router {
  // AppWidget appWidget;

  DashboardPage dashboardPage;
  RegisterForm registerForm;
  ForgotPasswordForm forgotPasswordForm;
  SignInForm signInForm;
  ForgotPaswordSuccessNotif forgotPaswordSuccessNotif;
  @initial
  WelcomeScreen welcomeScreen;
  AccountPage accountPage;
  AppointmentForm appointmentForm ; 
  FeedDetailPage feedDetailPage ; 
  
}


import 'package:get/get_navigation/get_navigation.dart';
import 'package:i_love_iruka/presentation/account/account_page.dart';
import 'package:i_love_iruka/presentation/appointment/appointment_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_success_notif.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/presentation/feed_detail/feed_detail_page.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/splah_screen/splash_screen.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';

List<GetPage> navigatorPages =[
   GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
   GetPage(name: RegisterForm.TAG, page: () => RegisterForm()),
   GetPage(name: ForgotPasswordForm.TAG, page: () => ForgotPasswordForm()),
   GetPage(name: SignInForm.TAG, page: () => SignInForm()),
   GetPage(name: ForgotPaswordSuccessNotif.TAG, page: () => ForgotPaswordSuccessNotif()),
   GetPage(name: WelcomeScreen.TAG, page: () => WelcomeScreen()),
   GetPage(name: AccountPage.TAG, page: () => AccountPage()),
   GetPage(name: AppointmentForm.TAG, page: () => AppointmentForm()),
   GetPage(name: FeedDetailPage.TAG, page: () => FeedDetailPage()),
   GetPage(name: SplashScreen.TAG, page: () => SplashScreen(),),
]; 



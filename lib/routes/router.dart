import 'package:get/get_navigation/get_navigation.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_form.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_success_notif.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/presentation/auth/signin_signout/signin_signout_page.dart';
import 'package:i_love_iruka/presentation/core/photo_viewer_page.dart';
import 'package:i_love_iruka/presentation/feed_detail/feed_detail_page.dart';
import 'package:i_love_iruka/presentation/home/account_home/partnership_location_page.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet_page.dart';
import 'package:i_love_iruka/presentation/home/pets/my_pets_page.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_detail_page.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_match_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/address/address_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/change_password/change_password_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/profile/setting_profile_page.dart';
import 'package:i_love_iruka/presentation/membership/membership_card_list.dart';
import 'package:i_love_iruka/presentation/splah_screen/splash_screen.dart';
import 'package:i_love_iruka/presentation/transaction/transaction_history_page.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';

List<GetPage> navigatorPages = [
  GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
  GetPage(name: RegisterForm.TAG, page: () => RegisterForm()),
  GetPage(name: ForgotPasswordForm.TAG, page: () => ForgotPasswordForm()),
  GetPage(name: SignInForm.TAG, page: () => SignInForm()),
  GetPage(
      name: ForgotPaswordSuccessNotif.TAG,
      page: () => ForgotPaswordSuccessNotif()),
  GetPage(name: WelcomeScreen.TAG, page: () => WelcomeScreen()),
  GetPage(name: FeedDetailPage.TAG, page: () => FeedDetailPage()),
  GetPage(name: SplashScreen.TAG, page: () => SplashScreen()),
  GetPage(
      name: PartnershipLocationPage.TAG, page: () => PartnershipLocationPage()),
  GetPage(name: PetsDetailPage.TAG, page: () => PetsDetailPage()),
  GetPage(name: PetsMatchPage.TAG, page: () => PetsMatchPage()),
  GetPage(
      name: MembershipCardListPage.TAG, page: () => MembershipCardListPage()),
  GetPage(name: MyPetsPage.TAG, page: () => MyPetsPage()),
  GetPage(name: SigninSignoutPage.TAG, page: () => SigninSignoutPage()),
  GetPage(name: FeedDetailPage.TAG, page: () => FeedDetailPage()),
  GetPage(name: PhotoViewerPage.TAG, page: () => PhotoViewerPage()),
  GetPage(name: SettingProfielPage.TAG, page: () => SettingProfielPage()),
  GetPage(name: AddNewPetPage.TAG, page: () => AddNewPetPage()),
  GetPage(name: AddressPage.TAG, page: () => AddressPage()),
  GetPage(
      name: TransactionHistoryPage.TAG, page: () => TransactionHistoryPage()),
  GetPage(name: ChangePasswordPage.TAG, page: () => ChangePasswordPage()),
];

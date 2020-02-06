import 'package:auto_route/auto_route_annotations.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
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
  EditProfile editProfile;
  NewProfilePage newProfilePage;
  GroomerDetail groomerDetail;
  Register2Page register2page;
  FeedDetail feedDetail;
  HistoryTransaction historyTransaction;
  ProfilePage profilePage ; 
  GroomerPageProfile groomerPageProfile ; 
  
}

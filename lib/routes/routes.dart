import 'package:auto_route/auto_route_annotations.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/screens/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/screens/groomer/groomer_list.dart';
import 'package:i_love_iruka/screens/groomer_detail/groomer_detail.dart';
import 'package:i_love_iruka/screens/login/login_page.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/screens/register/register2_page.dart';
import 'package:i_love_iruka/screens/transaction/history_transaction.dart';

import '../main.dart';

@autoRouter
class $Routes {
  @initial
  MyApp myApp;

  LoginPage loginPage;
  DashboardPage dashboardPage;
  GroomerList groomerList;
  EditProfile editProfile;
  NewProfilePage newProfilePage;
  GroomerDetail groomerDetail;
  Register2Page register2page;
  FeedDetail feedDetail;
  HistoryTransaction historyTransaction;
}

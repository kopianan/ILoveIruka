import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/features/pages/feeds/feed_list/feed_dashboard.dart';
import 'package:i_love_iruka/features/pages/groomer/groomer_list/groomer_list_page.dart';
import 'package:i_love_iruka/features/pages/user_account/user_account_menu/user_account_page.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({
    Key key,
  }) : super(key: key);
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int bottomSelectedIndex = 0;
  List<String> appBarTitleList = ["Feed", "Account", "Groomer List"];
  SharedPref _sharedPref = SharedPref();
  LoginResponse dataLogin;
  loadSharedPrefs() async {
    print("async test");
    try {
      LoginResponse user = LoginResponse.fromJson(await _sharedPref.getLoginData());

      Provider.of<DataBridge>(context, listen: false).setUserData(user);
    } catch (Excepetion) {
      Scaffold.of(context).showSnackBar(SnackBar(content: new Text("Nothing found!"), duration: const Duration(milliseconds: 500)));
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: buildDrawer(context),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.blue),
        elevation: 4,
        // selectedItemColor: ColorPalate().bottomNavigationTitleColor,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          bottomTapped(index);
        },
        currentIndex: bottomSelectedIndex,
        items: buildBottomNavBarItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(icon: buildNavigationIcon(false, FontAwesomeIcons.home), title: Text("Feed")),
      BottomNavigationBarItem(icon: buildNavigationIcon(false, FontAwesomeIcons.idCard), title: Text("Account")),
      BottomNavigationBarItem(
          // activeIcon: buildNavigationIcon(true, FontAwesomeIcons.objectGroup),
          icon: buildNavigationIcon(false, FontAwesomeIcons.objectGroup),
          title: Text("Groomer List")),
    ];
  }

  Icon buildNavigationIcon(bool isActive, IconData icon) => (isActive)
      ? Icon(
          icon,
        )
      : Icon(
          icon,
        );

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() { 
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      // pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
      pageController.jumpToPage(index);
    });
  }

  Widget buildPageView() {
    return PageView(
      children: <Widget>[FeedDashboard(), UserAccountPage(), GroomerLlistPage()],
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
    );
  }
}

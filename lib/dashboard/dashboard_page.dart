import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_g.dart';
import 'package:i_love_iruka/pages/account_page.dart';
import 'package:i_love_iruka/pages/feed_dashboard.dart';
import 'package:i_love_iruka/screens/groomer/groomer_list.dart';
import 'package:i_love_iruka/util/shared_pref.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int bottomSelectedIndex = 0;
  DashboardBlocBloc dashboardBlocBloc = DashboardBlocBloc();
  List<String> appBarTitleList = ["Feed", "Account", "Groomer List"];
  SharedPref _sharedPref = SharedPref() ; 


  @override
  void initState() {
    super.initState();
    dashboardBlocBloc.add(GetEventList());
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: buildDrawer(context),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.blue),
        elevation: 2,
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
      BottomNavigationBarItem(
          icon: buildNavigationIcon(false, FontAwesomeIcons.home),
          title: Text("Feed")),
      BottomNavigationBarItem(
          icon: buildNavigationIcon(false, FontAwesomeIcons.idCard),
          title: Text("Account")),
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
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  Widget buildPageView() {
    return PageView(
            children: <Widget>[ FeedDashboard(), AccountPage(), GroomerList()],
            controller: pageController,
            onPageChanged: (index) {
              pageChanged(index);
            },
          );
  }
}

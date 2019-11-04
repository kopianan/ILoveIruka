import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/pages/dashboard_page1.dart';
import 'package:i_love_iruka/pages/dashboard_page2.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int bottomSelectedIndex = 0;
  List<String> appBarTitleList = ["Feed", "Account", "Groomer List"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     title: Text(appBarTitleList[bottomSelectedIndex])),
      drawer: buildDrawer(context),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorPalate().bottomNavigationTitleColor,
        onTap: (index) {
          bottomTapped(index);
        },
        currentIndex: bottomSelectedIndex,
        items: buildBottomNavBarItems(),
      ),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("This Is Drawer"),
            accountEmail: Text("bobasoft@boba.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/profile_page',
                  );
                },
                title: Text("Profile"),
                trailing: Icon(Icons.person),
              ),
              Divider(),
                ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/groomer_list',
                  );
                },
                title: Text("Groomer Lists"),
                trailing: Icon(Icons.group),
              ),
                 Divider(),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed('/login'); 
                },
                title: Text("Log Out"),
                trailing: Icon(Icons.exit_to_app),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          activeIcon: buildNavigationIcon(true, FontAwesomeIcons.home),
          icon: buildNavigationIcon(false, FontAwesomeIcons.home),
          title: Text("Feed")),
      BottomNavigationBarItem(
          activeIcon: buildNavigationIcon(true, FontAwesomeIcons.idCard),
          icon: buildNavigationIcon(false, FontAwesomeIcons.idCard),
          title: Text("Account")),
    
    ];
  }

  Icon buildNavigationIcon(bool isActive, IconData icon) => (isActive)
      ? Icon(
          icon,
          color: Colors.orange,
        )
      : Icon(
          icon,
          color: Colors.black,
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
      children: <Widget>[DashboardPage1(), DashboardPage2()],
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:i_love_iruka/dashboard/pages/dashboard_page1.dart';
import 'package:i_love_iruka/dashboard/pages/dashboard_page2.dart';
import 'package:i_love_iruka/dashboard/pages/dashboard_page3.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
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
          icon: Icon(Icons.movie_creation), title: Text("Feed")),
      BottomNavigationBarItem(
          icon: Icon(Icons.arrow_forward), title: Text("Titl2")),
      BottomNavigationBarItem(
          icon: Icon(Icons.arrow_forward), title: Text("Titl3")),
    ];
  }

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
      children: <Widget>[DashboardPage1(), DashboardPage2(), DashboardPage3()],
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
    );
  }
}

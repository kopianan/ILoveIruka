import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/presentation/home/account_home/account_page_home.dart';
import 'package:i_love_iruka/presentation/home/feeds_home/feed_home.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_match_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/user_home_page.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DashboardPage extends StatefulWidget {
  static const String TAG = '/dashboard_page';
  DashboardPage({Key key}) : super(key: key);
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int bottomSelectedIndex = 0;
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

      // pageController.animateToPage(index,
      //     duration: Duration(milliseconds: 500), curve: Curves.ease);
      pageController.jumpToPage(index);
    });
  }

  final userController = Get.put(UserController());

  @override
  void initState() {
    //set data to usr controller.
    userController.setDataUser(Pref().getUserData);
    userController.setMemberData(Pref().getMemberInfo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: (index) {
            pageChanged(index);
          },
          children: <Widget>[
            FeedHome(),
            AccountPagehome(),
            PetsMatchPage(),
            UserHomePage()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomSelectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            bottomTapped(index);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined), label: 'Member'),
            BottomNavigationBarItem(
                icon: Icon(Icons.pets_outlined), label: 'Pets'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Users'),
          ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.qr_code,
        ),
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => GestureDetector(
                  onVerticalDragEnd: (down) {
                    Navigator.pop(context, null);
                  },
                  child: Dialog(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                        padding: EdgeInsets.only(
                            top: 20, right: 20, left: 20, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "QR Code",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("Scan this qr for transaction"),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: QrImage(
                                  size: 250,
                                  data: userController.getUserData().fullName),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Swipe down to close"),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                    )
                                  ],
                                ))
                          ],
                        )),
                  )));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

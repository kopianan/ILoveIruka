import 'package:flutter/material.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/presentation/home/account_home/account_page_home.dart';
import 'package:i_love_iruka/presentation/home/feeds_home/feed_home.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DashboardPage extends StatefulWidget {
  static final String TAG = '/dashboard_page';
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
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, _) => Scaffold(
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
                  icon: Icon(MdiIcons.account), label: 'Users')
            ]),
        floatingActionButton: FloatingActionButton(
          child: Icon(MdiIcons.qrcode),
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
                                    data: authProvider.getUserData.id),
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
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_love_iruka/application/home/account_home/account_page_home.dart';
import 'package:i_love_iruka/application/home/feeds_home/feed_home.dart';
import 'package:i_love_iruka/widgets/show_alert_dialog.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            FeedHome(),
            AccountPagehome(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _pageController.jumpToPage(
                index,
              );
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
            )
          ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.adb),
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
                        padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10) ,
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
                              child: QrImage(size: 250, data: "ananaflred"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Swipe down to close"),
                                Icon(Icons.keyboard_arrow_down, color: Colors.black,)
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

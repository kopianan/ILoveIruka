import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:i_love_iruka/dashboard/dashboard_widgets.dart';

class DashboardPage1 extends StatefulWidget {
  DashboardPage1({Key key}) : super(key: key);

  _DashboardPage1State createState() => _DashboardPage1State();
}

class _DashboardPage1State extends State<DashboardPage1> {
  double serviceIconFontSize = 40.0;
  int _current = 0;
  List<Widget> imageList = [
    DashboardWidgets()
        .buildImageOnSlider("https://picsum.photos/200/300?grayscale"),
    DashboardWidgets()
        .buildImageOnSlider("https://picsum.photos/seed/picsum/200/300"),
    DashboardWidgets()
        .buildImageOnSlider("https://picsum.photos/200/300/?blur=2"),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          buildServiceContent(),
          Stack(
            children: <Widget>[
              CarouselSlider(
                items: imageList,
                height: 200,
                aspectRatio: 2,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                enlargeCenterPage: true,
                onPageChanged: (val) {
                  setState(() {
                    _current = val;
                  });
                },
                scrollDirection: Axis.horizontal,
              ),
              Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(
                      imageList,
                      (index, url) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Color.fromRGBO(0, 0, 0, 0.9)
                                  : Color.fromRGBO(0, 0, 0, 0.4)),
                        );
                      },
                    ),
                  ))
            ],
          )
        ],
      )),
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
          InkWell(
            splashColor: Colors.green,
            onTap: () {
              Navigator.of(context).pushNamed('/login');
            },
            child: ListTile(
              title: Text("Log Out"),
              trailing: Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
    );
  }

  Container buildServiceContent() {
    return Container(
      child: Card(
          child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "Services",
                style: TextStyle(
                  fontSize: 18,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.fastfood,
                    size: serviceIconFontSize,
                  ),
                  Text("DataFood")
                ],
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.edit_attributes,
                      size: serviceIconFontSize,
                    ),
                    Text("DataFood")
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.label,
                    size: serviceIconFontSize,
                  ),
                  Text("DataFood")
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.code,
                    size: serviceIconFontSize,
                  ),
                  Text("DataFood")
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          )
        ],
      )),
    );
  }
}

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:i_love_iruka/dashboard/dashboard_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardPage1 extends StatefulWidget {
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

  List<String> feedData = [
    "feed 1",
    "feed 1",
    "feed 1",
    "feed 1",
    "feed 1",
    "feed 1",
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  _launchURL(String urlAddress) async {
    String url = "$urlAddress";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        expandedHeight: 250,
        floating: false,
        automaticallyImplyLeading: true,
        centerTitle: true,
        pinned: true,
        title: Text("Dashboard"),
        flexibleSpace: FlexibleSpaceBar(
          background: Carousel(
            images: imageList,
            autoplay: true,
            boxFit: BoxFit.cover,
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            buildServiceContent(),
          ],
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return buildFeedContainer();
        }, childCount: feedData.length),
      )
    ]);
  }

  Container buildFeedContainer() {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                child: Image.asset(
              "images/assets/pet_grooming.png",
              height: 200,
              fit: BoxFit.cover,
            )),
            Expanded(
              child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.white,
                  child: Text(
                    "Promo Test Anan Alfred ",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Container buildServiceContent() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 10, left: 15),
                width: double.infinity,
                child: Text(
                  "Services",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () async {
                    _launchURL("https://sismarket.id/");
                  },
                  child: Column(
                    children: <Widget>[
                      buildIconContainer("images/assets/pet_shop.png"),
                      buildIconTitleServicesDashboard(
                        "Shop",
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    buildShowDialog("Grooming Salon");
                  },
                  child: Column(
                    children: <Widget>[
                      buildIconContainer("images/assets/pet_grooming.png"),
                      buildIconTitleServicesDashboard("Grooming Salon")
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    buildShowDialog("Pet Hotel");
                  },
                  child: Column(
                    children: <Widget>[
                      buildIconContainer("images/assets/pet_hotel.png"),
                      buildIconTitleServicesDashboard("Pet Hotel")
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    buildShowDialogPetTaxi();
                  },
                  child: Column(
                    children: <Widget>[
                      buildIconContainer("images/assets/pet_school.png"),
                      buildIconTitleServicesDashboard("Pet Taxi")
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Future buildShowDialog(String title) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "$title",
              textAlign: TextAlign.center,
            ),
            content: Text("Choose action "),
            actions: <Widget>[
              FlatButton(
                splashColor: Colors.amber,
                onPressed: () {
                  _launchURL("https://iloveiruka.com/");
                },
                child: Text(
                  "Visit Link",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              FlatButton(
                splashColor: Colors.amber,
                onPressed: () {
                  launch("tel://081377151395");
                },
                child: Text("Call Us", style: TextStyle(color: Colors.blue)),
              ),
            ],
          );
        });
  }

  Future buildShowDialogPetTaxi() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Pet Taxi",
              textAlign: TextAlign.center,
            ),
            content: Text("Choose action "),
            actions: <Widget>[
              FlatButton(
                splashColor: Colors.amber,
                onPressed: () {
                  _launchURL("https://pettravelindonesia.com/");
                },
                child: Text(
                  "Visit Link",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              FlatButton(
                splashColor: Colors.amber,
                onPressed: () {
                  launch("tel://081377151395");
                },
                child: Text("Call Us", style: TextStyle(color: Colors.blue)),
              ),
            ],
          );
        });
  }

  Container buildIconContainer(String images) {
    return Container(
        width: 60,
        height: 60,
        padding: EdgeInsets.all(10),
        decoration: boxDecorationDashboardIcon(),
        child: Image.asset(images));
  }

  Container buildIconTitleServicesDashboard(
    String title,
  ) {
    return Container(
        alignment: Alignment.topCenter,
        width: 70,
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Text(
          "${title}",
          maxLines: 2,
          textAlign: TextAlign.center,
        ));
  }

  BoxDecoration boxDecorationDashboardIcon() {
    return BoxDecoration(
        shape: BoxShape.circle, color: Color.fromRGBO(85, 141, 197, 100));
  }
  // 212, 85, 0,
  // 85, 141, 197
}

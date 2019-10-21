import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:i_love_iruka/dashboard/dashboard_widgets.dart';

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

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverList(
        delegate: SliverChildListDelegate(
          [
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
            ),
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
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
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
                color: Colors.green,
                child: Image.asset(
                  "images/assets/pet_grooming.png",
                  height: 200,
                  fit: BoxFit.cover,
                )),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white, child: Text("Promo Test Anan Alfred ",maxLines: 1,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      ),
    );
  }

  Container buildServiceContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Card(
          elevation: 5,
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
                  Column(
                    children: <Widget>[
                      buildIconContainer("images/assets/pet_shop.png"),
                      buildIconTitleServicesDashboard(
                        "Shop",
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        buildIconContainer("images/assets/pet_grooming.png"),
                        buildIconTitleServicesDashboard("Grooming Salon")
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      buildIconContainer("images/assets/pet_hotel.png"),
                      buildIconTitleServicesDashboard("Hotel")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      buildIconContainer("images/assets/pet_school.png"),
                      buildIconTitleServicesDashboard("Pet Taxi")
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
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
    return BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black,
        blurRadius: 2,
      )
    ], shape: BoxShape.circle, color: Colors.green);
  }
}

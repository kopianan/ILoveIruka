import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/route_manager.dart';

// InstaProfilePage
class PetsDetailPage extends StatefulWidget {
  static const String TAG = '/pets_detail_page';
  @override
  _PetsDetailPageState createState() => _PetsDetailPageState();
}

class _PetsDetailPageState extends State<PetsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          // allows you to build a list of elements that would be scrolled away till the body reached the top
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    height: 300 + kToolbarHeight,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.freepnglogos.com/uploads/dog-png/bow-wow-gourmet-dog-treats-are-healthy-natural-low-4.png"))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: kToolbarHeight,
                        ),
                        IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              Get.back(closeOverlays: true);
                            }),
                      ],
                    ),
                  )
                ]),
              ),
            ];
          },
          // You tab view goes here
          body: Column(
            children: <Widget>[
              TabBar(
                tabs: [
                  Tab(text: 'Bio Data'),
                  Tab(text: 'Gallery'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Stack(
                      children: [
                        PetsGalleryWidget(),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset.fromDirection(100, 3),
                                    blurRadius: 4,
                                    spreadRadius: 3)
                              ],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 25,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Owner"),
                                            Text("Nama")
                                          ]),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      onPressed: () {},
                                      child: Text(
                                        "Contact me",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 3,
                      children: Colors.primaries.map((color) {
                        return Container(color: color, height: 150.0);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PetsGalleryWidget extends StatelessWidget {
  const PetsGalleryWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pets Name",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text("Alamat sesuai owner")
            ],
          ),
          SizedBox(height: 20),
          Tags(
            itemCount: 20,
            horizontalScroll: true,
            itemBuilder: (index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: [
                    Text("Data"),
                    Text(
                      "Data asdf sdf sdfd",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pet Description",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container informationBox(String value, String key) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(key),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
    );
  }
}

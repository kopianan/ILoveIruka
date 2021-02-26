
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text("Pet Detail"),
        actions: [IconButton(icon: Icon(Icons.edit), onPressed: () {})],
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            // allows you to build a list of elements that would be scrolled away till the body reached the top
            headerSliverBuilder: (context, _) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 50,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nama Si Anying",
                            style: TextStyle(fontSize: 20),
                          ),
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
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GridView(
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.all(20),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: 20,
                                          crossAxisSpacing: 20,
                                          childAspectRatio: 2 / 1,
                                          crossAxisCount: 3),
                                  children: [
                                    FittedBox(
                                        child:
                                            informationBox("4 Months", "Age")),
                                    FittedBox(
                                        child: informationBox("Grey", "Color")),
                                    FittedBox(
                                        child:
                                            informationBox("11 Kg", "Weight")),
                                  ],
                                ),
                                Text(
                                  "Pet Description",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                              ],
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

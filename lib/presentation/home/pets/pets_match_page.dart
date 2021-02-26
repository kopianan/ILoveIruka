import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/presentation/home/pets/my_pets_page.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_detail_page.dart';

class PetsMatchPage extends StatefulWidget {
  static const String TAG = '/pets_match_page';
  PetsMatchPage({Key key}) : super(key: key);

  @override
  _PetsMatchPageState createState() => _PetsMatchPageState();
}

class _PetsMatchPageState extends State<PetsMatchPage> {
  List<IconData> _icons = [
    Icons.ac_unit,
    Icons.dashboard_rounded,
    Icons.face,
    Icons.cached,
    Icons.ac_unit,
    Icons.dashboard_rounded,
    Icons.face,
    Icons.cached,
    Icons.ac_unit,
    Icons.dashboard_rounded,
    Icons.face,
    Icons.cached,
  ];
  @override
  Widget build(BuildContext context) {
    const double horizontal = 20;
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // SliverToBoxAdapter(
          //   child: Text("My Pet"),
          // ),
          SliverToBoxAdapter(
            child: Container(
              margin:
                  EdgeInsets.symmetric(vertical: 10, horizontal: horizontal),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 2,
                    color: Colors.grey[300],
                    offset: Offset.fromDirection(70, 3))
              ]),
              child: TextFormField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 10, left: 15),
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search, size: 25),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: horizontal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Find your pet match",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Text("Alamat saya",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: horizontal, vertical: horizontal),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('images/assets/back.jpg'),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.grey, BlendMode.overlay)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 4,
                        spreadRadius: 3,
                        offset: Offset.fromDirection(45, 3))
                  ]),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Get.toNamed(MyPetsPage.TAG);
                },
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "My Pets",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.pets)
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            height: 70,
            margin: EdgeInsets.only(left: horizontal),
            child: ListView.builder(
                itemCount: _icons.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(15),
                    width: 60,
                    child: FittedBox(
                        child: index == 0
                            ? Text(
                                "All",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            : Icon(
                                _icons[index],
                              )),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              blurRadius: 4,
                              spreadRadius: 2,
                              offset: Offset.fromDirection(45, 3))
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    margin: EdgeInsets.only(right: 10, bottom: 10),
                  );
                }),
          )),
          // SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 10,
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.5 / 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Get.toNamed(PetsDetailPage.TAG);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      right: 10, left: 10, top: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.unsplash.com/photo-1548199973-03cce0bbc87b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80'),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Si Anying",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("")
                                    ],
                                  ))
                            ],
                          ),
                        ));
                  }),
            ),
          )
        ],
      ),
    );
  }
}

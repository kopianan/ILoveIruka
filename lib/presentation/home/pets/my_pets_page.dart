import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_detail_page.dart';

class MyPetsPage extends StatefulWidget {
  static const String TAG = '/my_pets_page';
  MyPetsPage({Key key}) : super(key: key);

  @override
  _MyPetsPageState createState() => _MyPetsPageState();
}

class _MyPetsPageState extends State<MyPetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Pets",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_sharp,
                          size: 30,
                        ),
                        onPressed: () {
                          Get.toNamed(PetsDetailPage.TAG);
                        })
                  ],
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          blurRadius: 3,
                          spreadRadius: 2,
                          offset: Offset.fromDirection(45, 2))
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'images/assets/back.jpg',
                                    ),
                                    fit: BoxFit.cover))),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nama hewan saya disini",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("Apa ini"),
                            Text(
                              "Kucing",
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}

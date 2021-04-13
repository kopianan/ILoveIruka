import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/presentation/home/pets/pets_detail_page.dart';

class PetsMatchPage extends StatefulWidget {
  static const String TAG = '/pets_match_page';
  PetsMatchPage({Key key}) : super(key: key);

  @override
  _PetsMatchPageState createState() => _PetsMatchPageState();
}

class _PetsMatchPageState extends State<PetsMatchPage> {
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

          // SliverToBoxAdapter(
          //   child: Container(
          //     margin: EdgeInsets.symmetric(
          //         horizontal: horizontal, vertical: horizontal),
          //     height: 60,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(10),
          //         image: DecorationImage(
          //             image: AssetImage('images/assets/back.jpg'),
          //             fit: BoxFit.cover,
          //             colorFilter:
          //                 ColorFilter.mode(Colors.grey, BlendMode.overlay)),
          //         boxShadow: [
          //           BoxShadow(
          //               color: Colors.grey[300],
          //               blurRadius: 4,
          //               spreadRadius: 3,
          //               offset: Offset.fromDirection(45, 3))
          //         ]),
          //     alignment: Alignment.centerRight,
          //     padding: EdgeInsets.symmetric(horizontal: 20),
          //     child: InkWell(
          //       onTap: () {
          //         Get.toNamed(MyPetsPage.TAG);
          //       },
          //       child: Row(
          //         // crossAxisAlignment: CrossAxisAlignment.end,
          //         mainAxisSize: MainAxisSize.max,
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           Text(
          //             "My Pets",
          //             style: TextStyle(
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.black),
          //           ),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Icon(Icons.pets)
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          //
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(PetsDetailPage.TAG);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(3, 3))
                          ]),
                          width: Get.size.width,
                          height: Get.size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: Image.network(
                                    "https://unsplash.com/photos/L2iZFRPaH1M/download?force=true&w=640",
                                    fit: BoxFit.cover,
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Tags(
                                          itemCount: 3,
                                          itemBuilder: (int index) {
                                            return Tooltip(
                                                message: "item.title",
                                                child: ItemTags(
                                                  index: index,
                                                  title: "item.title",
                                                ));
                                          },
                                        ),
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Nama Peliharaan",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ))
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
// InkWell(
//                         onTap: () {
//                           Get.toNamed(PetsDetailPage.TAG);
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.white),
//                           child: Column(
//                             children: [
//                               Expanded(
//                                 flex: 3,
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       right: 10, left: 10, top: 10),
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       image: DecorationImage(
//                                         image: NetworkImage(
//                                             'https://images.unsplash.com/photo-1548199973-03cce0bbc87b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80'),
//                                         fit: BoxFit.cover,
//                                       )),
//                                 ),
//                               ),
//                               Expanded(
//                                   flex: 1,
//                                   child: Column(
//                                     children: [
//                                       Text(
//                                         "Si Anying",
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       Text("")
//                                     ],
//                                   ))
//                             ],
//                           ),
//                         ));

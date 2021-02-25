// import 'package:flutter/material.dart';

// class PetsSearch extends StatefulWidget {
//   PetsSearch({Key key}) : super(key: key);

//   @override
//   _PetsSearchState createState() => _PetsSearchState();
// }

// class _PetsSearchState extends State<PetsSearch> {
//   @override
//   Widget build(BuildContext context) {
//     const double _kHorizontal = 15;
//     return SafeArea(
//       child: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Expanded(
//                     child: Container(
//                   margin: EdgeInsets.symmetric(
//                       vertical: 10, horizontal: _kHorizontal),
//                   decoration: BoxDecoration(boxShadow: [
//                     BoxShadow(
//                         blurRadius: 4,
//                         spreadRadius: 2,
//                         color: Colors.grey[300],
//                         offset: Offset.fromDirection(70, 3))
//                   ]),
//                   child: TextFormField(
//                     style: TextStyle(fontSize: 18),
//                     decoration: InputDecoration(
//                         hintText: "Search",
//                         suffixIcon: Icon(Icons.search, size: 30),
//                         fillColor: Colors.white,
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide.none,
//                         )),
//                   ),
//                 )),
//               ],
//             ),
//           ),

//           SliverToBoxAdapter(
//             child: Container(
//                 margin: EdgeInsets.symmetric(horizontal: _kHorizontal),
//                 height: 80,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.blue[200],
//                 ),
//                 child: Text("Test")),
//           ),
//           SliverToBoxAdapter(
//             child: Container(
//                 margin: EdgeInsets.symmetric(horizontal: _kHorizontal),
//                 child: ListView.builder(
//                     itemCount: 10,
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemBuilder: (context, index) {
//                       return Container(
//                           margin: EdgeInsets.only(top: 10),
//                           padding: EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white,
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Container(
//                                 height: 80,
//                                 width: 80,
//                                 margin: EdgeInsets.all(5),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   // image: DecorationImage(
//                                   //   image: AssetImage(
//                                   //       'images/assets/instagram.png'),
//                                   // ),
//                                 ),
//                                 child: Placeholder(),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                 child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text("Kitty Nama Panjang",
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 18,
//                                           )),
//                                       Text("Location"),
//                                       Text("Owner : Anan"),
//                                       Row(
//                                         children: [
//                                           Text("Female"),
//                                           Text("|"),
//                                           Text("18 th")
//                                         ],
//                                       )
//                                     ]),
//                               ),
//                             ],
//                           ));
//                     })),
//           )
//         ],
//       ),
//     );
//   }
// }

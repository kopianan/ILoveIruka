import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/transaction/history_transaction.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(builder: (context, dataBridge, _) {
      final user = dataBridge.getUserData().user;
      return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xff558dc5),
                Color(0xff0b4987),
              ])),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${user.name}",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: RaisedButton(
                                color: Color(0xffd45500),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(HistoryTransaction.route);
                                },
                                child: Text(
                                  "Transaction History",
                                  style: TextStyle(color: Colors.white),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Total Point",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "100",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 4,
                        clipBehavior: Clip.hardEdge,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "${user.id}",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                alignment: Alignment.center,
                                width: double.infinity,
                                color: Colors.white,
                                child: QrImage(
                                  foregroundColor: Colors.black,
                                  gapless: false,
                                  data: "${user.id}",
                                  version: QrVersions.auto,
                                  size: 300.0,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      );
    });
  }
}

// import 'package:flutter/material.dart';
// import 'package:i_love_iruka/models/model/login_response.dart';
// import 'package:i_love_iruka/provider/data_bridge.dart';
// import 'package:i_love_iruka/util/constants.dart';
// import 'package:i_love_iruka/util/shared_pref.dart';
// import 'package:provider/provider.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class AccountPage extends StatefulWidget {
//   _AccountPageState createState() => _AccountPageState();
// }

// class _AccountPageState extends State<AccountPage> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<DataBridge>(builder: (context, dataBridge, _) {
//       final user = dataBridge.getUserData().user;
//       return CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: true,
//             floating: true,
//             snap: true,

//           title: Text("Hello ${user.name}"),
//             actions: <Widget>[Icon(Icons.info)],
//           ),
//           SliverToBoxAdapter(
//             child: buildContainerBody(user),
//           )
//         ],
//       );
//     });
//   }

//   Container buildContainerBody(User user) {
//     return Container(
//       margin: EdgeInsets.all(15),
//       child: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 20,
//           ),
//           Card(
//             elevation: 4,
//             clipBehavior: Clip.hardEdge,
//             child: Column(
//               children: <Widget>[
//                 Container(height: 50,color: Colors.blueAccent,),
//                 Container(
//                     alignment: Alignment.center,
//                     width: double.infinity,
//                     color: Colors.white,
//                     child: QrImage(
//                       foregroundColor: Colors.black,
//                       gapless: false,
//                       data: "${user.id}",
//                       version: QrVersions.auto,
//                       size: 250.0,
//                     )),
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10),
//                   child: Text(
//                     "${user.id}",
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           buildPointDashboard(),
//         ],
//       ),
//     );
//   }

//   Container buildPointDashboard() {
//     return Container(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Card(
//               elevation: 4,
//               child: Row(
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                     child: Image.asset(
//                       "images/assets/medal.png",
//                       width: 70,
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                     child: Column(
//                       children: <Widget>[
//                         Text(
//                           "Total Point",
//                           style: TextStyle(fontSize: 17),
//                         ),
//                         Text(
//                           "23",
//                           style: TextStyle(
//                               fontSize: 40, fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                       child: Container(
//                     alignment: Alignment.centerRight,
//                     margin: EdgeInsets.symmetric(horizontal: 10),
//                     child: Text("Transaction History"),
//                   ))
//                 ],
//               )),
//         ],
//       ),
//     );
//   }
// }

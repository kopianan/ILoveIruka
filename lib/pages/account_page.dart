// import 'package:flutter/material.dart';
// import 'package:i_love_iruka/data/repository.dart';
// import 'package:i_love_iruka/models/model/login_response.dart';
// import 'package:i_love_iruka/provider/data_bridge.dart';
// import 'package:i_love_iruka/screens/transaction/history_transaction.dart';
// import 'package:provider/provider.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class AccountPage extends StatefulWidget {
//   AccountPage({Key key}) : super(key: key);

//   @override
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
//       return Container(
//         padding: EdgeInsets.only(top: 20),
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomRight,
//                 colors: [
//               Color(0xff558dc5),
//               Color(0xff0b4987),
//             ])),
//         child: SingleChildScrollView(
//                     child: Column(
//             children: <Widget>[
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     Expanded(
//                         flex: 7,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text(
//                               "${dataBridge.getUserData().user.name}",
//                               style:
//                                   TextStyle(fontSize: 30, color: Colors.white),
//                             ),
//                             Container(
//                               alignment: Alignment.bottomLeft,
//                               child: RaisedButton(
//                                 color: Color(0xffd45500),
//                                 onPressed: () {
//                                   Navigator.of(context)
//                                       .pushNamed(HistoryTransaction.route);
//                                 },
//                                 child: Text(
//                                   "Transaction History",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         )),
//                     FutureBuilder(
//                         future: _repository.getPointAndLastTransactionData(dataBridge.getUserData().user.id),
//                         builder: (context, snapshot) {
//                           switch (snapshot.connectionState) {
//                             case ConnectionState.none:
//                               // TODO: Handle this case.
//                               break;
//                             case ConnectionState.waiting:
//                               // TODO: Handle this case.
//                               break;
//                             case ConnectionState.active:
//                               // TODO: Handle this case.
//                               break;
//                             case ConnectionState.done:
//                               if (snapshot.hasError) {
//                               } else {
                                
//                             dataBridge.setTotalPoint(snapshot.data); 
//                                 return Expanded(
//                                     flex: 3,
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: <Widget>[
//                                         Text(
//                                           "Total Point",
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 20),
//                                         ),
//                                         Text(
//                                           "${snapshot.data.toString()}",
//                                           style: TextStyle(
//                                               fontSize: 40,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.white),
//                                         ),
//                                       ],
//                                     ));
//                               }
//                               break;
//                           }
//                           return Container() ; 
//                         }
                        
//                         )
//                   ],
//                 ),
//               ),
//               Container(
//                   margin: EdgeInsets.all(15),
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Card(
//                         elevation: 4,
//                         clipBehavior: Clip.hardEdge,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               margin: EdgeInsets.symmetric(vertical: 10),
//                               child: Text(
//                                 "${dataBridge.getUserData().user.id}",
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                             Container(
//                                 margin: EdgeInsets.symmetric(vertical: 20),
//                                 alignment: Alignment.center,
//                                 width: double.infinity,
//                                 color: Colors.white,
//                                 child: QrImage(
//                                   foregroundColor: Colors.black,
//                                   gapless: false,
//                                   data: "${dataBridge.getUserData().user.id}",
//                                   version: QrVersions.auto,
//                                   size: 300.0,
//                                 )),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ))
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }

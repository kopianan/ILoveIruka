import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:i_love_iruka/features/data/dashboard_store.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:url_launcher/url_launcher.dart';

class UserAccountPage extends StatefulWidget {
  UserAccountPage({Key key}) : super(key: key);

  @override
  _UserAccountPageState createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  double alamat;
  String formatNumber(double number) {
    return NumberFormat("#,###").format(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Consumer<DataBridge>(
        builder: (context, dataBridge, _) {
          var distanceTextStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.bold);
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Account",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          SharedPref().loadUserFromLocal(prefKey: Constants.userSharedPref).then((onValue) {
                            dataBridge.setUserData(onValue);

                            Routes.navigator.pushNamed(Routes.editProfile, arguments: EditProfileArguments(loginData: dataBridge.getUserData()));
                          });
                        },
                      )
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SliverToBoxAdapter(
                  child: StateBuilder<DashboardStore>(
                    models: [Injector.getAsReactive<DashboardStore>()],
                    initState: (context, initReact) => initReact.setState(
                      (fn) => fn.callGetPointAndLastTransaction(dataBridge.getUserData().user.id),
                    ),
                    builder: (context, react) {
                      if (react.isWaiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (react.hasError) {
                        return Container(
                          child: Center(
                            child: Icon(Icons.refresh),
                          ),
                        );
                      } else {
                        return Card(
                          elevation: 4,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: RaisedButton(
                                    color: Color(0xffd45500),
                                    onPressed: () {
                                      dataBridge.setTotalPoint(react.state.getPointAndLastTransaction.toString());
                                      Routes.navigator.pushNamed(Routes.historyTransaction);
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
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Current Point",
                                      style: TextStyle(color: Colors.black, fontSize: 18),
                                    ),
                                    Text(
                                      "${react.state.getPointAndLastTransaction.toString()}",
                                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                      child: Card(
                    elevation: 4,
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        width: double.infinity,
                        color: Colors.white,
                        child: QrImage(
                          foregroundColor: Colors.black,
                          gapless: false,
                          data: "${dataBridge.getUserData().user.id}",
                          version: QrVersions.auto,
                        )),
                  )),
                ),
                SliverToBoxAdapter(
                  child: InkWell(
                    onTap: () async {
                      String googleUrl = 'https://www.google.com/maps/search/?api=1&query=-6.3788894,106.9197654';
                      if (await canLaunch(googleUrl)) {
                        await launch(googleUrl);
                      } else {
                        throw 'Could not open the map.';
                      }
                    },
                    child: Card(
                      elevation: 4,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.refresh,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () async {
                                      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                                      double disctance = await Geolocator().distanceBetween(position.latitude, position.longitude, -6.3788894, 106.9197654);
                                      Fluttertoast.showToast(msg: "Data Updated");
                                      setState(() {
                                        alamat = disctance;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Icon(
                                      Icons.person,
                                      color: Colors.yellow,
                                      size: 40,
                                    ),
                                    Expanded(
                                        child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: (alamat == null)
                                              ? Text(
                                                  "undefined",
                                                  style: distanceTextStyle,
                                                )
                                              : Text(
                                                  '${formatNumber((alamat / 1000))} Km',
                                                  style: distanceTextStyle,
                                                ),
                                        ),
                                        Divider(
                                          color: Colors.blueGrey,
                                          thickness: 2,
                                        ),
                                      ],
                                    )),
                                    Icon(
                                      Icons.location_searching,
                                      color: Colors.red,
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )

                // Consumer<DataBridge>(builder: (context, dataBridge, _) {
                //   return Container(
                //     decoration: BoxDecoration(),
                //     child: SingleChildScrollView(
                //       child: Column(
                //         children: <Widget>[
                //           Container(
                //             margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               mainAxisSize: MainAxisSize.max,
                //               children: <Widget>[
                //                 Expanded(
                //                     flex: 7,
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Text(
                //                           "Welcome",
                //                           overflow: TextOverflow.ellipsis,
                //                           // "asdfklasjdflkadsjfl;ksdajfklsadjf",
                //                           style: TextStyle(fontSize: 30, color: Colors.black),
                //                         ),
                //                         // Container(
                //                         //   alignment: Alignment.bottomLeft,
                //                         //   child: RaisedButton(
                //                         //     color: Color(0xffd45500),
                //                         //     onPressed: () {
                //                         //       Navigator.of(context).pushNamed(HistoryTransaction.route);
                //                         //     },
                //                         //     child: Text(
                //                         //       "Transaction History",
                //                         //       style: TextStyle(color: Colors.white),
                //                         //     ),
                //                         //     shape: RoundedRectangleBorder(
                //                         //       borderRadius: BorderRadius.circular(20),
                //                         //     ),
                //                         //   ),
                //                         // ),
                //                       ],
                //                     )),
                //                 StateBuilder<DashboardStore>(
                //                   models: [Injector.getAsReactive<DashboardStore>()],
                //                   initState: (context, initReact) => initReact.setState((fn) => fn.callGetPointAndLastTransaction(dataBridge.getUserData().user.id)),
                //                   builder: (context, react) {
                //                     if (react.isWaiting) {
                //                       return Center(
                //                         child: CircularProgressIndicator(),
                //                       );
                //                     } else if (react.hasError) {
                //                       return Expanded(
                //                         flex: 3,
                //                         child: Container(
                //                           child: Center(
                //                             child: Icon(Icons.refresh),
                //                           ),
                //                         ),
                //                       );
                //                     } else {
                //                       return Expanded(
                //                           flex: 3,
                //                           child: Column(
                //                             crossAxisAlignment: CrossAxisAlignment.end,
                //                             mainAxisAlignment: MainAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(
                //                                 "Total Point",
                //                                 style: TextStyle(color: Colors.black, fontSize: 20),
                //                               ),
                //                               Text(
                //                                 "${react.state.getPointAndLastTransaction.toString()}",
                //                                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
                //                               ),
                //                             ],
                //                           ));
                //                     }
                //                   },
                //                 ),
                //               ],
                //             ),
                //           ),
                //           Container(
                //               margin: EdgeInsets.all(15),
                //               child: Card(
                //                 elevation: 4,
                //                 clipBehavior: Clip.hardEdge,
                //                 child: Container(
                //                     alignment: Alignment.center,
                //                     width: double.infinity,
                //                     color: Colors.white,
                //                     child: QrImage(
                //                       foregroundColor: Colors.black,
                //                       gapless: false,
                //                       data: "${dataBridge.getUserData().user.id}",
                //                       version: QrVersions.auto,
                //                     )),
                //               ))
                //         ],
                //       ),
                //     ),
                //   );
                // })
              ],
            ),
          );
        },
      ),
    ));
  }
}

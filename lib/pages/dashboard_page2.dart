import 'package:flutter/material.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DashboardPage2 extends StatefulWidget {
  _DashboardPage2State createState() => _DashboardPage2State();
}

class _DashboardPage2State extends State<DashboardPage2> {
  LoginResponse dataLogin = LoginResponse();

  @override
  void initState() {
    super.initState();
    loadSharedPrefs();
  }

  loadSharedPrefs() async {
    try {
      LoginResponse user =
          LoginResponse.fromJson(await SharedPref().getLoginData());
      setState(() {
        dataLogin = user;
      });
    } catch (Excepetion) {
      Scaffold.of(context).showSnackBar(SnackBar(
          content: new Text("Nothing found!"),
          duration: const Duration(milliseconds: 500)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                (dataLogin.user == null)
                    ? CircularProgressIndicator()
                    : Text(
                        "Hello,\n${dataLogin.user.name}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: Colors.white,
                    child: (dataLogin.user.id != null)
                        ? QrImage(
                            foregroundColor: Colors.black,
                            gapless: false,
                            data: (dataLogin == null)
                                ? ""
                                : "${dataLogin.user.id}",
                            version: QrVersions.auto,
                            size: 250.0,
                          )
                        : Center(
                            child: Text("Something Wrong"),
                          ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      (dataLogin == null) ? "" : "${dataLogin.user.id}",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildPointDashboard(),
          ],
        ),
      ),
    ));
  }

  Container buildPointDashboard() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
              elevation: 4,
              child: Row(
                children: <Widget>[
                   Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Image.asset(
                      "images/assets/medal.png",
                      width: 70,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Total Point",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "23",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(child : Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Transaction History"),)) 
                 
                ],
              )
              // Row(
              //   children: <Widget>[
              //     Container(
              //         margin: EdgeInsets.all(10),
              //         padding: EdgeInsets.all(5),
              //         decoration: BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.black),
              //         width: 50,
              //         child: Image.asset("images/assets/point_services.png")),
              //     Expanded(
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: <Widget>[
              //           Text(
              //             "Service Point",
              //             style: TextStyle(
              //                 fontSize: 18, fontWeight: FontWeight.bold),
              //           ),
              //           Container(
              //             width: double.infinity,
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: <Widget>[
              //                 Expanded(
              //                   child: LinearPercentIndicator(
              //                     lineHeight: 14.0,
              //                     percent: 0.5,
              //                     backgroundColor: Colors.grey,
              //                     progressColor: Colors.blue,
              //                   ),
              //                 ),
              //                 Container(
              //                     margin: EdgeInsets.symmetric(horizontal: 10),
              //                     child: Text("10/12"))
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     )
              //   ],
              // ),
              ),
        ],
      ),
    );
  }
}

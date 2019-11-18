import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/util/constants.dart';
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    (dataLogin == null)
                        ? CircularProgressIndicator()
                        : Text(
                            "Hello,\n${dataLogin.user.name}",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.date_range),
                        Text(DateTime.now().toIso8601String())
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              (dataLogin.user.picture == null)
                                  ? "images/assets/pet_shop.png"
                                  : Constants.getWebUrl() +
                                      dataLogin.user.picture,
                            ))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(horizontal: 20),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Color(0xff0288d1),
                    height: 60.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: Colors.white,
                    child: (dataLogin.user.id != null)
                        ? QrImage(
                            foregroundColor: Colors.black,
                            gapless: false,
                            embeddedImage: AssetImage("images/assets/iruka_logo.png",),
                            data: (dataLogin == null)
                                ? ""
                                : "${dataLogin.user.id}",
                            version: QrVersions.auto,
                            size: 200.0,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  width: 50,
                  child: Image.asset("images/assets/point_food.png")),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Food Point",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: LinearPercentIndicator(
                              lineHeight: 14.0,
                              percent: 0.5,
                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("10/12"))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  width: 50,
                  child: Image.asset("images/assets/point_services.png")),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Service Point",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: LinearPercentIndicator(
                              lineHeight: 14.0,
                              percent: 0.5,
                              backgroundColor: Colors.grey,
                              progressColor: Colors.blue,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("10/12"))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

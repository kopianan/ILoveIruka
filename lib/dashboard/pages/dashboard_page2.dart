import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DashboardPage2 extends StatefulWidget {
  _DashboardPage2State createState() => _DashboardPage2State();
}

class _DashboardPage2State extends State<DashboardPage2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildPointDashboard(),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.white,
            child: QrImage(
              data: "123456789lajdhf lkajdhflk lakjdhf 0",
              version: QrVersions.auto,
              size: 300.0,
            ),
          )
        ],
      ),
    );
  }

  Container buildPointDashboard() {
    return Container(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.black),
                    width: 50,
                    child: Image.asset("images/assets/point_food.png")),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Food Point",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
            Divider(color: Colors.grey,
            indent: 20,endIndent: 20,)
            ,
            Row(
              children: <Widget>[

                  Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.black),
                    width: 50,
                    child:  Image.asset("images/assets/point_services.png")),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Service Point",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}

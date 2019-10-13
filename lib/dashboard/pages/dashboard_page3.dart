import 'package:flutter/material.dart';

class DashboardPage3 extends StatefulWidget {
  DashboardPage3({Key key}) : super(key: key);

  _DashboardPage3State createState() => _DashboardPage3State();
}

class _DashboardPage3State extends State<DashboardPage3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: buildCard(),
        ),
      ),
    );
  }

  Card buildCard() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            leading: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CircleAvatar(),
            ),
            title: Text(
              "Introduction to Driving",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

            subtitle: Row(
              children: <Widget>[
                Icon(Icons.linear_scale, color: Colors.blue),
                Text(" Intermediate", style: TextStyle(color: Colors.white))
              ],
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0)),
      ),
    );
  }
}

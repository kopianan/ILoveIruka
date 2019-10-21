import 'package:flutter/material.dart';

class DashboardPage3 extends StatefulWidget {

  _DashboardPage3State createState() => _DashboardPage3State();
}

class _DashboardPage3State extends State<DashboardPage3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
          child: Column(children: <Widget>[
        buildCard(),
        buildCard(),
        buildCard(),
        buildCard(),
        buildCard(),
        buildCard(),
        buildCard(),
        buildCard(),
      ],),
    );
  }

  Widget buildCard() {
    return  Card(
      color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 3.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          alignment: Alignment.center,
          child: ListTile(
              leading: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: CircleAvatar(),
              ),
              title: Text(
                "Introduction to Driving",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // subtitle: Text("Interadsfasdf asdfasdf asdf aaadsfasdfsdaf adfasdf asdfasdf adfasdfsdf adfaadfasd adsfasdf asdfasd sdf mediate", style: TextStyle(color: Colors.white)),
              isThreeLine: false,
              subtitle: Row(
                children: <Widget>[
                  Icon(Icons.linear_scale, color: Colors.blue),
                  Text(" Intermediat", style: TextStyle(color: Colors.black)),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.black, size: 30.0)),
        ),
      
    );
  }
}

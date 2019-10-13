import 'package:flutter/material.dart';

class DashboardPage3 extends StatefulWidget {
  DashboardPage3({Key key}) : super(key: key);

  _DashboardPage3State createState() => _DashboardPage3State();
}

class _DashboardPage3State extends State<DashboardPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Card(
            
            child: Row(
              children: <Widget>[
                Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://i.imgur.com/BoN9kdC.png")
                        )
                    )),
                Container(
                  child: Column(children: <Widget>[
                    ListTile(
                      title: Text("Groomer Name"),
                      subtitle: Text("Ini adalh groomar yang lakdjfl;"),
                    )
                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

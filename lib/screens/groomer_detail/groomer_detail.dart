import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:i_love_iruka/util/constants.dart';

class GroomerDetail extends StatefulWidget {
  final ListUser data;
  GroomerDetail({this.data});
  @override
  _GroomerDetailState createState() => _GroomerDetailState();
}

class _GroomerDetailState extends State<GroomerDetail> {
  @override
  void initState() { 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var subTitleTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 20,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 300,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    child: Image.network("http://iruka.diodeiva.dev/Media/Event/iruka_logo.png"),
                    maxRadius: 80,
                    minRadius: 80,
                  ),
                  Text(
                    "${widget.data.name}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bio",
                    style: subTitleTextStyle,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                      "${widget.data.description}")
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Address",
                    style: subTitleTextStyle,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text("${widget.data.address}")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FloatingActionButton.extended(
                        
                        label: Text("Whatsapp"),
                        icon: Icon(FontAwesomeIcons.whatsapp),
                        onPressed: () {},
                        
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

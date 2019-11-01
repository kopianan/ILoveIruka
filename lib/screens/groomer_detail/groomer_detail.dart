import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GroomerDetail extends StatefulWidget {
  @override
  _GroomerDetailState createState() => _GroomerDetailState();
}

class _GroomerDetailState extends State<GroomerDetail> {
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
                    minRadius: 80,
                  ),
                  Text(
                    "Nama Lengkap",
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
                      "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with: ")
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
                  Text("specimen book. It usually begins with: ")
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

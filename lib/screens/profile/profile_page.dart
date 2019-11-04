import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        // appBar: AppBar(
        //   title: Text("Profile View"),
        //   actions: <Widget>[
        //     Container(
        //         margin: EdgeInsets.only(right: 10),
        //         alignment: Alignment.center,
        //         child: Text("Save"))
        //   ],
        // ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                actions: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    hoverColor: Colors.yellow,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Text("Save"),
                    ),
                  )
                ],
                title: Text("Profile View"),
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: buildContainerHeaderProfile(),
                ),
              ),
              SliverFillRemaining(
                  fillOverscroll: false,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("General Profile"),
                        
                      ],
                    ),
                  ))
            ],
          ),
        )
        // body: Column(
        //   children: <Widget>[
        //     buildContainerHeaderProfile(),
        //     Container(
        //       margin: EdgeInsets.all(20),
        //       child: Column(
        //         children: <Widget>[
        //           buildTextFieldProfile("Fullname"),
        //           buildTextFieldProfile("Username"),
        //           buildTextFieldProfile("Email"),
        //           buildTextFieldProfile("Phone Number"),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        );
  }

  Widget buildContainerHeaderProfile() {
    return Stack(children: <Widget>[
      ConstrainedBox(
        child: Image.asset(
          "images/assets/profile_placeholder.png",
          fit: BoxFit.cover,
        ),
        constraints: BoxConstraints.expand(),
      ),
      Container(
        child: BackdropFilter(
          filter: prefix0.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(

                    child: Image.asset("images/assets/profile_placeholder.png",fit: BoxFit.cover,),
                    backgroundColor: Colors.black,
                    maxRadius: 70,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Nama Customer",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),),
        ),
      ),
    ]);
    // return BackdropFilter(
    //   filter: prefix0.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
    //   child: Container(
    //          alignment: Alignment.center,
    //     height: 200,
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: <Widget>[
    //         CircleAvatar(
    //           child: Text(
    //             "A",
    //           ),
    //           backgroundColor: Colors.black,
    //           maxRadius: 50,
    //         ),
    //         SizedBox(
    //           height: 10,
    //         ),
    //         Text(
    //           "Nama Customer",
    //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    //         )
    //       ],
    //     ),

    //   ),
    // );
  }

  TextFormField buildTextFieldProfile(String label) {
    return new TextFormField(
      decoration: new InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(25.0),
          borderSide: new BorderSide(),
        ),
        //fillColor: Colors.green
      ),
      validator: (val) {
        if (val.length == 0) {
          return "Email cannot be empty";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      style: new TextStyle(
        fontFamily: "Poppins",
      ),
    );
  }
}

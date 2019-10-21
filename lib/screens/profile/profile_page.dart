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
                onTap: () {Navigator.pop(context);},
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
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: buildContainerHeaderProfile(),
            ),
          ),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildTextFieldProfile("Fullname"),
                    buildTextFieldProfile("Username"),
                    buildTextFieldProfile("Email"),
                    buildTextFieldProfile("Phone Number"),
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

  Container buildContainerHeaderProfile() {
    return Container(
      alignment: Alignment.center,
      height: 200,
      color: Colors.green,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            child: Text(
              "A",
            ),
            backgroundColor: Colors.black,
            maxRadius: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Nama Customer",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
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

import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';

class ProfilePage extends StatefulWidget {
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  LoginResponse dataLogin = LoginResponse();

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
  void initState() {
    super.initState();
    loadSharedPrefs();
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
        body:  CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                // pinned: true,
                floating: true,
                snap: true,
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
                  background:
                      buildContainerHeaderProfile((dataLogin == null)? "":
                      "${dataLogin.user.picture.toString()}",),
                ),
              ),
              SliverFillRemaining(
                  fillOverscroll: false,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "General Information",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(FontAwesomeIcons.edit)
                              ],
                            )),
                        Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildRowGeneralInformation(
                          FontAwesomeIcons.phone,
                          (dataLogin == null)
                              ? ""
                              : "${dataLogin.user.phoneNumber.toString()}",
                        ),
                        buildRowGeneralInformation(
                          Icons.mail,
                          (dataLogin == null)
                              ? ""
                              : "${dataLogin.user.email.toString()}",
                        ),
                        buildRowGeneralInformation(
                          FontAwesomeIcons.mapPin,
                          (dataLogin == null)
                              ? ""
                              : "${dataLogin.user.address.toString()}",
                        ),
                      ],
                    ),
                  ))
            ],
          ),
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

  Widget buildRowGeneralInformation(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              child: Icon(icon),
            ),
          ),
          Expanded(
              flex: 8,
              child: Container(
                child: Text("$text"),
              ))
        ],
      ),
    );
  }

  Widget buildContainerHeaderProfile(String image) {
    return Stack(children: <Widget>[
      ConstrainedBox(
        child: Image.network(
          "${Constants.getWebUrl() + image}",
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.green,
                        shape: BoxShape.circle,

                        image: new DecorationImage(

                            fit: BoxFit.cover,
                            image: new NetworkImage("${Constants.getWebUrl() + image}",)
                        )
                    )),
              
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      (dataLogin == null)
                          ? ""
                          : "${dataLogin.user.name.toString()}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                        width: 30,
                        child: Icon(
                          Icons.edit,
                          size: 17,
                        ))
                  ],
                )
              ],
            ),
          ),
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

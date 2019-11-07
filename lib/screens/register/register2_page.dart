import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import '../../data/repository.dart';
import '../../models/model/roles_model.dart';

class Register2Page extends StatefulWidget {
  Register2Page({Key key}) : super(key: key);

  @override
  _Register2PageState createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {
  Future<RolesModel> _getRolesOff;
  Repository _repository = Repository();
  String _dropDownValue;

  ScrollController c;
  @override
  void initState() {
    _getRolesOff = _repository.getRolesList();
    fillDataSlide();
    c = new PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: PageView(
        controller: c,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            color: Colors.red,
            child: FlatButton(
              child: Text("NEXT"),
              onPressed: () {
                c.animateTo(MediaQuery.of(context).size.width,
                    duration: new Duration(seconds: 1),
                    curve: Curves.bounceOut);
              },
            ),
          ),
          Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Who Are You ? "),
                  buildDropdownRole(),
                  FlatButton(
                    child: Text("NEXT"),
                    onPressed: () {
                      c.animateTo(0,
                          duration: new Duration(seconds: 1),
                          curve: Curves.bounceOut);
                    },
                  ),
                ],
              ))
        ],
      )),
    );
  }

  Widget buildDropdownRole() {
    return FutureBuilder(
      future: _getRolesOff,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        RolesModel roles = snapshot.data;
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            // TODO: Handle this case.
            break;
          case ConnectionState.waiting:
            return DropdownButton();
            break;
          case ConnectionState.active:
            // TODO: Handle this case.
            break;
          case ConnectionState.done:
            return DropdownButton(
              isExpanded: true,
              onChanged: (val) {
                setState(() {
                  _dropDownValue = val;
                });
              },
              value: _dropDownValue,
              hint: Text("User Type"),
              items: roles.roleList.map((f) {
                return DropdownMenuItem(
                  child: Text(f.name),
                  value: f.name,
                );
              }).toList(),
            );
            break;
        }
      },
    );
  }

  List<Slide> slides = new List();
  void fillDataSlide() {
    slides.add(
      new Slide(
        title: "Who Are You ?",
        styleTitle: TextStyle(
            color: Color(0xffD02090),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Ye indulgence unreserved connection alteration appearance",
        centerWidget: buildDropdownRole(),
        styleDescription: TextStyle(
            color: Color(0xffD02090),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        colorBegin: Color(0xffFFFACD),
        colorEnd: Color(0xffFF6347),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        title: "COFFEE",
        styleTitle: TextStyle(
            color: Color(0xffD02090),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription: TextStyle(
            color: Color(0xffD02090),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "images/photo_coffee_shop.png",
        colorBegin: Color(0xffFFA500),
        colorEnd: Color(0xff7FFFD4),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }
}

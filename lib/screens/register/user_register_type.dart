import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';

import 'register_additional.dart';

class UserRegisterType extends StatefulWidget {
  const UserRegisterType({
    @required this.context,
    @required RegisterAdditional registerAdditional,
    @required this.c,
    Key key,
  })  : _registerAdditional = registerAdditional,
        super(key: key);
  final RegisterAdditional _registerAdditional;
  final BuildContext context;
  final ScrollController c;

  @override
  _UserRegisterTypeState createState() => _UserRegisterTypeState();
}

class _UserRegisterTypeState extends State<UserRegisterType> {
  Future<RolesModel> _getRolesOff;
  Repository _repository = Repository();
  String _dropDownValue;
  ScrollController scroll ; 

  @override
  void initState() {
    super.initState();
scroll = widget.c ; 
    _getRolesOff = _repository.getRolesList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            child: Text(
          "Who Are You ? ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        buildDropdownRole(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            child: Icon(FontAwesomeIcons.arrowRight),
            onPressed: () {
              ///validate before go to next page
              print(_dropDownValue.toString() + "DropDown");
              if (_dropDownValue == null) {
                Fluttertoast.showToast(
                  msg: "Please Choose Type First",
                );
              } else {
                scroll.animateTo(MediaQuery.of(context).size.width * 1,
                    duration: new Duration(seconds: 1),
                    curve: Curves.easeInCubic);
              }
            },
          ),
        ),
      ],
    ));
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
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
            // TODO: Handle this case.
            break;
          case ConnectionState.done:
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: DropdownButton(
                underline: SizedBox(),
                isDense: false,
                elevation: 3,
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
                    child: Text(
                      f.name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    value: f.name,
                  );
                }).toList(),
              ),
            );
            break;
        }
      },
    );
  }
}

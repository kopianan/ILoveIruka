
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:provider/provider.dart';

import '../register_additional.dart';
import '../register_widget.dart';

class ChooseAccountType extends StatelessWidget {
  const ChooseAccountType({
    Key key,
    @required RegisterAdditional registerAdditional,
    @required this.c,
  })  : _registerAdditional = registerAdditional,
        super(key: key);

  final RegisterAdditional _registerAdditional;
  final ScrollController c;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Consumer<DataBridge>(
      builder: (_, dataBridge, __) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Text(
            "Who Are You ? ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "images/assets/iruka_logo.png",
              width: 200,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RoleDropDown(),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  child: IconButton(
                      onPressed: () {},
                      tooltip: (dataBridge.getRoleList() == null)
                          ? "Choose your role list for registration"
                          : (dataBridge
                                  .getRoleList()
                                  .name
                                  .toString()
                                  .toLowerCase()
                                  .contains("groomer"))
                              ? "Register as Groomer to promote yourself"
                              : (dataBridge
                                      .getRoleList()
                                      .name
                                      .toString()
                                      .toLowerCase()
                                      .contains("owner"))
                                  ? "You can find groomer to hire them"
                                  : (dataBridge
                                          .getRoleList()
                                          .name
                                          .toString()
                                          .toLowerCase()
                                          .contains("customer"))
                                      ? "Make your pet happy and find more exciting stuff"
                                      : "No Descritpion",
                      icon: Icon(
                        Icons.info,
                        color: Colors.grey,
                      )))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  child: Icon(FontAwesomeIcons.arrowRight),
                  onPressed: () {
                    ///validate before go to next page
                    print(dataBridge.getRoleList());
                    if (dataBridge.getRoleList().name == null) {
                      Fluttertoast.showToast(
                        msg: "Please Choose Type First",
                      );
                    } else {
                      _registerAdditional.nextAnimated(context, c, 1);
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

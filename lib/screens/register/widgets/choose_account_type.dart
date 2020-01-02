import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';
import 'package:i_love_iruka/widgets/register_button_next_and_back.dart';
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
              // Container(
              //     margin: EdgeInsets.only(left: 10),
              //     alignment: Alignment.center,
              //     child: IconButton(
              //         // onPressed: () {},
              //         // tooltip: (dataBridge.getRoleList() == null)
              //         //     ? "Choose your role list for registration"
              //         //     : (dataBridge.getRoleList().name.toString().toLowerCase().contains("groomer"))
              //         //         ? "Register as Groomer to promote yourself"
              //         //         : (dataBridge.getRoleList().name.toString().toLowerCase().contains("owner"))
              //         //             ? "You can find groomer to hire them"
              //         //             : (dataBridge.getRoleList().name.toString().toLowerCase().contains("customer")) ? "Make your pet happy and find more exciting stuff" : "No Descritpion",
              //         icon: Icon(
              //           Icons.info,
              //           color: Colors.grey,
              //         )))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RegisterButtonNextAndBack(
                buttonText: "Back",
                buttonColor: ColorPalate.blueGradient1,
                onButtonPressed: () => Navigator.pop(context),
              ),
              RegisterButtonNextAndBack(
                buttonText: "Next",
                buttonColor: ColorPalate.darkOrange,
                onButtonPressed: () => _onButtonnextPressed(dataBridge, context),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  void _onButtonnextPressed(
    DataBridge dataBridge,
    BuildContext context,
  ) {
    ///validate before go to next page
    if (dataBridge.getRoleList() == null) {
      Fluttertoast.showToast(
        msg: "Please Choose Type First",
      );
    } else {
      _registerAdditional.nextAnimated(context, c, 1);
    }
  }
}

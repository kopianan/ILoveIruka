import 'package:flutter/material.dart';
import 'package:i_love_iruka/screens/register/register_additional.dart';

import '../register_widget.dart';

class GroomerForm extends StatelessWidget {
  const GroomerForm({
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Column(
            children: <Widget>[
              ProvinceDropdown(),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Text("Back"),
                onPressed: () {
                  int page;

                  _registerAdditional.backAnimated(context, c, 1);
                },
              ),
              Container(
                width: 150,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    _registerAdditional.nextAnimated(context, c, 4);
                  },
                  label: Text("Next"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

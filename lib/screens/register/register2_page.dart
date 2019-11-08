import 'package:flutter/material.dart';

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
          new Test(c: c),
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

  
}

class Test extends StatelessWidget {
  const Test({
    Key key,
    @required this.c,
  }) : super(key: key);

  final ScrollController c;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: FlatButton(
        child: Text("NEXT"),
        onPressed: () {
          c.animateTo(MediaQuery.of(context).size.width,
              duration: new Duration(seconds: 1),
              curve: Curves.bounceOut);
        },
      ),
    );
  }
}

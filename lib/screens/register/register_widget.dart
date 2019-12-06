import 'package:flutter/material.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:provider/provider.dart';

class RoleDropDown extends StatelessWidget {
  RoleDropDown({
    Key key,
    @required Future<RolesModel> getRolesOff,
  })  : _getRolesOff = getRolesOff,
        super(key: key);

  final Future<RolesModel> _getRolesOff;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getRolesOff,
      builder: (BuildContext context, AsyncSnapshot<RolesModel> snapshot) {
        RolesModel roles = snapshot.data;
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            break;
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
            break;
          case ConnectionState.done:
          
            return Consumer<DataBridge>(
              builder: (context, dataBridge, _) => Container(
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

                    final newVal = roles.roleList.firstWhere((test)=> test.name == val); 
                    dataBridge.setRoleList(newVal);
                  },
                  value: dataBridge.getRoleList().name,
                  hint: Text("User Type"),
                  items: roles.roleList.map((f) {
                    return DropdownMenuItem(
                      child: Text(
                        f.name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      value: f.name,
                    );
                  }).toList(),
                ),
              ),
            );
            break;
        }
      },
    );
  }
}

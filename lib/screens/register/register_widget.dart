import 'package:flutter/material.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/get_province_model.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:provider/provider.dart';

class ProvinceDropdown extends StatefulWidget {
  ProvinceDropdown({Key key}) : super(key: key);

  @override
  _ProvinceDropdownState createState() => _ProvinceDropdownState();
}

class _ProvinceDropdownState extends State<ProvinceDropdown> {
  Repository _repository = Repository();
  var future;
  @override
  void initState() {
    future = _repository.getProvinces();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GetProvinceModel>(
        future: future,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Container();
              break;
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
              break;
            case ConnectionState.active:
              return Container();
              break;
            case ConnectionState.done:
            print(snapshot.data); 
              if (snapshot.hasError) {
                return Container();
              } else {
                return DropdownButton(
                  underline: SizedBox(),
                  isDense: false,
                  elevation: 3,
                  isExpanded: true,
                  hint: Text("User Type"),
                  items: snapshot.data.rajaongkir.results.map((f) {
                    return DropdownMenuItem(
                        child: Text(
                          f.province,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        value: f.province);
                  }).toList(),
                  onChanged: (val) {},
                  value: null,
                );
              }
              break;
          }
          
        return Container() ; 
        });
  }
}

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
                    final newVal =
                        roles.roleList.firstWhere((test) => test.name == val);
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

import 'package:flutter/material.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/get_province_model.dart' as province;
import 'package:i_love_iruka/models/model/get_city_model.dart' as city;
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
    return Consumer<DataBridge>(
      builder: (_, dataBridge, __) => FutureBuilder<province.GetProvinceModel>(
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
                if (snapshot.hasError) {
                  return Container();
                } else {
                  return BuildDropdownProvince(
                    dataBridge: dataBridge,
                    provinceModel: snapshot.data.rajaongkir,
                  );
                }
                break;
            }

            return Container();
          }),
    );
  }
}

class BuildDropdownProvince extends StatefulWidget {
  const BuildDropdownProvince({Key key, this.provinceModel, this.dataBridge}) : super(key: key);
  final DataBridge dataBridge;
  final province.Rajaongkir provinceModel;

  @override
  _BuildDropdownProvinceState createState() => _BuildDropdownProvinceState();
}

class _BuildDropdownProvinceState extends State<BuildDropdownProvince> {
  Repository _repository = Repository();
  @override
  void initState() {
    Provider.of<DataBridge>(context, listen: false).setProvinceData(widget.provinceModel);
    super.initState();
  }

  province.Results tempProv;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 60,
      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), borderRadius: BorderRadius.circular(5)),
      child: DropdownButton(
        underline: SizedBox(),
        isDense: false,
        elevation: 3,
        isExpanded: true,
        hint: Text("Choose your province"),
        items: widget.dataBridge.getProvinceData.results.map((f) {
          return DropdownMenuItem(
              child: Text(
                f.province,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              value: f);
        }).toList(),
        onChanged: (province.Results val) {
          tempProv = val;

          widget.dataBridge.setCityResults(null);
          _repository.getCities(int.parse(val.provinceId)).then((onValue) {
            widget.dataBridge.setCityData(onValue.rajaongkir);
          });
        },
        value: tempProv,
      ),
    );
  }
}

class BuildCityDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 60,
        decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), borderRadius: BorderRadius.circular(5)),
        child: Consumer<DataBridge>(
          builder: (_, dataBridge, __) => DropdownButton(
            underline: SizedBox(),
            isDense: false,
            elevation: 3,
            isExpanded: true,
            hint: Text("Choose your city"),
            items:(dataBridge.getCityData == null) ? null :  dataBridge.getCityData.results.map((f) {
              return DropdownMenuItem(
                  child: Text(
                    (f.type == "Kota") ? f.cityName : f.type + " " + f.cityName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  value: f);
            }).toList(),
            onChanged: (city.Results val) {
              dataBridge.setCityResults(val);
            },
            value: (dataBridge.getCityResults == null) ? null : dataBridge.getCityResults ,
          ),
        ));
  }
}

class RoleDropDown extends StatefulWidget {
  @override
  _RoleDropDownState createState() => _RoleDropDownState();
}

class _RoleDropDownState extends State<RoleDropDown> {
  var _getRolesOff;
  Repository _repository = Repository();

  @override
  void initState() {
    _getRolesOff = _repository.getRolesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<RolesModel>(
      future: _getRolesOff,
      builder: (BuildContext context, AsyncSnapshot<RolesModel> snapshot) {
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
                decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(10))),
                child: DropdownButton(
                  underline: SizedBox(),
                  isDense: false,
                  elevation: 3,
                  isExpanded: true,
                  onChanged: (val) {
                    dataBridge.setRoleList(val);
                  },
                  value: dataBridge.getRoleList(),
                  hint: Text("User Type"),
                  items: snapshot.data.roleList.map((f) {
                    return DropdownMenuItem(
                      child: Text(
                        f.toString(),
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      value: f.toString(),
                    );
                  }).toList(),
                ),
              ),
            );
            break;
        }
        return Container();
      },
    );
  }
}

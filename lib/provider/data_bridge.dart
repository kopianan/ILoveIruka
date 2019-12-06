import 'package:flutter/cupertino.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';

class DataBridge extends ChangeNotifier {
  String _filePath;
  LoginResponse _userData;
  RoleList _roleList;

  void setRoleList(RoleList roleList) {
    this._roleList = roleList;
    notifyListeners();
  }

  RoleList getRoleList() {
    if (this._roleList == null)
      return RoleList(name: null);
    else
      return this._roleList;
  }

  void setUserData(LoginResponse userData) {
    this._userData = userData;
    notifyListeners();
  }

  LoginResponse getUserData() {
    return this._userData;
  }

  void setFileName(String name) {
    this._filePath = name;
    notifyListeners();
  }

  String getFileName() {
    return _filePath;
  }
}

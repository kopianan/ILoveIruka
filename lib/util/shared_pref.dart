import 'dart:convert';

import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  savingUserToLocal({dynamic loginData, String prefKey}) async {
    SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
    await _sharedPreferences.setString(prefKey, loginData);
  }

  Future<LoginResponse> loadUserFromLocal({String prefKey}) async {
    SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
    String _data;
    LoginResponse _dataLogin;
    try {
      _data = _sharedPreferences.getString(prefKey);
      _dataLogin = LoginResponse.fromJson(json.decode(_data));
    } catch (e) {
      _dataLogin = null;
    }
    return _dataLogin;
  }

  saveLoginData(loginData) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("login_data", json.encode(loginData));
    print("saved to local");
  }

  Future<dynamic> getLoginData() async {
    final prefs = await SharedPreferences.getInstance();
    final stringLogin = prefs.getString("login_data");
    if (stringLogin == null)
      return null;
    else
      return json.decode(stringLogin);
  }

  LoginResponse stringToLoginModel(String jsonData) {
    final loginData = LoginResponse.fromJson(json.decode(jsonData));
    return loginData;
  }

  clearPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }
}

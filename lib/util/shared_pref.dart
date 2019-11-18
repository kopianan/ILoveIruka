import 'dart:convert';

import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  saveLoginData(loginData) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("login_data", json.encode(loginData));
  }

  getLoginData() async {
    final prefs = await SharedPreferences.getInstance();
    final stringLogin = prefs.getString("login_data");
    return json.decode(stringLogin);
  }

  LoginResponse stringToLoginModel(String jsonData) {
    final loginData = LoginResponse.fromJson(json.decode(jsonData));
    return loginData;
  }
}

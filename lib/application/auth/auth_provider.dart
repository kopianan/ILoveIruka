import 'package:flutter/material.dart';
import 'package:i_love_iruka/domain/core/user.dart';

class AuthProvider with ChangeNotifier {
  User _user;

  void setUserData(User userData) {
    this._user = userData;
    notifyListeners();
  }

  User get getUserData => this._user;
}

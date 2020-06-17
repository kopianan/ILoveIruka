import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> saveUserData(User user) async {
  final shared = await SharedPreferences.getInstance();

  final _result = shared.setString("user_data", json.encode(user));
  return _result;
}

Future<Either<String, User>> getUserData() async {
  final shared = await SharedPreferences.getInstance();
  String userString;
  try {
    userString = shared.getString("user_data");
    return right(User.fromJson(json.decode(userString)));
  } catch (e) {
    return left(e.toString());
  }
}

Future<Either<AuthFailure, bool>> deleteAllData() async {
  final shared = await SharedPreferences.getInstance();

  try {
    final user = await shared.clear();
    return right(user);
  } catch (e) {
    return left(AuthFailure.serverError());
  }
}

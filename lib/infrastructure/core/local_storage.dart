import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/core/user.dart';

String _storageBox = "user_storage";
String _userDataKey = "user_data_key";

String get getUserStorageKey => _storageBox;

Future<bool> saveUserData(User user) async {
  final storageBox = GetStorage(_storageBox);
  bool isSuccess;

  try {
    await storageBox.write(_userDataKey, user.toJson());
    isSuccess = true;
    return isSuccess;
  } catch (e) {
    throw Exception(e);
  }
}

Either<String, User> getUserData() {
  final storageBox = GetStorage(_storageBox);

  try {
    final _result = storageBox.read(_userDataKey);
    final _userData = User.fromJson(_result);
    if (_userData == null) {
      return left("Null Data");
    } else
      return right(_userData);
  } catch (e) {
    return left(e.toString());
  }
}

Future<bool> deleteAllData() async {
  final storageBox = GetStorage(_storageBox);

  try {
    await storageBox.erase();
    return (true);
  } catch (e) {
    return false;
  }
}

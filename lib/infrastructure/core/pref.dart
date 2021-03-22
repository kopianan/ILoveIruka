import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/util/constants.dart';

class Pref {
  final cons = Constants();
  GetStorage _storage = GetStorage(Constants().getIrukaStorage);

  Future<void> saveUserData(UserDataModel userData) async {
    print("Data Saved");
    try {
      //change to json then encode to json string.
      String _jsonString = json.encode(userData.toJson());
      await _storage.write(cons.getUserKey, _jsonString);
    } catch (e) {
      throw Exception(e);
    }
  }

  UserDataModel get getUserData {
    try {
      final _data = json.decode(_storage.read(cons.getUserKey));
      //decode  and then convert to class
      return UserDataModel.fromJson(_data);
    } catch (e) {
      return null;
    }
  }

  void removeStorageData() {
    _storage.erase().then((value) {
      print("Removed");
    }).catchError((onError) {
      throw Exception(onError.toString());
    });
  }
}

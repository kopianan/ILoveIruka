import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:i_love_iruka/domain/membership/member_info_data_model.dart';
import 'package:i_love_iruka/domain/membership/membership_data_model.dart';
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

  Future<void> saveMemberInfo(MemberInfoDataModel memberInfoDataModel) async {
    print("Data Saved");
    print(memberInfoDataModel);
    try {
      //change to json then encode to json string.
      String _jsonString = json.encode(memberInfoDataModel.toJson());
      await _storage.write(cons.getMemberKey, _jsonString);
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

  MemberInfoDataModel get getMemberInfo {
    try {
      final _data = json.decode(_storage.read(cons.getMemberKey));
      //decode  and then convert to class
      return MemberInfoDataModel.fromJson(_data);
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

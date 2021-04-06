import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/domain/user/user_req_res_data_model.dart';
import 'package:injectable/injectable.dart';

class UserController extends GetxController {
  final userData = UserDataModel().obs;
  var userCurrentEditingData = UserRequestDataModel().obs;

  void setCurrentEditingData() {
    userCurrentEditingData = UserRequestDataModel(
      fullName: getUserData().fullName,
    ).obs;
  }

  UserRequestDataModel getCurrentEditingData() {
    return this.userCurrentEditingData.value;
  }

  void setDataUser(UserDataModel dataModel) {
    try {
      if (dataModel != null) {
        this.userData.value = dataModel;
      }
    } catch (e) {}
  }

  UserDataModel getUserData() {
    try {
      if (userData.value.isBlank) {
        return null;
      } else {
        return this.userData.value;
      }
    } catch (e) {
      return null;
    }
  }

}

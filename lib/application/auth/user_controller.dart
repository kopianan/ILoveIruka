import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';

class UserController extends GetxController {
  final userData = UserDataModel().obs;

  void setDataUser(UserDataModel dataModel) {
    this.userData.value = dataModel;
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

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:i_love_iruka/domain/membership/member_info_data_model.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/domain/user/user_req_res_data_model.dart';

class UserController extends GetxController {
  final userData = UserDataModel().obs;
  var userCurrentEditingData = UserRequestDataModel().obs;
  var memberInfo = MemberInfoDataModel().obs;

  void setMemberData(MemberInfoDataModel data) {
    print("Member Data setted");
    this.memberInfo.value = data;
  }

  MemberInfoDataModel getMemberData() {
    return this.memberInfo.value;
  }

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
    print(userData.value);
    return this.userData.value;
  }
}

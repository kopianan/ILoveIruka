import 'package:get/get.dart';
import 'package:i_love_iruka/domain/core/user.dart';

class AuthController extends GetxController {
  final _userData = User().obs;
  final userList = <String>[].obs;
  setUserData(User user) {
    _userData.value = user;
  }

  setUserList(List<String> user) {
    userList.assignAll(user);
  }

  List<String> getUserList() {
    return userList;
  }

  User getUserData() {
    try {
      return _userData.value;
    } catch (e) {
      return null;
    }
  }
}

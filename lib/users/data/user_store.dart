import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/request/edit_request.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/users/network/api_interface.dart';
import 'package:i_love_iruka/users/network/user_failure.dart';

class UserStore {
  ApiInterface _apiInterface = ApiInterface();
  LoginResponse _loginResponse;
  // LoginResponse _editUserResponse;
  Failure _failure;
  Failure get getFailure => this._failure;
  LoginResponse get getLoginResponse => _loginResponse;
  // LoginResponse get getEditUserResponse => _editUserResponse;

  void getLoginRsponseFromResponse(LoginRequest loginRequest) async {
    try {
      _loginResponse = await _apiInterface.loginUserByEmail(loginRequest);
    } on Failure catch (f) {
      _failure = f;
    }
  }

  void getLoginAuth(String key) async {
    try {
      _loginResponse = await _apiInterface.checkAuthanitication(key);
    } on Failure catch (f) {
      _failure = f;
    }
  }

  void editUser(EditRequest edit) async {
    try {
      _loginResponse = await _apiInterface.editUserAsync(edit);
    } on Failure catch (f) {
      throw f;
    }
  }
}

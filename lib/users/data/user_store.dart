import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/users/network/api_interface.dart';
import 'package:i_love_iruka/users/network/user_failure.dart';

class UserStore {
  ApiInterface _apiInterface = ApiInterface();
  LoginResponse _loginResponse;
  Failure _failure;
  Failure get getFailure => this._failure;
  LoginResponse get getLoginResponse => _loginResponse;

  void getLoginRsponseFromResponse(LoginRequest loginRequest) async {
    try {
      _loginResponse = await _apiInterface.loginUserByEmail(loginRequest);
    } on Failure catch (f) {
      print(f.message);
      _failure = f;
    }
  }

  void getLoginAuth(String key)async{
    try {
      _loginResponse = await _apiInterface.checkAuthanitication(key);
    } on Failure catch (f) {
      print(f.message);
      _failure = f;
    }
  }
}

import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/users/network/api_provider.dart';

class ApiInterface {
  ApiProvider _apiProvider = ApiProvider();

  Future<LoginResponse> loginUserByEmail(LoginRequest loginData) =>
      _apiProvider.loginUser(loginData);

  Future<LoginResponse> checkAuthanitication(String prefKey) => _apiProvider.getAuthenticated(prefKey); 
}

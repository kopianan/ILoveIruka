import 'package:i_love_iruka/data/api_provider.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/models/response/login_response.dart';

class Repository {
  final _apiProvider = ApiProvider();

  Future<LoginResponse> loginUserByEmail(LoginRequest loginData) =>
      _apiProvider.loginUser(loginData);

  Future<dynamic> registerUserByEmail(RegisterRequest registerData) =>
      _apiProvider.registerUser(registerData);

  Future<RolesModel> getRolesList() => _apiProvider.getRolesUser(); 
}

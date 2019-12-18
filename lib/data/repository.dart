import 'package:i_love_iruka/data/api_provider.dart';
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/get_point_and_last_transaction.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/models/model/transaction_history_detail_model.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/models/request/user_by_role_request.dart';

class Repository {
  final _apiProvider = ApiProvider();

  Future<LoginResponse> loginUserByEmail(LoginRequest loginData) =>
      _apiProvider.loginUser(loginData);

  Future<dynamic> registerUserByEmail(RegisterRequest registerData) =>
      _apiProvider.registerUser(registerData);

  Future<RolesModel> getRolesList() => _apiProvider.getRolesUser();

  Future<ProductsModel> getProductList() => _apiProvider.getProductListAsync();
  Future<EventsModel> getEventList() => _apiProvider.getEventListAsync();
  Future<UserGroomersModel> getGroomerList(UserByRoleRequest request) =>
      _apiProvider.getGroomerListAsync(request);
  Future<List<TransactionHistoryDetailModel>> getHistoryTransaction(
          String request) =>
      _apiProvider.getHistoryTransactionAsync(request);

  Future<String> getPointAndLastTransactionData(String request) =>
      _apiProvider.getPointAndLastTransactionDataAsync(request);
}

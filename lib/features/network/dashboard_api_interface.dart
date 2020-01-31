import 'package:i_love_iruka/features/network/dashboard_api_provider.dart';
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:i_love_iruka/models/request/user_by_role_request.dart';

class DashboardApiInterface {
  DashboardApiProvider _apiProvider = DashboardApiProvider();

  Future<UserGroomersModel> getGroomerList(UserByRoleRequest request) => _apiProvider.getGroomerListAsync(request);
  Future<EventsModel> getEventListData() => _apiProvider.getEventListAsync();
  Future<ProductsModel> getProductListData() => _apiProvider.getProductListAsync();
  Future<int> getPointAndTransaction(String id) => _apiProvider.getPointAndLastTransactionDataAsync(id);
}

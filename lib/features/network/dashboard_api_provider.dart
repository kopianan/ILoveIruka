import 'package:dio/dio.dart';
import 'package:i_love_iruka/features/network/dashboard_failure.dart';
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:i_love_iruka/models/request/user_by_role_request.dart';
import 'package:i_love_iruka/users/network/user_failure.dart';
import 'package:i_love_iruka/util/constants.dart';

class DashboardApiProvider {
  String _baseUrl = Constants.getBaseUrl();
  Dio _dio = Dio();

  Future<int> getPointAndLastTransactionDataAsync(String request) async {
    int data;
    Response response;

    try {
      response = await _dio.get(_baseUrl + "/GetSpecificCustomerLastTransaction", queryParameters: {"id": "$request"}, options: Options(headers: Constants.getRequestHeader));

      final dataResp = response.data;
      data = dataResp['customerPoints'];
      return data;
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.SEND_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.RECEIVE_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.RESPONSE:
          throw DashboardFailure("Not Found");
          break;
        case DioErrorType.CANCEL:
          throw DashboardFailure("Cancel");
          break;
        case DioErrorType.DEFAULT:
          throw DashboardFailure("No Internet");
          break;
      }
    }
    throw DashboardFailure("Cancel");
  }

  Future<ProductsModel> getProductListAsync() async {
    ProductsModel data;
    Response response;

    try {
      response = await _dio.get(_baseUrl + "/GetAllProduct");
      data = ProductsModel.fromJson(response.data);
      return data;
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.SEND_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.RECEIVE_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.RESPONSE:
          throw DashboardFailure("Not Found");
          break;
        case DioErrorType.CANCEL:
          throw DashboardFailure("Cancel");
          break;
        case DioErrorType.DEFAULT:
          throw DashboardFailure("No Internet");
          break;
      }
    }
    throw DashboardFailure("Cancel");
  }

  Future<EventsModel> getEventListAsync() async {
    EventsModel data;
    Response response;

    try {
      response = await _dio.get(_baseUrl + "/GetAllEvent");
      data = EventsModel.fromJson(response.data);
      return data;
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.SEND_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.RECEIVE_TIMEOUT:
          throw DashboardFailure("Time Out");
          break;
        case DioErrorType.RESPONSE:
          throw DashboardFailure("Not Found");
          break;
        case DioErrorType.CANCEL:
          throw DashboardFailure("Cancel");
          break;
        case DioErrorType.DEFAULT:
          throw DashboardFailure("No Internet");
          break;
      }
    }
    throw DashboardFailure("Cancel");
  }

  Future<UserGroomersModel> getGroomerListAsync(UserByRoleRequest request) async {
    Response response;

    UserGroomersModel data;

    try {
      response = await _dio.post(_baseUrl + "/GetUserByRole", data: request.toJson(), options: Options(headers: Constants.getRequestHeader));
      final _dataResp = response.data;
      data = UserGroomersModel.fromJson(_dataResp);
      return data;
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          throw Failure("Time Out");
          break;
        case DioErrorType.SEND_TIMEOUT:
          throw Failure("Time Out");
          break;
        case DioErrorType.RECEIVE_TIMEOUT:
          throw Failure("Time Out");
          break;
        case DioErrorType.RESPONSE:
          throw Failure("Not Found");
          break;
        case DioErrorType.CANCEL:
          throw Failure("Cancel");
          break;
        case DioErrorType.DEFAULT:
          throw Failure("No Internet");
          break;
      }
    }
    throw Failure("Cancel");
  }
}

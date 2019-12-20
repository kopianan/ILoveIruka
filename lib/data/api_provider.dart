import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/get_point_and_last_transaction.dart';
import 'package:i_love_iruka/models/model/get_province_model.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/models/model/transaction_history_detail_model.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:i_love_iruka/models/request/edit_request.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/models/request/user_by_role_request.dart';
import 'package:i_love_iruka/util/constants.dart';

class ApiProvider {
  final Dio dio = Dio();
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'accessKey': 'd78c1a5c-ccbe-4c26-ac08-43ed66c8afb9'
  };

  Map<String, String> rajaOngkirHeader = {
    'key': "${Constants.getRajaOngkirApi}"
  };
  String _baseUrl = Constants.getBaseUrl();
  Future<LoginResponse> loginUser(LoginRequest login) async {
    print(login.toJson());
    http.Response response;

    response = await http.post(_baseUrl + "/Login",
        body: jsonEncode(login.toJson()),
        // body: login,
        headers: requestHeaders);
    print(response.body);
    final data = LoginResponse.fromJson(json.decode(response.body));
    return data;
  }

  Future<String> registerUser(RegisterRequest registerData) async {
    String url = _baseUrl + "/RegisterUserMobile";
    LoginResponse loginResponse;

    FormData formData = FormData.fromMap({
      "accessKey": registerData.accessKey,
      "Name": registerData.name,
      "Email": registerData.email,
      "Password": registerData.password,
      "Phonenumber": registerData.phonenumber,
      "Address": registerData.address,
      "Description": registerData.description,
      "Role": registerData.role,
      "PIC": registerData.pic,
      "file": await MultipartFile.fromFile(registerData.file)
    });
    print(
        "${registerData.accessKey} ${registerData.name} ${registerData.email} ${registerData.password} ${registerData.phonenumber} ${registerData.address}  ${registerData.description} ${registerData.role} ${registerData.file}");

    Response response = await dio.post(
      url,
      data: formData,
    );
    if (response.statusCode == 200) {
      return "OK";
    } else {
      return null;
    }
  }

  Future<LoginResponse> editUserAsync(EditRequest registerData) async {
    String url = _baseUrl + "/EditUserMobile";
    LoginResponse loginResponse;

    FormData formData = FormData.fromMap({
      "accessKey": registerData.accessKey,
      "Name": registerData.name,
      "Phonenumber": registerData.phonenumber,
      "Address": registerData.address,
      "Description": registerData.description,
      "Id": registerData.id,
      "PIC": registerData.pic,
      "Id": registerData.id,
      "file": (registerData.file == null)
          ? null
          : await MultipartFile.fromFile(registerData.file)
    });
    print("testasync");
    Response response = await dio.post(
      url,
      data: formData,
    );
    print("testEditUser");

    if (response.statusCode == 200) {
      loginResponse =
          LoginResponse.fromJson(json.decode(json.encode(response.data)));
      loginResponse.user.show = true;
      return loginResponse;
    } else {
      return null;
    }
  }

  Future<RolesModel> getRolesUser() async {
    http.Response response;
    response = await http.get(_baseUrl + "/GetRole");
    final data = RolesModel.fromJson(json.decode(response.body));
    return data;
  }

  Future<ProductsModel> getProductListAsync() async {
    ProductsModel data;
    http.Response response;
    response = await http.get(_baseUrl + "/GetAllProduct");
    if (response.statusCode == 200) {
      data = ProductsModel.fromJson(json.decode(response.body));
    } else
      data = null;

    return data;
  }

  Future<EventsModel> getEventListAsync() async {
    EventsModel data;
    http.Response response;
    response = await http.get(_baseUrl + "/GetAllEvent");
    if (response.statusCode == 200) {
      data = EventsModel.fromJson(json.decode(response.body));
    } else {
      data = null;
    }
    return data;
  }

  Future<UserGroomersModel> getGroomerListAsync(
      UserByRoleRequest request) async {
    UserGroomersModel data;
    http.Response response;
    print(request.toJson());
    response = await http.post(_baseUrl + "/GetUserByRole",
        body: jsonEncode(request.toJson()), headers: requestHeaders);

    if (response.statusCode == 200) {
      data = UserGroomersModel.fromJson(json.decode(response.body));
    } else
      data = null;

    return data;
  }

  Future<String> changeUserStatusAsync(bool status, String id) async {
    Response response;
    response = await dio.put(_baseUrl + "/ChangeGroomerShowStatus",
        queryParameters: {"userId": "$id", "status": "$status"},
        options: Options(headers: requestHeaders));

    final testData = response.data.toString();
    if (response.statusCode == 200) {
      return testData;
    } else
      return "null";
  }

  Future<String> getPointAndLastTransactionDataAsync(String request) async {
    Response response;
    response = await dio.get(_baseUrl + "/GetSpecificCustomerLastTransaction",
        queryParameters: {"id": "$request"},
        options: Options(headers: requestHeaders));

    final testData =
        json.decode(json.encode(response.data))["customerPoints"].toString();
    if (response.statusCode == 200) {
      return testData;
    } else
      return "null";
  }

  Future<List<TransactionHistoryDetailModel>> getHistoryTransactionAsync(
      String userId) async {
    print(userId);
    final Dio dio = Dio();
    var queryParameters = {
      'id': '$userId',
    };
    Response response = await dio.get(
        Constants.getWebUrl() +
            Constants.getApiUrl() +
            "/GetSpecificCustomerTransactionHistory",
        queryParameters: queryParameters,
        options: Options(headers: requestHeaders));

    if (response.statusCode == 200) {
      final List dataModel = jsonDecode(jsonEncode(response.data));
      var listTransaction = dataModel
          .map((f) => TransactionHistoryDetailModel.fromJson(f))
          .toList();
      print(listTransaction.length);
      print(dataModel.toList());
      return listTransaction;
    } else
      return null;
  }

  Future<GetProvinceModel> getProvincesAsync() async {
    Response response;
    try {
      response = await dio.get(Constants.getRajaOngkirUrl + "/starter/province",
          options: Options(headers: rajaOngkirHeader));

      if (response.statusCode == 200) {
        print(" test");
        final provinceModel =
            GetProvinceModel.fromJson(response.data);
        print(' Test');
        print(provinceModel.rajaongkir.results.first.toJson());
        return provinceModel;
      } else
        return null;
    } on DioError catch (e) {
      return null;
    }
  }
}

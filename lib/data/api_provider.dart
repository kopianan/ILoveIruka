import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/get_city_model.dart';
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
  Map<String, String> requestHeaders = {'Content-type': 'application/json', 'accessKey': 'd78c1a5c-ccbe-4c26-ac08-43ed66c8afb9'};

  Map<String, String> rajaOngkirHeader = {'key': "${Constants.getRajaOngkirApi}"};
  String _baseUrl = Constants.getBaseUrl();
  Future<LoginResponse> loginUser(LoginRequest login) async {
    print(login.toJson());
    http.Response response;

    response = await http.post(_baseUrl + "/Login",
        body: jsonEncode(login.toJson()),
        headers: requestHeaders);
    final dataJson = await json.decode(response.body); 
    final data = LoginResponse.fromJson(dataJson);
    return data;
  }

  Future<LoginResponse> registerUser(RegisterRequest registerData) async {
    String url = _baseUrl + "/RegisterUserMobile";
    LoginResponse loginResponse;
    FormData formData;

    if (registerData.role.toString() == "Customer") {
      //if the user is customer
      formData = FormData.fromMap({
        "accessKey": registerData.accessKey,
        "Name": registerData.name,
        "Email": registerData.email,
        "Password": registerData.password.trim(),
        "Phonenumber": registerData.phonenumber,
        "Address": registerData.address,
        "Description": registerData.description,
        "Role": registerData.role,
        "file": MultipartFile.fromFileSync(registerData.file)
      });
    } else if (registerData.role.toString() == "Groomer") {
      //User is groomer
      formData = FormData.fromMap({
        "accessKey": registerData.accessKey,
        "Name": registerData.name,
        "Email": registerData.email,
        "Password": registerData.password.trim(),
        "Phonenumber": registerData.phonenumber,
        "Address": registerData.address,
        "Description": registerData.description,
        "Role": registerData.role,
        "file": MultipartFile.fromFileSync(registerData.file),
        "KeyFeatures": registerData.keyFeatures,
        "CoverageArea": registerData.coverageArea,
        "YearsOfExperience":int.parse(registerData.yearsOfExperience),
        "Availability": registerData.availability,
        "Styling":int.parse(registerData.styling),
        "Cliping": int.parse(registerData.cliping),
        "TrainingYears": ( registerData.trainingYears =="")  ? 0:registerData.trainingYears  ,
        "TrainingCourses": registerData.trainingCourses ,
        "TrainingStartDate": registerData.trainingStartDate
      });
    } else {
      formData = FormData.fromMap({
        "accessKey": registerData.accessKey,
        "Name": registerData.name,
        "Email": registerData.email,
        "Password": registerData.password.trim(),
        "Phonenumber": registerData.phonenumber,
        "Address": registerData.address.trim(),
        "Description": registerData.description,
        "Role": registerData.role,
        "PIC": registerData.pIC,
        "file": MultipartFile.fromFileSync(registerData.file)
      });
    }

    try {
      Response response = await dio.post(
        url,
        data: formData,
      );

      if (response.statusCode == 200) {
        var jsonData = LoginResponse.fromJson(response.data);

        return jsonData;
      } else {
        return null;
      }
    } on DioError catch (e) {
      print(e.message);
      print(e.request);
      print(e.response); 
      print(" error");
      print(e.error);
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
      "Id": registerData.iD,
      "PIC": registerData.pic,
      "file": (registerData.file == null) ? null : await MultipartFile.fromFile(registerData.file),
      "KeyFeatures" : registerData.keyFeatures,
      "CoverageArea" : registerData.coverageArea,
      "YearsOfExperience" : registerData.yearsOfExperience,
      "Availability" : registerData.availability,
      "Styling" : registerData.styling,
      "Clipping" : registerData.cliping,
      "TrainingStartDate" : registerData.trainingStartDate,
      "TrainingYears" : registerData.trainingYears,
      "TrainingCourses" : registerData.trainingCourses,
    });
    print("testasync");
    Response response = await dio.post(
      url,
      data: formData,
    );
    print("testEditUser");

    if (response.statusCode == 200) {
      loginResponse = LoginResponse.fromJson(json.decode(json.encode(response.data)));
      loginResponse.user.show = true;
      return loginResponse;
    } else {
      return null;
    }
  }

  Future<RolesModel> getRolesUser() async {
    http.Response response;
    response = await http.get(_baseUrl + "/GetRole");
    print("Jancok");
    print(response.body);
    
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

  Future<UserGroomersModel> getGroomerListAsync(UserByRoleRequest request) async {
    UserGroomersModel data;
    http.Response response;
    print(request.toJson());
    response = await http.post(_baseUrl + "/GetUserByRole", body: jsonEncode(request.toJson()), headers: requestHeaders);

    if (response.statusCode == 200) {
      data = UserGroomersModel.fromJson(json.decode(response.body));
    } else
      data = null;

    return data;
  }

  Future<String> changeUserStatusAsync(bool status, String id) async {
    Response response;
    response = await dio.put(_baseUrl + "/ChangeGroomerShowStatus", queryParameters: {"userId": "$id", "status": "$status"}, options: Options(headers: requestHeaders));

    final testData = response.data.toString();
    if (response.statusCode == 200) {
      return testData;
    } else
      return "null";
  }

  
  Future<String> changeUserAvailabilityAsync(bool status, String id) async {
    Response response;
    response = await dio.put(_baseUrl + "/ChangeGroomerAvailabilityStatus", queryParameters: {"userId": "$id", "status": "$status"}, options: Options(headers: requestHeaders));

    final testData = response.data.toString();
    if (response.statusCode == 200) {
      return testData;
    } else
      return "null";
  }

  Future<String> getPointAndLastTransactionDataAsync(String request) async {
    Response response;
    response = await dio.get(_baseUrl + "/GetSpecificCustomerLastTransaction", queryParameters: {"id": "$request"}, options: Options(headers: requestHeaders));

    final testData = json.decode(json.encode(response.data))["customerPoints"].toString();
    if (response.statusCode == 200) {
      return testData;
    } else
      return "null";
  }

  Future<List<TransactionHistoryDetailModel>> getHistoryTransactionAsync(String userId) async {
    print(userId);
    final Dio dio = Dio();
    var queryParameters = {
      'id': '$userId',
    };
    Response response =
        await dio.get(Constants.getWebUrl() + Constants.getApiUrl() + "/GetSpecificCustomerTransactionHistory", queryParameters: queryParameters, options: Options(headers: requestHeaders));

    if (response.statusCode == 200) {
      final List dataModel = jsonDecode(jsonEncode(response.data));
      var listTransaction = dataModel.map((f) => TransactionHistoryDetailModel.fromJson(f)).toList();
      print(listTransaction.length);
      print(dataModel.toList());
      return listTransaction;
    } else
      return null;
  }

  Future<GetProvinceModel> getProvincesAsync() async {
    Response response;
    try {
      response = await dio.get(Constants.getRajaOngkirUrl + "/starter/province", options: Options(headers: rajaOngkirHeader));

      if (response.statusCode == 200) {
        print(" test");
        final provinceModel = GetProvinceModel.fromJson(response.data);
        print(' Test');
        print(provinceModel.rajaongkir.results.first.toJson());
        return provinceModel;
      } else
        return null;
    } on DioError catch (e) {
      return null;
    }
  }

  Future<GetCityModel> getCitiesAsync(int provinceId) async {
    Response response;
    var queryParameters = {
      'province': '$provinceId',
    };
    try {
      response = await dio.get(Constants.getRajaOngkirUrl + "/starter/city", options: Options(headers: rajaOngkirHeader), queryParameters: queryParameters);

      if (response.statusCode == 200) {
        final cityModel = GetCityModel.fromJson(response.data);
        print(cityModel.rajaongkir.results.first.toJson());
        return cityModel;
      } else
        return null;
    } on DioError catch (e) {
      return null;
    }
  }
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/models/response/login_response.dart';
import 'package:i_love_iruka/util/constants.dart';

class ApiProvider {
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'accessKey': 'd78c1a5c-ccbe-4c26-ac08-43ed66c8afb9'
  };

  String _baseUrl = Constants().getBaseUrl();
  Future<LoginResponse> loginUser(LoginRequest login) async {
    print(login.toJson());
    http.Response response;

    response = await http.post(_baseUrl + "/Login",
        body: jsonEncode(login.toJson()),
        // body: login,
        headers: requestHeaders);

    final data = LoginResponse.fromJson(json.decode(response.body));
    return data;
  }

  Future<String> registerUser(RegisterRequest registerData) async {
    final Dio dio = Dio();
    String url = _baseUrl + "/RegisterUserMobile";
    FormData formData = FormData.fromMap({
      "accessKey": registerData.accessKey,
      "Name": registerData.name,
      "Email": registerData.email,
      "Password": registerData.password,
      "Phonenumber": registerData.phonenumber,
      "Address": registerData.address,
      "Description": registerData.description,
      "Role": registerData.role,
      "file": await MultipartFile.fromFile(registerData.file)
    });
    Response response = await dio.post(url, data: formData);
    print(response.data);
    print(response.statusMessage);

    return "Anan";
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
      print(data.eventList.length);
    } else
      data = null;

    return data;
  }

  Future<UserGroomersModel> getGroomerListAsync() async {
    // UserGroomersModel data;
    // http.Response response;
    // var uri = Uri.parse(Constants().getWebUrl());
    // final newUri = uri.replace( path: "${Constants().getApiUrl()}/GetUserByRole", queryParameters: {"role":"Groomer"}); 
    // response = await http.get(newUri, headers : {'Content-type': 'application/json'});
    // print(response.body);
    // print(response.request);
    // if (response.statusCode == 200) {
    //   data = UserGroomersModel.fromJson(json.decode(response.body));
    //   print(data.listUser.length);
    // } else
    //   data = null;

    // return data;
  }
}
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:i_love_iruka/models/request/login_request.dart';
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

    response = await http.post(_baseUrl + "/api/MobileAPI/Login",
        body: jsonEncode(login.toJson()),
        // body: login,
        headers: requestHeaders);


    final data = LoginResponse.fromJson(json.decode(response.body));
    return data;
  }
}

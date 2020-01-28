import 'dart:io';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/util/constants.dart';

import 'user_failure.dart';

class ApiProvider {
  String _baseUrl = Constants.getBaseUrl();
  Dio _dio = Dio();
  Future<LoginResponse> loginUser(LoginRequest login) async {
    Response response;

    try {
      response = await _dio.post(_baseUrl + "/Login",
          data: login.toJson(),
          options: Options(headers: Constants.getRequestHeader));

      final dataResp = response.data;
      LoginResponse _loginResponse = LoginResponse.fromJson(dataResp);
      return _loginResponse;
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


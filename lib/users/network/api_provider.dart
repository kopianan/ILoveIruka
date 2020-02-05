import 'dart:convert';
import 'dart:io';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/request/edit_request.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'user_failure.dart';

class ApiProvider {
  String _baseUrl = Constants.getBaseUrl();
  Dio _dio = Dio();

  Future<LoginResponse> getAuthenticated(String key) async {
    SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    var _stringData;
    var _jsonData;
    LoginResponse _loginResponse;
    try {
      _stringData = _sharedPref.getString(key);
      _jsonData = json.decode(_stringData);
      _loginResponse = LoginResponse.fromJson(_jsonData);
      return _loginResponse;
    } on Exception catch (e) {
      throw Exception("Tidak Ada User");
    }
  }

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
      "file": (registerData.file == null)
          ? null
          : await MultipartFile.fromFile(registerData.file),
      "KeyFeatures": registerData.keyFeatures,
      "CoverageArea": registerData.coverageArea,
      "YearsOfExperience": registerData.yearsOfExperience,
      "Availability": registerData.availability,
      "Styling": registerData.styling,
      "Clipping": registerData.cliping,
      "TrainingStartDate": registerData.trainingStartDate,
      "TrainingYears": registerData.trainingYears,
      "TrainingCourses": registerData.trainingCourses,
    });

    try {
      Response response = await _dio.post(
        url,
        data: formData,
      );

      loginResponse =
          LoginResponse.fromJson(json.decode(json.encode(response.data)));
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
  }
}

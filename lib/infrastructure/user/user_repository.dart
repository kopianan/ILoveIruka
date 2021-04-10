import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/user/i_user_facade.dart';
import 'package:i_love_iruka/domain/user/password_data_model.dart';
import 'package:i_love_iruka/domain/user/user_req_res_data_model.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/presentation/home/user_home/address/address_req_res_data_model.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:http_parser/http_parser.dart';

@LazySingleton(as: IUserFacade)
class UserRepository extends IUserFacade {
  UserRepository(this._dio);
  final Dio _dio;

  GeneralFailure dioErrorChecker(DioError error) {
    if (error.type == DioErrorType.RESPONSE) {
      if (error.response.statusCode == 404 ||
          error.response.statusCode == 400) {
        return GeneralFailure(error.response.data['message'].toString());
      } else {
        return GeneralFailure(error.error.toString());
      }
    } else if (error.type == DioErrorType.DEFAULT) {
      print(error.error);
      return GeneralFailure("Default Error");
    } else
      return GeneralFailure("Server error");
  }

  Options getDioOptions() {
    String _token = Pref().getUserData.token;
    Options options = Options(headers: {"Authorization": "Bearer $_token"});
    return options;
  }

  @override
  Future<Either<GeneralFailure, String>> uploadPhoto(String image) async {
    Response response;

    FormData formData = FormData.fromMap({
      "id": basename(image),
      "file": await MultipartFile.fromFile(image,
          contentType: MediaType('image', 'jpeg')),
    });

    try {
      response = await _dio.post(
          Constants.getStagingUrl() + "/api/v1/images/profile-picture",
          data: formData,
          options: Options(
            contentType: 'multipart/form-data',
          ));
      print(response.data['data']);
      print(response.headers);
      final _res = response.data['data']['path'];
      return right(_res.toString());
    } on DioError catch (e) {
      return left(dioErrorChecker(e));
    }
  }

  @override
  Future<Either<GeneralFailure, String>> changePassword(
      PasswordDataModel password) async {
    Response response;
    print(Constants.getStagingUrl());
    try {
      response = await _dio.put(
          Constants.getStagingUrl() + "/api/v1/users/end-user/change-password",
          data: password.toJson(),
          options: getDioOptions());

      return right("Successful Change Password");
    } on DioError catch (e) {
      print(e.message);
      return left(dioErrorChecker(e));
    }
  }

  @override
  Future<Either<GeneralFailure, UserResponseDataModel>> updateUserData(
      UserRequestDataModel request) async {
    Response response;

    try {
      response = await _dio.put(
          Constants.getStagingUrl() + "/api/v1/users/end-user/edit-data",
          data: request.toJson(),
          options: getDioOptions());

      final _res = response.data['data'];
      final _data = UserResponseDataModel.fromJson(_res);
      return right(_data);
    } on DioError catch (e) {
      print(e);
      return left(dioErrorChecker(e));
    } catch (e) {
      return left(GeneralFailure("Something Wrong"));
    }
  }

  @override
  Future<Either<GeneralFailure, AddressResponse>> changeAddress(
      AddressRequest request) async {
    Response response;

    try {
      response = await _dio.post(Constants.getStagingUrl() + "/api/v1/address",
          data: request.toJson(), options: getDioOptions());
      print(response.data['data']);
      final _res = response.data['data'];
      final _data = AddressResponse.fromJson(_res);
      return right(_data);
    } on DioError catch (e) {
      print(e.toString());
      return left(dioErrorChecker(e));
    } catch (e) {
      return left(GeneralFailure("Something Wrong"));
    }
  }

  @override
  Future<Either<GeneralFailure, AddressResponse>> getAddress() async {
    Response response;

    try {
      response = await _dio.get(Constants.getStagingUrl() + "/api/v1/address",
          options: getDioOptions());

      final _res = response.data['data'];
      final _data = AddressResponse.fromJson(_res);
      return right(_data);
    } on DioError catch (e) {
      return left(dioErrorChecker(e));
    } catch (e) {
      return left(GeneralFailure("Something Wrong"));
    }
  }
}

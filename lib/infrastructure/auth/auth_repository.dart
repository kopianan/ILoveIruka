import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/i_auth_facade.dart';
import 'package:i_love_iruka/domain/auth/login_data.dart';
import 'package:i_love_iruka/domain/auth/register_data.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/infrastructure/auth/update_data.dart';
import 'package:i_love_iruka/infrastructure/core/local_storage.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  final Dio _dio;
  AuthRepository(this._dio);

  @override
  Future<Either<AuthFailure, LoginResponseData>> registerNewUser(
      {RegisterData registerData}) async {
    Response response;
    FormData form;
    form = FormData.fromMap(registerData.toJson());
    try {
      response = await _dio.post(
        Constants.getBaseUrl() + "/RegisterUserMobile",
        data: form,
      );
      print(response.data);
      final _result = LoginResponseData.fromJson(response.data);
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404) {
          return left(AuthFailure.notFound());
        } else if (e.response.statusCode == 400) {
          return left(AuthFailure.badRequest());
        }
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, LoginResponseData>> singInUser(
      LoginRequestData loginRequestData) async {
    Response response;

    try {
      response = await _dio.post(
        Constants.getBaseUrl() + "/Login",
        data: loginRequestData.toJson(),
      );
      print(response.data);
      final _result = LoginResponseData.fromJson(response.data);
      return right(_result);
    } on DioError catch (e) {
      print(e.response.data.toString());
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404) {
          return left(AuthFailure.notFound());
        } else if (e.response.statusCode == 400) {
          return left(
              AuthFailure.badRequest(errorMessage: e.response.data.toString()));
        }
      } else {
        return left(AuthFailure.serverError());
      }
      return left(AuthFailure.defaultError());
    }
  }

  @override
  Future<Either<AuthFailure, List<String>>> getUserRole() async {
    Response response;
    try {
      response = await _dio.get(Constants.getBaseUrl() + "/GetRole");
      print(response.data);
      final List _result = response.data['RoleList'];
      List<String> _res = _result.map((e) => e.toString()).toList();
      return right(_res);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404) {
          return left(AuthFailure.notFound());
        } else if (e.response.statusCode == 400) {
          return left(AuthFailure.badRequest());
        }
      } else {
        return left(AuthFailure.serverError());
      }
    }
    return left(AuthFailure.serverError());
  }

  @override
  Either<AuthFailure, User> checkAuthentcation() {
    try {
      final _userDataString = getUserData();
      return _userDataString.fold(
        (l) => left(AuthFailure.serverError()),
        (r) => right(r),
      );
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      final _result = await deleteAllData();
      if (_result)
        return right(unit);
      else
        return left(AuthFailure.serverError());
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, LoginResponseData>> updateCustomer(
      UpdateCustomerData updated, File image) async {
    Response response;

    final formData = FormData.fromMap({
      "AccessKey": updated.accessKey,
      "Name": updated.name,
      "Email": updated.email,
      "PhoneNumber": updated.phoneNumber,
      "Address": updated.address,
      "Id": updated.id,
      "Picture": (image == null) ? "" : MultipartFile.fromFileSync(image.path)
    });

    try {
      response = await _dio.post(Constants.getBaseUrl() + "/EditUserMobile",
          data: formData);
      print(response.data);
      final _result = LoginResponseData.fromJson(response.data);
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404) {
          return left(AuthFailure.notFound());
        } else if (e.response.statusCode == 400) {
          return left(AuthFailure.badRequest());
        }
      } else {
        return left(AuthFailure.serverError());
      }
      return left(AuthFailure.defaultError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changeAvailability(
      {bool status, String id}) async {
    Response response;

    final _params = {"userId": "$id", "status": "$status"};
    try {
      response = await _dio.put(
        Constants.getBaseUrl() + "/ChangeGroomerAvailabilityStatus",
        queryParameters: _params,
      );
      print(response.data);
      return right(unit);
    } on DioError catch (e) {
      print(e.error.toString());
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404) {
          return left(AuthFailure.notFound());
        } else if (e.response.statusCode == 400) {
          return left(AuthFailure.badRequest());
        }
      } else {
        return left(AuthFailure.serverError());
      }
    }
    return left(AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, LoginResponseData>> updateGroomer(
      User user) async {
    Response response;

    final formData = FormData.fromMap(user.toJson());
    try {
      response = await _dio.post(Constants.getBaseUrl() + "/EditUserMobile",
          data: formData);
      print(response.data);
      final _result = LoginResponseData.fromJson(response.data);
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404) {
          return left(AuthFailure.notFound());
        } else if (e.response.statusCode == 400) {
          return left(AuthFailure.badRequest());
        }
      } else {
        return left(AuthFailure.serverError());
      }
      return left(AuthFailure.defaultError());
    }
  }
}

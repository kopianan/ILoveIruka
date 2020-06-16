import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/i_auth_facade.dart';
import 'package:i_love_iruka/domain/auth/login_data.dart';
import 'package:i_love_iruka/domain/auth/register_data.dart';
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
          return left(AuthFailure.badRequest());
        }
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }
}

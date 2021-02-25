import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/i_auth_facade.dart';
import 'package:i_love_iruka/domain/auth/sign_up_request.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/domain/user/role_data_model.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/infrastructure/auth/update_data.dart';
import 'package:i_love_iruka/infrastructure/core/local_storage.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  final Dio _dio;
  AuthRepository(this._dio);

  @override
  Future<Either<AuthFailure, UserDataModel>> registerNewUser(
      {SignUpRequest signUpRequest}) async {
    Response response;
    try {
      response = await _dio.post(
        Constants.getStagingUrl() + "/api/v1/users/end-user/sign-up",
        data: signUpRequest.toJson(),
      );
      print(response.data);
      final _result = UserDataModel.fromJson(response.data['data']);
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.type == DioErrorType.RESPONSE) {
          if (e.response.statusCode == 404 || e.response.statusCode == 400) {
            return left(AuthFailure.responseError(
                errorMessage: e.response.data['message']));
          }
        }
      }

      return left(AuthFailure.serverError(
          errorMessage: e.response.data['message']['message']));
    }
  }

  @override
  Future<Either<AuthFailure, List<RoleDataModel>>> getUserRole() async {
    Response response;
    try {
      response =
          await _dio.get(Constants.getStagingUrl() + "/api/v1/roles/end-user");

      final List _result = response.data['data'];
      List<RoleDataModel> _res =
          _result.map((e) => RoleDataModel.fromJson(e)).toList();
      return right(_res);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404 || e.response.statusCode == 400) {
          return left(AuthFailure.responseError(
              errorMessage: e.response.data['message']));
        }
      }

      return left(AuthFailure.serverError(errorMessage: e.toString()));
    }
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
        //   if (e.response.statusCode == 404) {
        //     return left(AuthFailure.notFound());
        //   } else if (e.response.statusCode == 400) {
        //     return left(AuthFailure.badRequest());
        //   }
        // } else {
        //   return left(AuthFailure.serverError());
        // }
      }
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, UserDataModel>> loginUser(
      String username, String password) async {
    Response response;

    try {
      response = await _dio.post(
          Constants.getStagingUrl() + "/api/v1/users/end-user/login",
          data: {'username': '$username', 'password': '$password'});

      final _result = UserDataModel.fromJson(response.data['data']);
      return right(_result);
    } on DioError catch (e) {
      print(e.response.data.toString());
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404 || e.response.statusCode == 400) {
          return left(AuthFailure.responseError(
              errorMessage: e.response.data['message']));
        }
      }
      return left(AuthFailure.serverError());
    }
  }
}

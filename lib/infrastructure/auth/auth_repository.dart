import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/i_auth_facade.dart';
import 'package:i_love_iruka/domain/auth/sign_up_request.dart';
import 'package:i_love_iruka/domain/user/role_data_model.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  final Dio _dio;
  AuthRepository(this._dio);

  AuthFailure dioErrorChecker(DioError error) {
    if (error.type == DioErrorType.RESPONSE) {
      if (error.response.statusCode == 404 ||
          error.response.statusCode == 400) {
        return AuthFailure.responseError(
            errorMessage: error.response.data['message']);
      } else {
        return AuthFailure.responseError(errorMessage: error.error.toString());
      }
    } else if (error.type == DioErrorType.DEFAULT) {
      print(error.error);
      return AuthFailure.responseError(errorMessage: "Default Error");
    } else
      return AuthFailure.serverError("Server error");
  }

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
      return left(dioErrorChecker(e));
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
      return left(dioErrorChecker(e));
    }
  }

  @override
  Either<AuthFailure, UserDataModel> checkAuthentcation() {
    final pref = Pref();
    try {
      final _userData = pref.getUserData;
      if (_userData == null) {
        return left(AuthFailure.responseError(errorMessage: "No User Data"));
      } else {
        return right(_userData);
      }
    } catch (e) {
      return left(AuthFailure.serverError("Server error"));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    final pref = Pref();
    try {
      await pref.removeStorageData();
      return right(unit);
    } catch (e) {
      return left(AuthFailure.serverError("Can not sign"));
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
      return left(dioErrorChecker(e));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/login_data.dart';
import 'package:i_love_iruka/domain/auth/register_data.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, LoginResponseData>> singInUser(LoginRequestData loginRequestData);
  Future<Either<AuthFailure, LoginResponseData>> registerNewUser({RegisterData registerData});
}

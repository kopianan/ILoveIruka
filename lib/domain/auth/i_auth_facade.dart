import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/login_data.dart';
import 'package:i_love_iruka/domain/auth/register_data.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/infrastructure/auth/update_data.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, LoginResponseData>> singInUser(
      LoginRequestData loginRequestData);
  Future<Either<AuthFailure, LoginResponseData>> updateCustomer(
      UpdateCustomerData requestUpdatedData);
  Future<Either<AuthFailure, LoginResponseData>> registerNewUser(
      {RegisterData registerData});
  Future<Either<AuthFailure, List<String>>> getUserRole();
  Future<Either<AuthFailure, User>> checkAuthentcation();
  Future<Either<AuthFailure, User>> saveAuthenticationToLocal({User user});
  Future<Either<AuthFailure, Unit>> signOut();
}

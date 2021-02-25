import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/sign_up_request.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/domain/user/role_data_model.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/infrastructure/auth/update_data.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, UserDataModel>> loginUser(
      String username, String password);
  // Future<Either<AuthFailure, LoginResponseData>> updateCustomer(
  //     UpdateCustomerData requestUpdatedData, File image);
  // Future<Either<AuthFailure, LoginResponseData>> updateGroomer(User user);
  Future<Either<AuthFailure, UserDataModel>> registerNewUser(
      {SignUpRequest signUpRequest});

  Future<Either<AuthFailure, List<RoleDataModel>>> getUserRole();
  Either<AuthFailure, User> checkAuthentcation();
  Future<Either<AuthFailure, Unit>> changeAvailability(
      {bool status, String id});
  Future<Either<AuthFailure, Unit>> signOut();
}

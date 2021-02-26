import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/sign_up_request.dart';

import 'package:i_love_iruka/domain/user/role_data_model.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, UserDataModel>> loginUser(
      String username, String password);
  Future<Either<AuthFailure, UserDataModel>> registerNewUser(
      {SignUpRequest signUpRequest});

  Future<Either<AuthFailure, List<RoleDataModel>>> getUserRole();
  Either<AuthFailure, UserDataModel> checkAuthentcation();
  Future<Either<AuthFailure, Unit>> signOut();
}

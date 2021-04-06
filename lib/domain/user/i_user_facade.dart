import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/user/password_data_model.dart';

import 'user_req_res_data_model.dart';

abstract class IUserFacade {
  Future<Either<GeneralFailure, String>> uploadPhoto(String image);
  Future<Either<GeneralFailure, UserResponseDataModel>> updateUserData(
      UserRequestDataModel request);
  Future<Either<GeneralFailure, String>> changePassword(
      PasswordDataModel password);
}

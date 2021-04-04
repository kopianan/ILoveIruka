import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/user/i_user_facade.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

@LazySingleton(as: IUserFacade)
class UserRepository extends IUserFacade {
  UserRepository(this._dio);
  final Dio _dio;

  GeneralFailure dioErrorChecker(DioError error) {
    if (error.type == DioErrorType.RESPONSE) {
      if (error.response.statusCode == 404 ||
          error.response.statusCode == 400) {
        return GeneralFailure(error.response.data.toString());
      } else {
        return GeneralFailure(error.error.toString());
      }
    } else if (error.type == DioErrorType.DEFAULT) {
      print(error.error);
      return GeneralFailure("Default Error");
    } else
      return GeneralFailure("Server error");
  }

  @override
  Future<Either<GeneralFailure, String>> uploadPhoto(String image) async {
    Response response;

    var formData = FormData.fromMap({
      "id": basename(image),
      "file": MultipartFile.fromFileSync(image, filename: basename(image)),
    });

    try {
      response = await _dio.post(
          Constants.getStagingUrl() + "/api/v1/images/profile-picture",
          data: formData);
      print(response.data);
      final _res = response.data['data']['path'];
      return right(_res.toString());
    } on DioError catch (e) {
      return left(dioErrorChecker(e));
    }
  }
}

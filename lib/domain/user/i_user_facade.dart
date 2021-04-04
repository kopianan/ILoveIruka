import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';

abstract class IUserFacade {
  Future<Either<GeneralFailure, String>> uploadPhoto(String image);
}

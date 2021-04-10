import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/membership/membership_data_model.dart';

abstract class IMembershipFacade {
  Future<Either<GeneralFailure, List<MembershipDataModel>>> getMembershipData();
}

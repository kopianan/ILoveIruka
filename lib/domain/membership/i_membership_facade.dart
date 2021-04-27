import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/membership/member_info_data_model.dart';
import 'package:i_love_iruka/domain/membership/membership_data_model.dart';

abstract class IMembershipFacade {
  Future<Either<GeneralFailure, List<MembershipDataModel>>> getMembershipData();
  Future<Either<GeneralFailure, MemberInfoDataModel>> getMyMembership();
  Future<Either<GeneralFailure, MembershipDataModel>> getMembershipById(
      String id);
}

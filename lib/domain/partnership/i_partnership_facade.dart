import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/partnership/partnership_data_model.dart';

abstract class IPartnershipFacade {
  Future<Either<GeneralFailure, List<PartnershipDataModel>>>
      getAllPartnership();
}

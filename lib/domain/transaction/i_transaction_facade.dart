import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/transaction/transaction_failure.dart';
import 'package:i_love_iruka/domain/transaction/transaction_r.dart';

abstract class ITransactionFacade {
  Future<Either<TransactionFailure, GetPointAndLastTransResponse>>
      getPointAndLastTrans(GetPointAndLastTransRequest userId);
  // Future<Either<TransactionFailure, LoginResponseData>> registerNewUser({RegisterData registerData});
}

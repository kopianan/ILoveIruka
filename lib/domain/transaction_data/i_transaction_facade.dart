import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction/transaction_data_model.dart';

import 'transaction_response_data.dart';

abstract class ITransactionFacade {
  Future<Either<GeneralFailure, TransactionResponseData>> getTransaction();
  Future<Either<GeneralFailure, TransactionDataModel>> getTransactionById(
      String id);
}

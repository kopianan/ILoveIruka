import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/transaction/i_transaction_facade.dart';
import 'package:i_love_iruka/domain/transaction/transaction_r.dart';
import 'package:i_love_iruka/domain/transaction/transaction_failure.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITransactionFacade)
class TransactionRepository extends ITransactionFacade {
  TransactionRepository(this._dio);
  final Dio _dio;

  @override
  Future<Either<TransactionFailure, GetPointAndLastTransResponse>>
      getPointAndLastTrans(GetPointAndLastTransRequest userId) async {
    Response response;
    try {
      response = await _dio.get(
          Constants.getBaseUrl() + "/GetSpecificCustomerLastTransaction",
          queryParameters: userId.toJson());
      final _res = response.data;
      final _result = GetPointAndLastTransResponse.fromJson(_res);
      print("REPO" + _result.toJson().toString());
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        if (e.response.statusCode == 404) {
          return left(TransactionFailure.notFound());
        } else if (e.response.statusCode == 400) {
          return left(TransactionFailure.badRequest());
        }
      } else {
        return left(TransactionFailure.serverError());
      }
    }

    return left(TransactionFailure.serverError());
  }
}

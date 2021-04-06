import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/transaction_data/i_transaction_facade.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction_response_data.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITransactionFacade)
class TransactionRepository extends ITransactionFacade {
  final Dio _dio;
  TransactionRepository(this._dio);

  GeneralFailure checkErrorData(DioError e) {
    if (e.type == DioErrorType.RESPONSE) {
      if (e.response.statusCode == 404 ||
          e.response.statusCode == 400 ||
          e.response.statusCode == 401) {
        return GeneralFailure(e.response.data['message']);
      }
    } else if (e.type == DioErrorType.DEFAULT) {
      return GeneralFailure("something wrong with the server");
    }

    return GeneralFailure("Server Error");
  }

  Options getDioOptions() {
    String _token = Pref().getUserData.token;
    Options options = Options(headers: {"Authorization": "Bearer $_token"});
    return options;
  }

//TODO : change the id of user
  @override
  Future<Either<GeneralFailure, TransactionResponseData>> getTransaction(
      String userId) async {
    Response response;
//TODO ; change the header ( dummy )
    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/transactions/by-user",
          options: getDioOptions());

      final _data = response.data['data'];
      TransactionResponseData _result = TransactionResponseData.fromJson(_data);
      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }
}

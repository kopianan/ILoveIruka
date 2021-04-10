part of 'transaction_bloc.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.loading() = _Loading;
  const factory TransactionState.error(GeneralFailure failure) = _Error;

  const factory TransactionState.onGetTransaction(
      TransactionResponseData data) = _OnGetTransaction;
  const factory TransactionState.onGetTransactionById(
      TransactionDataModel data) = _OnGetTransactionById;
}

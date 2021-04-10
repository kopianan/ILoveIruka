part of 'transaction_bloc.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.started() = _Started;
  const factory TransactionEvent.getTransactions() = _GetTransactions;
  const factory TransactionEvent.getTransactionById(String id) =
      _GetTransactionById;
}

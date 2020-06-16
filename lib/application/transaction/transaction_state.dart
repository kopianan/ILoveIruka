part of 'transaction_bloc.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  factory TransactionState.onProgress() = _OnProgress;
  factory TransactionState.initial() = _Initial;
  factory TransactionState.onGetPointOption(
      Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
          failOrSuccessOption) = _OnGetPointOption;
}

part of 'transaction_bloc.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  factory TransactionEvent.getPointAndLastTrans({@required GetPointAndLastTransRequest userId}) =
      _GetPointAndLastTrans;
  factory TransactionEvent.getAllTransaction({@required String userId}) =
      _GetAllTransaction;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/transaction/transaction_data.dart';

part 'transaction_r.freezed.dart';
part 'transaction_r.g.dart';

@freezed
abstract class TransactionR with _$TransactionR {
  factory TransactionR.getPointAndLastTransResponse(
      {TransactionData lastTransaction,
      int customerPoints}) = GetPointAndLastTransResponse;
  factory TransactionR.getPointAndLastTransRequest({
    String id,
  }) = GetPointAndLastTransRequest;

  factory TransactionR.fromJson(Map<String, dynamic> json) =>
      _$TransactionRFromJson(json);
}

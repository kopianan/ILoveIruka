import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_data.freezed.dart';
part 'transaction_data.g.dart';

@freezed
abstract class TransactionData with _$TransactionData {
  factory TransactionData.transData({
    @JsonKey(name: "CustomerId") String customerId,
    @JsonKey(name: "CouponId") String couponId,
    @JsonKey(name: "CouponValue") String couponValue,
    @JsonKey(name: "SubTotal") double subTotal,
    @JsonKey(name: "Total") double total,
    @JsonKey(name: "Notes") String notes,
    @JsonKey(name: "EarnedPoint") int earnedPoint,
    @JsonKey(name: "CustomerName") String customerName,
    @JsonKey(name: "TransactionType") String transactionType,
    @JsonKey(name: "TransactionTypeOptions") String transactionTypeOptions,
    @JsonKey(name: "CreatedBy") String createdBy,
    @JsonKey(name: "CreatedDate") String createdDate,
    @JsonKey(name: "ModifiedBy") String modifiedBy,
    @JsonKey(name: "ModifiedDate") String modifiedDate,
  }) = TransData;
  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

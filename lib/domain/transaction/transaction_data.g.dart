// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransData _$_$TransDataFromJson(Map<String, dynamic> json) {
  return _$TransData(
    customerId: json['CustomerId'] as String,
    couponId: json['CouponId'] as String,
    couponValue: json['CouponValue'] as String,
    subTotal: (json['SubTotal'] as num)?.toDouble(),
    total: (json['Total'] as num)?.toDouble(),
    notes: json['Notes'] as String,
    earnedPoint: json['EarnedPoint'] as int,
    customerName: json['CustomerName'] as String,
    transactionType: json['TransactionType'] as String,
    transactionTypeOptions: json['TransactionTypeOptions'] as String,
    createdBy: json['CreatedBy'] as String,
    createdDate: json['CreatedDate'] as String,
    modifiedBy: json['ModifiedBy'] as String,
    modifiedDate: json['ModifiedDate'] as String,
  );
}

Map<String, dynamic> _$_$TransDataToJson(_$TransData instance) =>
    <String, dynamic>{
      'CustomerId': instance.customerId,
      'CouponId': instance.couponId,
      'CouponValue': instance.couponValue,
      'SubTotal': instance.subTotal,
      'Total': instance.total,
      'Notes': instance.notes,
      'EarnedPoint': instance.earnedPoint,
      'CustomerName': instance.customerName,
      'TransactionType': instance.transactionType,
      'TransactionTypeOptions': instance.transactionTypeOptions,
      'CreatedBy': instance.createdBy,
      'CreatedDate': instance.createdDate,
      'ModifiedBy': instance.modifiedBy,
      'ModifiedDate': instance.modifiedDate,
    };

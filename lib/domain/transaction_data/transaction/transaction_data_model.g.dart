// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDataModel _$_$_TransactionDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionDataModel(
    id: json['id'] as String,
    transactionNumber: json['transactionNumber'] as String,
    total: (json['total'] as num)?.toDouble(),
    formattedTotal: json['formattedTotal'] as String,
    formattedTotalInSale: json['formattedTotalInSale'] as String,
    totalInSale: (json['totalInSale'] as num)?.toDouble(),
    coupon: json['coupon'] == null
        ? null
        : CoupontDataModel.fromJson(json['coupon'] as Map<String, dynamic>),
    remark: json['remark'] as String,
    createdBy: json['createdBy'] as String,
    createdAt: json['createdAt'] as String,
    details: (json['details'] as List)
        ?.map((e) => e == null
            ? null
            : TransactionMenuDetailDataModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_TransactionDataModelToJson(
        _$_TransactionDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionNumber': instance.transactionNumber,
      'total': instance.total,
      'formattedTotal': instance.formattedTotal,
      'formattedTotalInSale': instance.formattedTotalInSale,
      'totalInSale': instance.totalInSale,
      'coupon': instance.coupon,
      'remark': instance.remark,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'details': instance.details,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupont_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoupontDataModel _$_$_CoupontDataModelFromJson(Map<String, dynamic> json) {
  return _$_CoupontDataModel(
    amount: (json['amount'] as num)?.toDouble(),
    purchasedTimes: json['purchasedTimes'] as int,
    value: (json['value'] as num)?.toDouble(),
    type: json['type'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_CoupontDataModelToJson(
        _$_CoupontDataModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'purchasedTimes': instance.purchasedTimes,
      'value': instance.value,
      'type': instance.type,
      'id': instance.id,
    };

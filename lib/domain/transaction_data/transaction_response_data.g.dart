// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionResponseData _$_$_TransactionResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionResponseData(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : TransactionDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_TransactionResponseDataToJson(
        _$_TransactionResponseData instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

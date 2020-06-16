// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_r.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPointAndLastTransResponse _$_$GetPointAndLastTransResponseFromJson(
    Map<String, dynamic> json) {
  return _$GetPointAndLastTransResponse(
    lastTransaction: json['lastTransaction'] == null
        ? null
        : TransactionData.fromJson(
            json['lastTransaction'] as Map<String, dynamic>),
    customerPoints: json['customerPoints'] as int,
  );
}

Map<String, dynamic> _$_$GetPointAndLastTransResponseToJson(
        _$GetPointAndLastTransResponse instance) =>
    <String, dynamic>{
      'lastTransaction': instance.lastTransaction,
      'customerPoints': instance.customerPoints,
    };

_$GetPointAndLastTransRequest _$_$GetPointAndLastTransRequestFromJson(
    Map<String, dynamic> json) {
  return _$GetPointAndLastTransRequest(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$GetPointAndLastTransRequestToJson(
        _$GetPointAndLastTransRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

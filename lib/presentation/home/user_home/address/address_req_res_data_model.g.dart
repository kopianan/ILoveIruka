// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_req_res_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressResponse _$_$AddressResponseFromJson(Map<String, dynamic> json) {
  return _$AddressResponse(
    id: json['id'] as String,
    user: json['user'] as String,
    province: json['province'] as String,
    provinceId: json['province_id'] as String,
    city: json['city'] as String,
    cityId: json['city_id'] as String,
    type: json['type'] as String,
    address: json['address'] as String,
    postalCode: json['postalCode'] as String,
  );
}

Map<String, dynamic> _$_$AddressResponseToJson(_$AddressResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'province': instance.province,
      'province_id': instance.provinceId,
      'city': instance.city,
      'city_id': instance.cityId,
      'type': instance.type,
      'address': instance.address,
      'postalCode': instance.postalCode,
    };

_$AddressRequest _$_$AddressRequestFromJson(Map<String, dynamic> json) {
  return _$AddressRequest(
    province: json['province'] as String,
    provinceId: json['province_id'] as String,
    city: json['city'] as String,
    cityId: json['city_id'] as String,
    type: json['type'] as String,
    address: json['address'] as String,
    postalCode: json['postalCode'] as String,
  );
}

Map<String, dynamic> _$_$AddressRequestToJson(_$AddressRequest instance) =>
    <String, dynamic>{
      'province': instance.province,
      'province_id': instance.provinceId,
      'city': instance.city,
      'city_id': instance.cityId,
      'type': instance.type,
      'address': instance.address,
      'postalCode': instance.postalCode,
    };

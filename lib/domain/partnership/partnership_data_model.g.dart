// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partnership_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PartnershipDataModel _$_$_PartnershipDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_PartnershipDataModel(
    id: json['id'] as String,
    fullName: json['fullName'] as String,
    email: json['email'] as String,
    phoneNumber: json['phoneNumber'] as String,
    imageUrl: json['imageUrl'] as String ?? 'no image',
    lang: json['lang'] as String ?? '1',
    lat: json['lat'] as String ?? '1',
    description: json['description'] as String ?? 'no description',
  );
}

Map<String, dynamic> _$_$_PartnershipDataModelToJson(
        _$_PartnershipDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
      'lang': instance.lang,
      'lat': instance.lat,
      'description': instance.description,
    };

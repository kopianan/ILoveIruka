// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_req_res_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRequestDataModel _$_$UserRequestDataModelFromJson(
    Map<String, dynamic> json) {
  return _$UserRequestDataModel(
    fullName: json['fullName'] as String,
    phoneNumber: json['phoneNumber'] as String,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$_$UserRequestDataModelToJson(
        _$UserRequestDataModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
    };

_$UserResponseDataModel _$_$UserResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _$UserResponseDataModel(
    id: json['id'] as String,
    fullName: json['fullName'] as String,
    phoneNumber: json['phoneNumber'] as String,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$_$UserResponseDataModelToJson(
        _$UserResponseDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
    };

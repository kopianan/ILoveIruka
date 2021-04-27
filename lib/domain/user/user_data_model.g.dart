// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataModel _$_$_UserDataModelFromJson(Map<String, dynamic> json) {
  return _$_UserDataModel(
    email: json['email'] as String,
    id: json['id'] as String,
    fullName: json['fullName'] as String,
    role: json['role'] == null
        ? null
        : RoleDataModel.fromJson(json['role'] as Map<String, dynamic>),
    imageUrl: json['imageUrl'] as String ?? '',
    phoneNumber: json['phoneNumber'] as String,
    token: json['token'] as String,
    points: json['points'] as int ?? 0,
  );
}

Map<String, dynamic> _$_$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'fullName': instance.fullName,
      'role': instance.role,
      'imageUrl': instance.imageUrl,
      'phoneNumber': instance.phoneNumber,
      'token': instance.token,
      'points': instance.points,
    };

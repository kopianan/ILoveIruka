// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataModel _$_$_UserDataModelFromJson(Map<String, dynamic> json) {
  return _$_UserDataModel(
    email: json['email'] as String,
    fullName: json['fullName'] as String,
    role: json['role'] == null
        ? null
        : RoleDataModel.fromJson(json['role'] as Map<String, dynamic>),
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'role': instance.role,
      'token': instance.token,
    };

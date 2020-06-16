// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestData _$_$LoginRequestDataFromJson(Map<String, dynamic> json) {
  return _$LoginRequestData(
    username: json['username'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$LoginRequestDataToJson(_$LoginRequestData instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$LoginResponseData _$_$LoginResponseDataFromJson(Map<String, dynamic> json) {
  return _$LoginResponseData(
    user: json['User'] == null
        ? null
        : User.fromJson(json['User'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$LoginResponseDataToJson(
        _$LoginResponseData instance) =>
    <String, dynamic>{
      'User': instance.user,
    };

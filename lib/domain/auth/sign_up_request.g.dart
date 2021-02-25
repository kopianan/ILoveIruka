// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpRequest _$_$_SignUpRequestFromJson(Map<String, dynamic> json) {
  return _$_SignUpRequest(
    fullName: json['fullName'] as String,
    roleId: json['role'] as String,
    phoneNumber: json['phoneNumber'] as String,
    image: json['imageUrl'] as String,
    userName: json['username'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    passwordConfirmation: json['passwordConfirmation'] as String,
  );
}

Map<String, dynamic> _$_$_SignUpRequestToJson(_$_SignUpRequest instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'role': instance.roleId,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.image,
      'username': instance.userName,
      'email': instance.email,
      'password': instance.password,
      'passwordConfirmation': instance.passwordConfirmation,
    };

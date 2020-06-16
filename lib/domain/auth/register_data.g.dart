// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestData _$_$RegisterRequestDataFromJson(
    Map<String, dynamic> json) {
  return _$RegisterRequestData(
    accessKey: json['AccessKey'] as String,
    name: json['Name'] as String,
    email: json['Email'] as String,
    password: json['Password'] as String,
    role: json['Role'] as String,
    availability: json['Availability'] as String,
    styling: json['Styling'] as String,
    cliping: json['Cliping'] as String,
    trainingYears: json['TrainingYears'] as String,
  );
}

Map<String, dynamic> _$_$RegisterRequestDataToJson(
        _$RegisterRequestData instance) =>
    <String, dynamic>{
      'AccessKey': instance.accessKey,
      'Name': instance.name,
      'Email': instance.email,
      'Password': instance.password,
      'Role': instance.role,
      'Availability': instance.availability,
      'Styling': instance.styling,
      'Cliping': instance.cliping,
      'TrainingYears': instance.trainingYears,
    };

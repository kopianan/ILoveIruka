// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['Id'] as String,
    accessKey: json['accessKey'] as String,
    email: json['Email'] as String,
    name: json['Name'] as String,
    description: json['Description'] as String,
    address: json['Address'] as String,
    phoneNumber: json['PhoneNumber'] as String,
    picture: json['Picture'] as String,
    createdDate: json['CreatedDate'] as String,
    pIC: json['PIC'] as String,
    keyFeatures: json['KeyFeatures'] as String,
    coverageArea: json['CoverageArea'] as String,
    yearsOfExperience: json['YearsOfExperience'] as int,
    availability: json['Availability'] as bool,
    styling: json['Styling'] as int,
    clipping: json['Clipping'] as int,
    trainingStartDate: json['TrainingStartDate'] as String,
    trainingYears: json['TrainingYears'] as int,
    trainingCourses: json['TrainingCourses'] as String,
    show: json['Show'] as bool,
    certificate: json['Certificate'] as String,
    role: json['Role'] as String,
    isActive: json['IsActive'] as bool,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'Id': instance.id,
      'accessKey': instance.accessKey,
      'Email': instance.email,
      'Name': instance.name,
      'Description': instance.description,
      'Address': instance.address,
      'PhoneNumber': instance.phoneNumber,
      'Picture': instance.picture,
      'CreatedDate': instance.createdDate,
      'PIC': instance.pIC,
      'KeyFeatures': instance.keyFeatures,
      'CoverageArea': instance.coverageArea,
      'YearsOfExperience': instance.yearsOfExperience,
      'Availability': instance.availability,
      'Styling': instance.styling,
      'Clipping': instance.clipping,
      'TrainingStartDate': instance.trainingStartDate,
      'TrainingYears': instance.trainingYears,
      'TrainingCourses': instance.trainingCourses,
      'Show': instance.show,
      'Certificate': instance.certificate,
      'Role': instance.role,
      'IsActive': instance.isActive,
    };

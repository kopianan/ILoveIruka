// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetDataModel _$_$_PetDataModelFromJson(Map<String, dynamic> json) {
  return _$_PetDataModel(
    json['id'] as String,
    json['name'] as String,
    json['profilePictureUrl'] as String,
    json['birthDate'] as String,
    json['race'] as String,
    json['gender'] == null
        ? null
        : Label.fromJson(json['gender'] as Map<String, dynamic>),
    json['animal'] == null
        ? null
        : Label.fromJson(json['animal'] as Map<String, dynamic>),
    json['bio'] as String,
    json['weight'] as int,
    json['user'] as String,
  );
}

Map<String, dynamic> _$_$_PetDataModelToJson(_$_PetDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profilePictureUrl': instance.profilePictureUrl,
      'birthDate': instance.birthDate,
      'race': instance.race,
      'gender': instance.gender,
      'animal': instance.animal,
      'bio': instance.bio,
      'weight': instance.weight,
      'user': instance.user,
    };

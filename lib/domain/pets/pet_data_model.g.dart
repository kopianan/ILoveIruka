// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetDataModel _$_$_PetDataModelFromJson(Map<String, dynamic> json) {
  return _$_PetDataModel(
    id: json['id'] as String,
    name: json['name'] as String,
    profilePictureUrl: json['profilePictureUrl'] as String,
    birthDate: json['birthDate'] as String,
    race: json['race'] as String,
    gender: json['gender'] == null
        ? null
        : Label.fromJson(json['gender'] as Map<String, dynamic>),
    animal: json['animal'] == null
        ? null
        : Label.fromJson(json['animal'] as Map<String, dynamic>),
    bio: json['bio'] as String,
    weight: json['weight'] as int,
    user: json['user'] as String,
    isStumbum: json['isStumbum'] as bool,
    isPedigree: json['isPedigree'] as bool,
    isSterile: json['isSterile'] as bool,
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
      'isStumbum': instance.isStumbum,
      'isPedigree': instance.isPedigree,
      'isSterile': instance.isSterile,
    };

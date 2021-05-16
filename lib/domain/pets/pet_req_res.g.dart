// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_req_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePetRequestData _$_$SavePetRequestDataFromJson(Map<String, dynamic> json) {
  return _$SavePetRequestData(
    id: json['id'] as String,
    name: json['name'] as String,
    profilePictureUrl: json['profilePictureUrl'] as String,
    race: json['race'] as String,
    gender: json['gender'] as String,
    animal: json['animal'] as String,
    bio: json['bio'] as String,
    weight: json['weight'] as String,
    birthDate: json['birthDate'] as String,
    isStumbum: json['isStumbum'] as bool,
    isSterile: json['isSterile'] as bool,
    isPedigree: json['isPedigree'] as bool,
  );
}

Map<String, dynamic> _$_$SavePetRequestDataToJson(
        _$SavePetRequestData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profilePictureUrl': instance.profilePictureUrl,
      'race': instance.race,
      'gender': instance.gender,
      'animal': instance.animal,
      'bio': instance.bio,
      'weight': instance.weight,
      'birthDate': instance.birthDate,
      'isStumbum': instance.isStumbum,
      'isSterile': instance.isSterile,
      'isPedigree': instance.isPedigree,
    };

_$GetPetRequestData _$_$GetPetRequestDataFromJson(Map<String, dynamic> json) {
  return _$GetPetRequestData(
    name: json['name'] as String ?? '',
    race: json['race'] as String ?? '',
    gender: (json['gender'] as List)?.map((e) => e as String)?.toList() ?? [],
    animal: (json['animal'] as List)?.map((e) => e as String)?.toList() ?? [],
    weight: (json['weight'] as List)?.map((e) => e as int)?.toList() ?? [],
    isStumbum: json['isStumbum'] as bool,
    isSterile: json['isSterile'] as bool,
    isPedigree: json['isPedigree'] as bool,
  );
}

Map<String, dynamic> _$_$GetPetRequestDataToJson(
        _$GetPetRequestData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'race': instance.race,
      'gender': instance.gender,
      'animal': instance.animal,
      'weight': instance.weight,
      'isStumbum': instance.isStumbum,
      'isSterile': instance.isSterile,
      'isPedigree': instance.isPedigree,
    };

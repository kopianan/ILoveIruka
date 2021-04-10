// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MembershipDataModel _$_$_MembershipDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_MembershipDataModel(
    id: json['id'] as String,
    label: json['label'] as String,
    duration: json['duration'] as int,
    description: json['description'] as String,
    createdBy: json['createdBy'] as String,
  );
}

Map<String, dynamic> _$_$_MembershipDataModelToJson(
        _$_MembershipDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'duration': instance.duration,
      'description': instance.description,
      'createdBy': instance.createdBy,
    };

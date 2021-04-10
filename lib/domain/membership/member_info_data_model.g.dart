// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberInfoDataModel _$_$_MemberInfoDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_MemberInfoDataModel(
    id: json['id'] as String,
    user: json['user'] as String,
    memberNumber: json['memberNumber'] as String,
    type: json['type'] == null
        ? null
        : MembershipDataModel.fromJson(json['type'] as Map<String, dynamic>),
    startAt: json['startAt'] as String,
    endedAt: json['endedAt'] as String,
  );
}

Map<String, dynamic> _$_$_MemberInfoDataModelToJson(
        _$_MemberInfoDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'memberNumber': instance.memberNumber,
      'type': instance.type,
      'startAt': instance.startAt,
      'endedAt': instance.endedAt,
    };

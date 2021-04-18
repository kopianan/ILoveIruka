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
    startAt: json['startAt'] as String ?? '2021-04-09T22:54:19.881Z',
    endedAt: json['endedAt'] as String ?? '2021-04-09T22:54:19.881Z',
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

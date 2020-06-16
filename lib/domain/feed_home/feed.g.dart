// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopFeedData _$_$TopFeedDataFromJson(Map<String, dynamic> json) {
  return _$TopFeedData(
    productName: json['ProductName'] as String,
    description: json['Description'] as String,
    link: json['Link'] as String,
    picture: json['Picture'] as String,
    priority: json['Priority'] as int,
    scheduleDate: json['ScheduleDate'] as String,
    eventStatus: json['EventStatus'] as int,
    id: json['Id'] as String,
    createdDate: json['CreatedDate'] as String,
    createdBy: json['CreatedBy'] as String,
    modifiedDate: json['ModifiedDate'] as String,
    modifiedBy: json['ModifiedBy'] as String,
    isActive: json['IsActive'] as bool,
  );
}

Map<String, dynamic> _$_$TopFeedDataToJson(_$TopFeedData instance) =>
    <String, dynamic>{
      'ProductName': instance.productName,
      'Description': instance.description,
      'Link': instance.link,
      'Picture': instance.picture,
      'Priority': instance.priority,
      'ScheduleDate': instance.scheduleDate,
      'EventStatus': instance.eventStatus,
      'Id': instance.id,
      'CreatedDate': instance.createdDate,
      'CreatedBy': instance.createdBy,
      'ModifiedDate': instance.modifiedDate,
      'ModifiedBy': instance.modifiedBy,
      'IsActive': instance.isActive,
    };

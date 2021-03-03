// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feed _$_$_FeedFromJson(Map<String, dynamic> json) {
  return _$_Feed(
    id: json['id'] as String,
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    content: json['content'] as String,
    imageUrl: json['imageUrl'] as String,
    type: json['type'] as String,
    typeLabel: json['typeLabel'] as String,
  );
}

Map<String, dynamic> _$_$_FeedToJson(_$_Feed instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'type': instance.type,
      'typeLabel': instance.typeLabel,
    };

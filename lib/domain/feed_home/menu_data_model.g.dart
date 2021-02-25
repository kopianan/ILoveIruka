// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopMenuDataModelData _$_$TopMenuDataModelDataFromJson(
    Map<String, dynamic> json) {
  return _$TopMenuDataModelData(
    id: json['id'] as String,
    label: json['label'] as String,
    action: json['action'] as String,
    type: json['type'] as String,
    imageUrl: json['imageUrl'] as String,
    order: json['order'] as int,
  );
}

Map<String, dynamic> _$_$TopMenuDataModelDataToJson(
        _$TopMenuDataModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'action': instance.action,
      'type': instance.type,
      'imageUrl': instance.imageUrl,
      'order': instance.order,
    };

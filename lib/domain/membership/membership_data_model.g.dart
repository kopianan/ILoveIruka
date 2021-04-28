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
    duration: (json['duration'] as num)?.toDouble(),
    description: json['description'] as String,
    price: (json['price'] as num)?.toDouble(),
    formattedPrice: json['formattedPrice'] as String,
    specialDiscount: (json['specialDiscount'] as num)?.toDouble(),
    formattedSpecialDiscount: json['formattedSpecialDiscount'] as String,
    colors: (json['colors'] as List)?.map((e) => e as String)?.toList() ??
        ['FF3CB4FF', 'FF3CB4FF', 'FF3CB4FF', 'FF3CB4FF'],
    createdBy: json['createdBy'] as String,
    lastUpdatedBy: json['lastUpdatedBy'] as String,
  );
}

Map<String, dynamic> _$_$_MembershipDataModelToJson(
        _$_MembershipDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'duration': instance.duration,
      'description': instance.description,
      'price': instance.price,
      'formattedPrice': instance.formattedPrice,
      'specialDiscount': instance.specialDiscount,
      'formattedSpecialDiscount': instance.formattedSpecialDiscount,
      'colors': instance.colors,
      'createdBy': instance.createdBy,
      'lastUpdatedBy': instance.lastUpdatedBy,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_menu_detail_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionMenuDetailDataModel _$_$_TransactionMenuDetailDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionMenuDetailDataModel(
    qty: json['qty'] as int,
    price: json['price'] as int,
    product: (json['product'] as List)
        ?.map((e) => e == null
            ? null
            : MenuDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_TransactionMenuDetailDataModelToJson(
        _$_TransactionMenuDetailDataModel instance) =>
    <String, dynamic>{
      'qty': instance.qty,
      'price': instance.price,
      'product': instance.product,
      'id': instance.id,
    };

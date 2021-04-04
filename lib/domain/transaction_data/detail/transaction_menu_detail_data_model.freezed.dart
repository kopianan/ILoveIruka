// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_menu_detail_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionMenuDetailDataModel _$TransactionMenuDetailDataModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionMenuDetailDataModel.fromJson(json);
}

/// @nodoc
class _$TransactionMenuDetailDataModelTearOff {
  const _$TransactionMenuDetailDataModelTearOff();

// ignore: unused_element
  _TransactionMenuDetailDataModel call(
      {int qty, int price, List<MenuDataModel> product, String id}) {
    return _TransactionMenuDetailDataModel(
      qty: qty,
      price: price,
      product: product,
      id: id,
    );
  }

// ignore: unused_element
  TransactionMenuDetailDataModel fromJson(Map<String, Object> json) {
    return TransactionMenuDetailDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionMenuDetailDataModel =
    _$TransactionMenuDetailDataModelTearOff();

/// @nodoc
mixin _$TransactionMenuDetailDataModel {
  int get qty;
  int get price;
  List<MenuDataModel> get product;
  String get id;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TransactionMenuDetailDataModelCopyWith<TransactionMenuDetailDataModel>
      get copyWith;
}

/// @nodoc
abstract class $TransactionMenuDetailDataModelCopyWith<$Res> {
  factory $TransactionMenuDetailDataModelCopyWith(
          TransactionMenuDetailDataModel value,
          $Res Function(TransactionMenuDetailDataModel) then) =
      _$TransactionMenuDetailDataModelCopyWithImpl<$Res>;
  $Res call({int qty, int price, List<MenuDataModel> product, String id});
}

/// @nodoc
class _$TransactionMenuDetailDataModelCopyWithImpl<$Res>
    implements $TransactionMenuDetailDataModelCopyWith<$Res> {
  _$TransactionMenuDetailDataModelCopyWithImpl(this._value, this._then);

  final TransactionMenuDetailDataModel _value;
  // ignore: unused_field
  final $Res Function(TransactionMenuDetailDataModel) _then;

  @override
  $Res call({
    Object qty = freezed,
    Object price = freezed,
    Object product = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      qty: qty == freezed ? _value.qty : qty as int,
      price: price == freezed ? _value.price : price as int,
      product:
          product == freezed ? _value.product : product as List<MenuDataModel>,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionMenuDetailDataModelCopyWith<$Res>
    implements $TransactionMenuDetailDataModelCopyWith<$Res> {
  factory _$TransactionMenuDetailDataModelCopyWith(
          _TransactionMenuDetailDataModel value,
          $Res Function(_TransactionMenuDetailDataModel) then) =
      __$TransactionMenuDetailDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int qty, int price, List<MenuDataModel> product, String id});
}

/// @nodoc
class __$TransactionMenuDetailDataModelCopyWithImpl<$Res>
    extends _$TransactionMenuDetailDataModelCopyWithImpl<$Res>
    implements _$TransactionMenuDetailDataModelCopyWith<$Res> {
  __$TransactionMenuDetailDataModelCopyWithImpl(
      _TransactionMenuDetailDataModel _value,
      $Res Function(_TransactionMenuDetailDataModel) _then)
      : super(_value, (v) => _then(v as _TransactionMenuDetailDataModel));

  @override
  _TransactionMenuDetailDataModel get _value =>
      super._value as _TransactionMenuDetailDataModel;

  @override
  $Res call({
    Object qty = freezed,
    Object price = freezed,
    Object product = freezed,
    Object id = freezed,
  }) {
    return _then(_TransactionMenuDetailDataModel(
      qty: qty == freezed ? _value.qty : qty as int,
      price: price == freezed ? _value.price : price as int,
      product:
          product == freezed ? _value.product : product as List<MenuDataModel>,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransactionMenuDetailDataModel
    implements _TransactionMenuDetailDataModel {
  _$_TransactionMenuDetailDataModel(
      {this.qty, this.price, this.product, this.id});

  factory _$_TransactionMenuDetailDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMenuDetailDataModelFromJson(json);

  @override
  final int qty;
  @override
  final int price;
  @override
  final List<MenuDataModel> product;
  @override
  final String id;

  @override
  String toString() {
    return 'TransactionMenuDetailDataModel(qty: $qty, price: $price, product: $product, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMenuDetailDataModel &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$TransactionMenuDetailDataModelCopyWith<_TransactionMenuDetailDataModel>
      get copyWith => __$TransactionMenuDetailDataModelCopyWithImpl<
          _TransactionMenuDetailDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMenuDetailDataModelToJson(this);
  }
}

abstract class _TransactionMenuDetailDataModel
    implements TransactionMenuDetailDataModel {
  factory _TransactionMenuDetailDataModel(
      {int qty,
      int price,
      List<MenuDataModel> product,
      String id}) = _$_TransactionMenuDetailDataModel;

  factory _TransactionMenuDetailDataModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionMenuDetailDataModel.fromJson;

  @override
  int get qty;
  @override
  int get price;
  @override
  List<MenuDataModel> get product;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$TransactionMenuDetailDataModelCopyWith<_TransactionMenuDetailDataModel>
      get copyWith;
}

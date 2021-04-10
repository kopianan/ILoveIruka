// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductDataModel _$ProductDataModelFromJson(Map<String, dynamic> json) {
  return _ProductDataModel.fromJson(json);
}

/// @nodoc
class _$ProductDataModelTearOff {
  const _$ProductDataModelTearOff();

// ignore: unused_element
  _ProductDataModel call({String name, String id}) {
    return _ProductDataModel(
      name: name,
      id: id,
    );
  }

// ignore: unused_element
  ProductDataModel fromJson(Map<String, Object> json) {
    return ProductDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductDataModel = _$ProductDataModelTearOff();

/// @nodoc
mixin _$ProductDataModel {
  String get name;
  String get id;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductDataModelCopyWith<ProductDataModel> get copyWith;
}

/// @nodoc
abstract class $ProductDataModelCopyWith<$Res> {
  factory $ProductDataModelCopyWith(
          ProductDataModel value, $Res Function(ProductDataModel) then) =
      _$ProductDataModelCopyWithImpl<$Res>;
  $Res call({String name, String id});
}

/// @nodoc
class _$ProductDataModelCopyWithImpl<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  _$ProductDataModelCopyWithImpl(this._value, this._then);

  final ProductDataModel _value;
  // ignore: unused_field
  final $Res Function(ProductDataModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductDataModelCopyWith<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  factory _$ProductDataModelCopyWith(
          _ProductDataModel value, $Res Function(_ProductDataModel) then) =
      __$ProductDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id});
}

/// @nodoc
class __$ProductDataModelCopyWithImpl<$Res>
    extends _$ProductDataModelCopyWithImpl<$Res>
    implements _$ProductDataModelCopyWith<$Res> {
  __$ProductDataModelCopyWithImpl(
      _ProductDataModel _value, $Res Function(_ProductDataModel) _then)
      : super(_value, (v) => _then(v as _ProductDataModel));

  @override
  _ProductDataModel get _value => super._value as _ProductDataModel;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_ProductDataModel(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductDataModel implements _ProductDataModel {
  _$_ProductDataModel({this.name, this.id});

  factory _$_ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDataModelFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'ProductDataModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDataModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ProductDataModelCopyWith<_ProductDataModel> get copyWith =>
      __$ProductDataModelCopyWithImpl<_ProductDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDataModelToJson(this);
  }
}

abstract class _ProductDataModel implements ProductDataModel {
  factory _ProductDataModel({String name, String id}) = _$_ProductDataModel;

  factory _ProductDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDataModel.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$ProductDataModelCopyWith<_ProductDataModel> get copyWith;
}

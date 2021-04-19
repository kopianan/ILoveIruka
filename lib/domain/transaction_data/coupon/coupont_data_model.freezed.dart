// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'coupont_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CoupontDataModel _$CoupontDataModelFromJson(Map<String, dynamic> json) {
  return _CoupontDataModel.fromJson(json);
}

/// @nodoc
class _$CoupontDataModelTearOff {
  const _$CoupontDataModelTearOff();

// ignore: unused_element
  _CoupontDataModel call(
      {double amount,
      int purchasedTimes,
      double value,
      String type,
      String id}) {
    return _CoupontDataModel(
      amount: amount,
      purchasedTimes: purchasedTimes,
      value: value,
      type: type,
      id: id,
    );
  }

// ignore: unused_element
  CoupontDataModel fromJson(Map<String, Object> json) {
    return CoupontDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CoupontDataModel = _$CoupontDataModelTearOff();

/// @nodoc
mixin _$CoupontDataModel {
  double get amount;
  int get purchasedTimes;
  double get value;
  String get type;
  String get id;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CoupontDataModelCopyWith<CoupontDataModel> get copyWith;
}

/// @nodoc
abstract class $CoupontDataModelCopyWith<$Res> {
  factory $CoupontDataModelCopyWith(
          CoupontDataModel value, $Res Function(CoupontDataModel) then) =
      _$CoupontDataModelCopyWithImpl<$Res>;
  $Res call(
      {double amount,
      int purchasedTimes,
      double value,
      String type,
      String id});
}

/// @nodoc
class _$CoupontDataModelCopyWithImpl<$Res>
    implements $CoupontDataModelCopyWith<$Res> {
  _$CoupontDataModelCopyWithImpl(this._value, this._then);

  final CoupontDataModel _value;
  // ignore: unused_field
  final $Res Function(CoupontDataModel) _then;

  @override
  $Res call({
    Object amount = freezed,
    Object purchasedTimes = freezed,
    Object value = freezed,
    Object type = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as double,
      purchasedTimes: purchasedTimes == freezed
          ? _value.purchasedTimes
          : purchasedTimes as int,
      value: value == freezed ? _value.value : value as double,
      type: type == freezed ? _value.type : type as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$CoupontDataModelCopyWith<$Res>
    implements $CoupontDataModelCopyWith<$Res> {
  factory _$CoupontDataModelCopyWith(
          _CoupontDataModel value, $Res Function(_CoupontDataModel) then) =
      __$CoupontDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double amount,
      int purchasedTimes,
      double value,
      String type,
      String id});
}

/// @nodoc
class __$CoupontDataModelCopyWithImpl<$Res>
    extends _$CoupontDataModelCopyWithImpl<$Res>
    implements _$CoupontDataModelCopyWith<$Res> {
  __$CoupontDataModelCopyWithImpl(
      _CoupontDataModel _value, $Res Function(_CoupontDataModel) _then)
      : super(_value, (v) => _then(v as _CoupontDataModel));

  @override
  _CoupontDataModel get _value => super._value as _CoupontDataModel;

  @override
  $Res call({
    Object amount = freezed,
    Object purchasedTimes = freezed,
    Object value = freezed,
    Object type = freezed,
    Object id = freezed,
  }) {
    return _then(_CoupontDataModel(
      amount: amount == freezed ? _value.amount : amount as double,
      purchasedTimes: purchasedTimes == freezed
          ? _value.purchasedTimes
          : purchasedTimes as int,
      value: value == freezed ? _value.value : value as double,
      type: type == freezed ? _value.type : type as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CoupontDataModel implements _CoupontDataModel {
  _$_CoupontDataModel(
      {this.amount, this.purchasedTimes, this.value, this.type, this.id});

  factory _$_CoupontDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CoupontDataModelFromJson(json);

  @override
  final double amount;
  @override
  final int purchasedTimes;
  @override
  final double value;
  @override
  final String type;
  @override
  final String id;

  @override
  String toString() {
    return 'CoupontDataModel(amount: $amount, purchasedTimes: $purchasedTimes, value: $value, type: $type, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoupontDataModel &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.purchasedTimes, purchasedTimes) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedTimes, purchasedTimes)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(purchasedTimes) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$CoupontDataModelCopyWith<_CoupontDataModel> get copyWith =>
      __$CoupontDataModelCopyWithImpl<_CoupontDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoupontDataModelToJson(this);
  }
}

abstract class _CoupontDataModel implements CoupontDataModel {
  factory _CoupontDataModel(
      {double amount,
      int purchasedTimes,
      double value,
      String type,
      String id}) = _$_CoupontDataModel;

  factory _CoupontDataModel.fromJson(Map<String, dynamic> json) =
      _$_CoupontDataModel.fromJson;

  @override
  double get amount;
  @override
  int get purchasedTimes;
  @override
  double get value;
  @override
  String get type;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$CoupontDataModelCopyWith<_CoupontDataModel> get copyWith;
}

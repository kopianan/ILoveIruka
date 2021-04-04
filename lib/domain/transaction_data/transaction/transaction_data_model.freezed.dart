// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionDataModel _$TransactionDataModelFromJson(Map<String, dynamic> json) {
  return _TransactionDataModel.fromJson(json);
}

/// @nodoc
class _$TransactionDataModelTearOff {
  const _$TransactionDataModelTearOff();

// ignore: unused_element
  _TransactionDataModel call(
      {String id,
      String transactionNumber,
      int total,
      String formattedTotal,
      @JsonKey(nullable: true, includeIfNull: true, defaultValue: "val")
          String coupon,
      String remark,
      String createdBy,
      List<TransactionMenuDetailDataModel> details}) {
    return _TransactionDataModel(
      id: id,
      transactionNumber: transactionNumber,
      total: total,
      formattedTotal: formattedTotal,
      coupon: coupon,
      remark: remark,
      createdBy: createdBy,
      details: details,
    );
  }

// ignore: unused_element
  TransactionDataModel fromJson(Map<String, Object> json) {
    return TransactionDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionDataModel = _$TransactionDataModelTearOff();

/// @nodoc
mixin _$TransactionDataModel {
  String get id;
  String get transactionNumber;
  int get total;
  String get formattedTotal;
  @JsonKey(nullable: true, includeIfNull: true, defaultValue: "val")
  String get coupon;
  String get remark;
  String get createdBy;
  List<TransactionMenuDetailDataModel> get details;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TransactionDataModelCopyWith<TransactionDataModel> get copyWith;
}

/// @nodoc
abstract class $TransactionDataModelCopyWith<$Res> {
  factory $TransactionDataModelCopyWith(TransactionDataModel value,
          $Res Function(TransactionDataModel) then) =
      _$TransactionDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String transactionNumber,
      int total,
      String formattedTotal,
      @JsonKey(nullable: true, includeIfNull: true, defaultValue: "val")
          String coupon,
      String remark,
      String createdBy,
      List<TransactionMenuDetailDataModel> details});
}

/// @nodoc
class _$TransactionDataModelCopyWithImpl<$Res>
    implements $TransactionDataModelCopyWith<$Res> {
  _$TransactionDataModelCopyWithImpl(this._value, this._then);

  final TransactionDataModel _value;
  // ignore: unused_field
  final $Res Function(TransactionDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object transactionNumber = freezed,
    Object total = freezed,
    Object formattedTotal = freezed,
    Object coupon = freezed,
    Object remark = freezed,
    Object createdBy = freezed,
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      transactionNumber: transactionNumber == freezed
          ? _value.transactionNumber
          : transactionNumber as String,
      total: total == freezed ? _value.total : total as int,
      formattedTotal: formattedTotal == freezed
          ? _value.formattedTotal
          : formattedTotal as String,
      coupon: coupon == freezed ? _value.coupon : coupon as String,
      remark: remark == freezed ? _value.remark : remark as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      details: details == freezed
          ? _value.details
          : details as List<TransactionMenuDetailDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDataModelCopyWith<$Res>
    implements $TransactionDataModelCopyWith<$Res> {
  factory _$TransactionDataModelCopyWith(_TransactionDataModel value,
          $Res Function(_TransactionDataModel) then) =
      __$TransactionDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String transactionNumber,
      int total,
      String formattedTotal,
      @JsonKey(nullable: true, includeIfNull: true, defaultValue: "val")
          String coupon,
      String remark,
      String createdBy,
      List<TransactionMenuDetailDataModel> details});
}

/// @nodoc
class __$TransactionDataModelCopyWithImpl<$Res>
    extends _$TransactionDataModelCopyWithImpl<$Res>
    implements _$TransactionDataModelCopyWith<$Res> {
  __$TransactionDataModelCopyWithImpl(
      _TransactionDataModel _value, $Res Function(_TransactionDataModel) _then)
      : super(_value, (v) => _then(v as _TransactionDataModel));

  @override
  _TransactionDataModel get _value => super._value as _TransactionDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object transactionNumber = freezed,
    Object total = freezed,
    Object formattedTotal = freezed,
    Object coupon = freezed,
    Object remark = freezed,
    Object createdBy = freezed,
    Object details = freezed,
  }) {
    return _then(_TransactionDataModel(
      id: id == freezed ? _value.id : id as String,
      transactionNumber: transactionNumber == freezed
          ? _value.transactionNumber
          : transactionNumber as String,
      total: total == freezed ? _value.total : total as int,
      formattedTotal: formattedTotal == freezed
          ? _value.formattedTotal
          : formattedTotal as String,
      coupon: coupon == freezed ? _value.coupon : coupon as String,
      remark: remark == freezed ? _value.remark : remark as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      details: details == freezed
          ? _value.details
          : details as List<TransactionMenuDetailDataModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransactionDataModel implements _TransactionDataModel {
  _$_TransactionDataModel(
      {this.id,
      this.transactionNumber,
      this.total,
      this.formattedTotal,
      @JsonKey(nullable: true, includeIfNull: true, defaultValue: "val")
          this.coupon,
      this.remark,
      this.createdBy,
      this.details});

  factory _$_TransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionDataModelFromJson(json);

  @override
  final String id;
  @override
  final String transactionNumber;
  @override
  final int total;
  @override
  final String formattedTotal;
  @override
  @JsonKey(nullable: true, includeIfNull: true, defaultValue: "val")
  final String coupon;
  @override
  final String remark;
  @override
  final String createdBy;
  @override
  final List<TransactionMenuDetailDataModel> details;

  @override
  String toString() {
    return 'TransactionDataModel(id: $id, transactionNumber: $transactionNumber, total: $total, formattedTotal: $formattedTotal, coupon: $coupon, remark: $remark, createdBy: $createdBy, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.transactionNumber, transactionNumber) ||
                const DeepCollectionEquality()
                    .equals(other.transactionNumber, transactionNumber)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.formattedTotal, formattedTotal) ||
                const DeepCollectionEquality()
                    .equals(other.formattedTotal, formattedTotal)) &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(transactionNumber) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(formattedTotal) ^
      const DeepCollectionEquality().hash(coupon) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$TransactionDataModelCopyWith<_TransactionDataModel> get copyWith =>
      __$TransactionDataModelCopyWithImpl<_TransactionDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionDataModelToJson(this);
  }
}

abstract class _TransactionDataModel implements TransactionDataModel {
  factory _TransactionDataModel(
      {String id,
      String transactionNumber,
      int total,
      String formattedTotal,
      @JsonKey(nullable: true, includeIfNull: true, defaultValue: "val")
          String coupon,
      String remark,
      String createdBy,
      List<TransactionMenuDetailDataModel> details}) = _$_TransactionDataModel;

  factory _TransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionDataModel.fromJson;

  @override
  String get id;
  @override
  String get transactionNumber;
  @override
  int get total;
  @override
  String get formattedTotal;
  @override
  @JsonKey(nullable: true, includeIfNull: true, defaultValue: "val")
  String get coupon;
  @override
  String get remark;
  @override
  String get createdBy;
  @override
  List<TransactionMenuDetailDataModel> get details;
  @override
  @JsonKey(ignore: true)
  _$TransactionDataModelCopyWith<_TransactionDataModel> get copyWith;
}

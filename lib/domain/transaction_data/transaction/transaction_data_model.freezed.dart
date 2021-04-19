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
      double total,
      String formattedTotal,
      String formattedTotalInSale,
      double totalInSale,
      @JsonKey(nullable: true, includeIfNull: true) CoupontDataModel coupon,
      String remark,
      String createdBy,
      String createdAt,
      List<TransactionMenuDetailDataModel> details}) {
    return _TransactionDataModel(
      id: id,
      transactionNumber: transactionNumber,
      total: total,
      formattedTotal: formattedTotal,
      formattedTotalInSale: formattedTotalInSale,
      totalInSale: totalInSale,
      coupon: coupon,
      remark: remark,
      createdBy: createdBy,
      createdAt: createdAt,
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
  double get total;
  String get formattedTotal;
  String get formattedTotalInSale;
  double get totalInSale;
  @JsonKey(nullable: true, includeIfNull: true)
  CoupontDataModel get coupon;
  String get remark;
  String get createdBy;
  String get createdAt;
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
      double total,
      String formattedTotal,
      String formattedTotalInSale,
      double totalInSale,
      @JsonKey(nullable: true, includeIfNull: true) CoupontDataModel coupon,
      String remark,
      String createdBy,
      String createdAt,
      List<TransactionMenuDetailDataModel> details});

  $CoupontDataModelCopyWith<$Res> get coupon;
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
    Object formattedTotalInSale = freezed,
    Object totalInSale = freezed,
    Object coupon = freezed,
    Object remark = freezed,
    Object createdBy = freezed,
    Object createdAt = freezed,
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      transactionNumber: transactionNumber == freezed
          ? _value.transactionNumber
          : transactionNumber as String,
      total: total == freezed ? _value.total : total as double,
      formattedTotal: formattedTotal == freezed
          ? _value.formattedTotal
          : formattedTotal as String,
      formattedTotalInSale: formattedTotalInSale == freezed
          ? _value.formattedTotalInSale
          : formattedTotalInSale as String,
      totalInSale:
          totalInSale == freezed ? _value.totalInSale : totalInSale as double,
      coupon: coupon == freezed ? _value.coupon : coupon as CoupontDataModel,
      remark: remark == freezed ? _value.remark : remark as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      details: details == freezed
          ? _value.details
          : details as List<TransactionMenuDetailDataModel>,
    ));
  }

  @override
  $CoupontDataModelCopyWith<$Res> get coupon {
    if (_value.coupon == null) {
      return null;
    }
    return $CoupontDataModelCopyWith<$Res>(_value.coupon, (value) {
      return _then(_value.copyWith(coupon: value));
    });
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
      double total,
      String formattedTotal,
      String formattedTotalInSale,
      double totalInSale,
      @JsonKey(nullable: true, includeIfNull: true) CoupontDataModel coupon,
      String remark,
      String createdBy,
      String createdAt,
      List<TransactionMenuDetailDataModel> details});

  @override
  $CoupontDataModelCopyWith<$Res> get coupon;
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
    Object formattedTotalInSale = freezed,
    Object totalInSale = freezed,
    Object coupon = freezed,
    Object remark = freezed,
    Object createdBy = freezed,
    Object createdAt = freezed,
    Object details = freezed,
  }) {
    return _then(_TransactionDataModel(
      id: id == freezed ? _value.id : id as String,
      transactionNumber: transactionNumber == freezed
          ? _value.transactionNumber
          : transactionNumber as String,
      total: total == freezed ? _value.total : total as double,
      formattedTotal: formattedTotal == freezed
          ? _value.formattedTotal
          : formattedTotal as String,
      formattedTotalInSale: formattedTotalInSale == freezed
          ? _value.formattedTotalInSale
          : formattedTotalInSale as String,
      totalInSale:
          totalInSale == freezed ? _value.totalInSale : totalInSale as double,
      coupon: coupon == freezed ? _value.coupon : coupon as CoupontDataModel,
      remark: remark == freezed ? _value.remark : remark as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
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
      this.formattedTotalInSale,
      this.totalInSale,
      @JsonKey(nullable: true, includeIfNull: true) this.coupon,
      this.remark,
      this.createdBy,
      this.createdAt,
      this.details});

  factory _$_TransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionDataModelFromJson(json);

  @override
  final String id;
  @override
  final String transactionNumber;
  @override
  final double total;
  @override
  final String formattedTotal;
  @override
  final String formattedTotalInSale;
  @override
  final double totalInSale;
  @override
  @JsonKey(nullable: true, includeIfNull: true)
  final CoupontDataModel coupon;
  @override
  final String remark;
  @override
  final String createdBy;
  @override
  final String createdAt;
  @override
  final List<TransactionMenuDetailDataModel> details;

  @override
  String toString() {
    return 'TransactionDataModel(id: $id, transactionNumber: $transactionNumber, total: $total, formattedTotal: $formattedTotal, formattedTotalInSale: $formattedTotalInSale, totalInSale: $totalInSale, coupon: $coupon, remark: $remark, createdBy: $createdBy, createdAt: $createdAt, details: $details)';
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
            (identical(other.formattedTotalInSale, formattedTotalInSale) ||
                const DeepCollectionEquality().equals(
                    other.formattedTotalInSale, formattedTotalInSale)) &&
            (identical(other.totalInSale, totalInSale) ||
                const DeepCollectionEquality()
                    .equals(other.totalInSale, totalInSale)) &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
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
      const DeepCollectionEquality().hash(formattedTotalInSale) ^
      const DeepCollectionEquality().hash(totalInSale) ^
      const DeepCollectionEquality().hash(coupon) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdAt) ^
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
      double total,
      String formattedTotal,
      String formattedTotalInSale,
      double totalInSale,
      @JsonKey(nullable: true, includeIfNull: true) CoupontDataModel coupon,
      String remark,
      String createdBy,
      String createdAt,
      List<TransactionMenuDetailDataModel> details}) = _$_TransactionDataModel;

  factory _TransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionDataModel.fromJson;

  @override
  String get id;
  @override
  String get transactionNumber;
  @override
  double get total;
  @override
  String get formattedTotal;
  @override
  String get formattedTotalInSale;
  @override
  double get totalInSale;
  @override
  @JsonKey(nullable: true, includeIfNull: true)
  CoupontDataModel get coupon;
  @override
  String get remark;
  @override
  String get createdBy;
  @override
  String get createdAt;
  @override
  List<TransactionMenuDetailDataModel> get details;
  @override
  @JsonKey(ignore: true)
  _$TransactionDataModelCopyWith<_TransactionDataModel> get copyWith;
}

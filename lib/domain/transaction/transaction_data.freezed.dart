// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return TransData.fromJson(json);
}

class _$TransactionDataTearOff {
  const _$TransactionDataTearOff();

  TransData transData(
      {@JsonKey(name: 'CustomerId') String customerId,
      @JsonKey(name: 'CouponId') String couponId,
      @JsonKey(name: 'CouponValue') String couponValue,
      @JsonKey(name: 'SubTotal') double subTotal,
      @JsonKey(name: 'Total') double total,
      @JsonKey(name: 'Notes') String notes,
      @JsonKey(name: 'EarnedPoint') int earnedPoint,
      @JsonKey(name: 'CustomerName') String customerName,
      @JsonKey(name: 'TransactionType') String transactionType,
      @JsonKey(name: 'TransactionTypeOptions') String transactionTypeOptions,
      @JsonKey(name: 'CreatedBy') String createdBy,
      @JsonKey(name: 'CreatedDate') String createdDate,
      @JsonKey(name: 'ModifiedBy') String modifiedBy,
      @JsonKey(name: 'ModifiedDate') String modifiedDate}) {
    return TransData(
      customerId: customerId,
      couponId: couponId,
      couponValue: couponValue,
      subTotal: subTotal,
      total: total,
      notes: notes,
      earnedPoint: earnedPoint,
      customerName: customerName,
      transactionType: transactionType,
      transactionTypeOptions: transactionTypeOptions,
      createdBy: createdBy,
      createdDate: createdDate,
      modifiedBy: modifiedBy,
      modifiedDate: modifiedDate,
    );
  }
}

// ignore: unused_element
const $TransactionData = _$TransactionDataTearOff();

mixin _$TransactionData {
  @JsonKey(name: 'CustomerId')
  String get customerId;
  @JsonKey(name: 'CouponId')
  String get couponId;
  @JsonKey(name: 'CouponValue')
  String get couponValue;
  @JsonKey(name: 'SubTotal')
  double get subTotal;
  @JsonKey(name: 'Total')
  double get total;
  @JsonKey(name: 'Notes')
  String get notes;
  @JsonKey(name: 'EarnedPoint')
  int get earnedPoint;
  @JsonKey(name: 'CustomerName')
  String get customerName;
  @JsonKey(name: 'TransactionType')
  String get transactionType;
  @JsonKey(name: 'TransactionTypeOptions')
  String get transactionTypeOptions;
  @JsonKey(name: 'CreatedBy')
  String get createdBy;
  @JsonKey(name: 'CreatedDate')
  String get createdDate;
  @JsonKey(name: 'ModifiedBy')
  String get modifiedBy;
  @JsonKey(name: 'ModifiedDate')
  String get modifiedDate;

  Map<String, dynamic> toJson();
  $TransactionDataCopyWith<TransactionData> get copyWith;
}

abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CustomerId') String customerId,
      @JsonKey(name: 'CouponId') String couponId,
      @JsonKey(name: 'CouponValue') String couponValue,
      @JsonKey(name: 'SubTotal') double subTotal,
      @JsonKey(name: 'Total') double total,
      @JsonKey(name: 'Notes') String notes,
      @JsonKey(name: 'EarnedPoint') int earnedPoint,
      @JsonKey(name: 'CustomerName') String customerName,
      @JsonKey(name: 'TransactionType') String transactionType,
      @JsonKey(name: 'TransactionTypeOptions') String transactionTypeOptions,
      @JsonKey(name: 'CreatedBy') String createdBy,
      @JsonKey(name: 'CreatedDate') String createdDate,
      @JsonKey(name: 'ModifiedBy') String modifiedBy,
      @JsonKey(name: 'ModifiedDate') String modifiedDate});
}

class _$TransactionDataCopyWithImpl<$Res>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  final TransactionData _value;
  // ignore: unused_field
  final $Res Function(TransactionData) _then;

  @override
  $Res call({
    Object customerId = freezed,
    Object couponId = freezed,
    Object couponValue = freezed,
    Object subTotal = freezed,
    Object total = freezed,
    Object notes = freezed,
    Object earnedPoint = freezed,
    Object customerName = freezed,
    Object transactionType = freezed,
    Object transactionTypeOptions = freezed,
    Object createdBy = freezed,
    Object createdDate = freezed,
    Object modifiedBy = freezed,
    Object modifiedDate = freezed,
  }) {
    return _then(_value.copyWith(
      customerId:
          customerId == freezed ? _value.customerId : customerId as String,
      couponId: couponId == freezed ? _value.couponId : couponId as String,
      couponValue:
          couponValue == freezed ? _value.couponValue : couponValue as String,
      subTotal: subTotal == freezed ? _value.subTotal : subTotal as double,
      total: total == freezed ? _value.total : total as double,
      notes: notes == freezed ? _value.notes : notes as String,
      earnedPoint:
          earnedPoint == freezed ? _value.earnedPoint : earnedPoint as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType as String,
      transactionTypeOptions: transactionTypeOptions == freezed
          ? _value.transactionTypeOptions
          : transactionTypeOptions as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as String,
      modifiedBy:
          modifiedBy == freezed ? _value.modifiedBy : modifiedBy as String,
      modifiedDate: modifiedDate == freezed
          ? _value.modifiedDate
          : modifiedDate as String,
    ));
  }
}

abstract class $TransDataCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory $TransDataCopyWith(TransData value, $Res Function(TransData) then) =
      _$TransDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CustomerId') String customerId,
      @JsonKey(name: 'CouponId') String couponId,
      @JsonKey(name: 'CouponValue') String couponValue,
      @JsonKey(name: 'SubTotal') double subTotal,
      @JsonKey(name: 'Total') double total,
      @JsonKey(name: 'Notes') String notes,
      @JsonKey(name: 'EarnedPoint') int earnedPoint,
      @JsonKey(name: 'CustomerName') String customerName,
      @JsonKey(name: 'TransactionType') String transactionType,
      @JsonKey(name: 'TransactionTypeOptions') String transactionTypeOptions,
      @JsonKey(name: 'CreatedBy') String createdBy,
      @JsonKey(name: 'CreatedDate') String createdDate,
      @JsonKey(name: 'ModifiedBy') String modifiedBy,
      @JsonKey(name: 'ModifiedDate') String modifiedDate});
}

class _$TransDataCopyWithImpl<$Res> extends _$TransactionDataCopyWithImpl<$Res>
    implements $TransDataCopyWith<$Res> {
  _$TransDataCopyWithImpl(TransData _value, $Res Function(TransData) _then)
      : super(_value, (v) => _then(v as TransData));

  @override
  TransData get _value => super._value as TransData;

  @override
  $Res call({
    Object customerId = freezed,
    Object couponId = freezed,
    Object couponValue = freezed,
    Object subTotal = freezed,
    Object total = freezed,
    Object notes = freezed,
    Object earnedPoint = freezed,
    Object customerName = freezed,
    Object transactionType = freezed,
    Object transactionTypeOptions = freezed,
    Object createdBy = freezed,
    Object createdDate = freezed,
    Object modifiedBy = freezed,
    Object modifiedDate = freezed,
  }) {
    return _then(TransData(
      customerId:
          customerId == freezed ? _value.customerId : customerId as String,
      couponId: couponId == freezed ? _value.couponId : couponId as String,
      couponValue:
          couponValue == freezed ? _value.couponValue : couponValue as String,
      subTotal: subTotal == freezed ? _value.subTotal : subTotal as double,
      total: total == freezed ? _value.total : total as double,
      notes: notes == freezed ? _value.notes : notes as String,
      earnedPoint:
          earnedPoint == freezed ? _value.earnedPoint : earnedPoint as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType as String,
      transactionTypeOptions: transactionTypeOptions == freezed
          ? _value.transactionTypeOptions
          : transactionTypeOptions as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as String,
      modifiedBy:
          modifiedBy == freezed ? _value.modifiedBy : modifiedBy as String,
      modifiedDate: modifiedDate == freezed
          ? _value.modifiedDate
          : modifiedDate as String,
    ));
  }
}

@JsonSerializable()
class _$TransData implements TransData {
  _$TransData(
      {@JsonKey(name: 'CustomerId') this.customerId,
      @JsonKey(name: 'CouponId') this.couponId,
      @JsonKey(name: 'CouponValue') this.couponValue,
      @JsonKey(name: 'SubTotal') this.subTotal,
      @JsonKey(name: 'Total') this.total,
      @JsonKey(name: 'Notes') this.notes,
      @JsonKey(name: 'EarnedPoint') this.earnedPoint,
      @JsonKey(name: 'CustomerName') this.customerName,
      @JsonKey(name: 'TransactionType') this.transactionType,
      @JsonKey(name: 'TransactionTypeOptions') this.transactionTypeOptions,
      @JsonKey(name: 'CreatedBy') this.createdBy,
      @JsonKey(name: 'CreatedDate') this.createdDate,
      @JsonKey(name: 'ModifiedBy') this.modifiedBy,
      @JsonKey(name: 'ModifiedDate') this.modifiedDate});

  factory _$TransData.fromJson(Map<String, dynamic> json) =>
      _$_$TransDataFromJson(json);

  @override
  @JsonKey(name: 'CustomerId')
  final String customerId;
  @override
  @JsonKey(name: 'CouponId')
  final String couponId;
  @override
  @JsonKey(name: 'CouponValue')
  final String couponValue;
  @override
  @JsonKey(name: 'SubTotal')
  final double subTotal;
  @override
  @JsonKey(name: 'Total')
  final double total;
  @override
  @JsonKey(name: 'Notes')
  final String notes;
  @override
  @JsonKey(name: 'EarnedPoint')
  final int earnedPoint;
  @override
  @JsonKey(name: 'CustomerName')
  final String customerName;
  @override
  @JsonKey(name: 'TransactionType')
  final String transactionType;
  @override
  @JsonKey(name: 'TransactionTypeOptions')
  final String transactionTypeOptions;
  @override
  @JsonKey(name: 'CreatedBy')
  final String createdBy;
  @override
  @JsonKey(name: 'CreatedDate')
  final String createdDate;
  @override
  @JsonKey(name: 'ModifiedBy')
  final String modifiedBy;
  @override
  @JsonKey(name: 'ModifiedDate')
  final String modifiedDate;

  @override
  String toString() {
    return 'TransactionData.transData(customerId: $customerId, couponId: $couponId, couponValue: $couponValue, subTotal: $subTotal, total: $total, notes: $notes, earnedPoint: $earnedPoint, customerName: $customerName, transactionType: $transactionType, transactionTypeOptions: $transactionTypeOptions, createdBy: $createdBy, createdDate: $createdDate, modifiedBy: $modifiedBy, modifiedDate: $modifiedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransData &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.couponId, couponId) ||
                const DeepCollectionEquality()
                    .equals(other.couponId, couponId)) &&
            (identical(other.couponValue, couponValue) ||
                const DeepCollectionEquality()
                    .equals(other.couponValue, couponValue)) &&
            (identical(other.subTotal, subTotal) ||
                const DeepCollectionEquality()
                    .equals(other.subTotal, subTotal)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.earnedPoint, earnedPoint) ||
                const DeepCollectionEquality()
                    .equals(other.earnedPoint, earnedPoint)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.transactionType, transactionType) ||
                const DeepCollectionEquality()
                    .equals(other.transactionType, transactionType)) &&
            (identical(other.transactionTypeOptions, transactionTypeOptions) ||
                const DeepCollectionEquality().equals(
                    other.transactionTypeOptions, transactionTypeOptions)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.modifiedBy, modifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedBy, modifiedBy)) &&
            (identical(other.modifiedDate, modifiedDate) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedDate, modifiedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(couponId) ^
      const DeepCollectionEquality().hash(couponValue) ^
      const DeepCollectionEquality().hash(subTotal) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(earnedPoint) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(transactionType) ^
      const DeepCollectionEquality().hash(transactionTypeOptions) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(modifiedBy) ^
      const DeepCollectionEquality().hash(modifiedDate);

  @override
  $TransDataCopyWith<TransData> get copyWith =>
      _$TransDataCopyWithImpl<TransData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$TransDataToJson(this);
  }
}

abstract class TransData implements TransactionData {
  factory TransData(
      {@JsonKey(name: 'CustomerId') String customerId,
      @JsonKey(name: 'CouponId') String couponId,
      @JsonKey(name: 'CouponValue') String couponValue,
      @JsonKey(name: 'SubTotal') double subTotal,
      @JsonKey(name: 'Total') double total,
      @JsonKey(name: 'Notes') String notes,
      @JsonKey(name: 'EarnedPoint') int earnedPoint,
      @JsonKey(name: 'CustomerName') String customerName,
      @JsonKey(name: 'TransactionType') String transactionType,
      @JsonKey(name: 'TransactionTypeOptions') String transactionTypeOptions,
      @JsonKey(name: 'CreatedBy') String createdBy,
      @JsonKey(name: 'CreatedDate') String createdDate,
      @JsonKey(name: 'ModifiedBy') String modifiedBy,
      @JsonKey(name: 'ModifiedDate') String modifiedDate}) = _$TransData;

  factory TransData.fromJson(Map<String, dynamic> json) = _$TransData.fromJson;

  @override
  @JsonKey(name: 'CustomerId')
  String get customerId;
  @override
  @JsonKey(name: 'CouponId')
  String get couponId;
  @override
  @JsonKey(name: 'CouponValue')
  String get couponValue;
  @override
  @JsonKey(name: 'SubTotal')
  double get subTotal;
  @override
  @JsonKey(name: 'Total')
  double get total;
  @override
  @JsonKey(name: 'Notes')
  String get notes;
  @override
  @JsonKey(name: 'EarnedPoint')
  int get earnedPoint;
  @override
  @JsonKey(name: 'CustomerName')
  String get customerName;
  @override
  @JsonKey(name: 'TransactionType')
  String get transactionType;
  @override
  @JsonKey(name: 'TransactionTypeOptions')
  String get transactionTypeOptions;
  @override
  @JsonKey(name: 'CreatedBy')
  String get createdBy;
  @override
  @JsonKey(name: 'CreatedDate')
  String get createdDate;
  @override
  @JsonKey(name: 'ModifiedBy')
  String get modifiedBy;
  @override
  @JsonKey(name: 'ModifiedDate')
  String get modifiedDate;
  @override
  $TransDataCopyWith<TransData> get copyWith;
}

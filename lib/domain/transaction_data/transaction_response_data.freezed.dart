// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionResponseData _$TransactionResponseDataFromJson(
    Map<String, dynamic> json) {
  return _TransactionResponseData.fromJson(json);
}

/// @nodoc
class _$TransactionResponseDataTearOff {
  const _$TransactionResponseDataTearOff();

// ignore: unused_element
  _TransactionResponseData call(List<TransactionDataModel> items) {
    return _TransactionResponseData(
      items,
    );
  }

// ignore: unused_element
  TransactionResponseData fromJson(Map<String, Object> json) {
    return TransactionResponseData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionResponseData = _$TransactionResponseDataTearOff();

/// @nodoc
mixin _$TransactionResponseData {
  List<TransactionDataModel> get items;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TransactionResponseDataCopyWith<TransactionResponseData> get copyWith;
}

/// @nodoc
abstract class $TransactionResponseDataCopyWith<$Res> {
  factory $TransactionResponseDataCopyWith(TransactionResponseData value,
          $Res Function(TransactionResponseData) then) =
      _$TransactionResponseDataCopyWithImpl<$Res>;
  $Res call({List<TransactionDataModel> items});
}

/// @nodoc
class _$TransactionResponseDataCopyWithImpl<$Res>
    implements $TransactionResponseDataCopyWith<$Res> {
  _$TransactionResponseDataCopyWithImpl(this._value, this._then);

  final TransactionResponseData _value;
  // ignore: unused_field
  final $Res Function(TransactionResponseData) _then;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      items:
          items == freezed ? _value.items : items as List<TransactionDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$TransactionResponseDataCopyWith<$Res>
    implements $TransactionResponseDataCopyWith<$Res> {
  factory _$TransactionResponseDataCopyWith(_TransactionResponseData value,
          $Res Function(_TransactionResponseData) then) =
      __$TransactionResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({List<TransactionDataModel> items});
}

/// @nodoc
class __$TransactionResponseDataCopyWithImpl<$Res>
    extends _$TransactionResponseDataCopyWithImpl<$Res>
    implements _$TransactionResponseDataCopyWith<$Res> {
  __$TransactionResponseDataCopyWithImpl(_TransactionResponseData _value,
      $Res Function(_TransactionResponseData) _then)
      : super(_value, (v) => _then(v as _TransactionResponseData));

  @override
  _TransactionResponseData get _value =>
      super._value as _TransactionResponseData;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_TransactionResponseData(
      items == freezed ? _value.items : items as List<TransactionDataModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransactionResponseData implements _TransactionResponseData {
  _$_TransactionResponseData(this.items) : assert(items != null);

  factory _$_TransactionResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionResponseDataFromJson(json);

  @override
  final List<TransactionDataModel> items;

  @override
  String toString() {
    return 'TransactionResponseData(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionResponseData &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$TransactionResponseDataCopyWith<_TransactionResponseData> get copyWith =>
      __$TransactionResponseDataCopyWithImpl<_TransactionResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionResponseDataToJson(this);
  }
}

abstract class _TransactionResponseData implements TransactionResponseData {
  factory _TransactionResponseData(List<TransactionDataModel> items) =
      _$_TransactionResponseData;

  factory _TransactionResponseData.fromJson(Map<String, dynamic> json) =
      _$_TransactionResponseData.fromJson;

  @override
  List<TransactionDataModel> get items;
  @override
  @JsonKey(ignore: true)
  _$TransactionResponseDataCopyWith<_TransactionResponseData> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_r.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionR _$TransactionRFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'getPointAndLastTransResponse':
      return GetPointAndLastTransResponse.fromJson(json);
    case 'getPointAndLastTransRequest':
      return GetPointAndLastTransRequest.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$TransactionRTearOff {
  const _$TransactionRTearOff();

// ignore: unused_element
  GetPointAndLastTransResponse getPointAndLastTransResponse(
      {TransactionData lastTransaction, int customerPoints}) {
    return GetPointAndLastTransResponse(
      lastTransaction: lastTransaction,
      customerPoints: customerPoints,
    );
  }

// ignore: unused_element
  GetPointAndLastTransRequest getPointAndLastTransRequest({String id}) {
    return GetPointAndLastTransRequest(
      id: id,
    );
  }

// ignore: unused_element
  TransactionR fromJson(Map<String, Object> json) {
    return TransactionR.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionR = _$TransactionRTearOff();

/// @nodoc
mixin _$TransactionR {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getPointAndLastTransResponse(
            TransactionData lastTransaction, int customerPoints),
    @required TResult getPointAndLastTransRequest(String id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPointAndLastTransResponse(
        TransactionData lastTransaction, int customerPoints),
    TResult getPointAndLastTransRequest(String id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult getPointAndLastTransResponse(
            GetPointAndLastTransResponse value),
    @required
        TResult getPointAndLastTransRequest(GetPointAndLastTransRequest value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    TResult getPointAndLastTransRequest(GetPointAndLastTransRequest value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $TransactionRCopyWith<$Res> {
  factory $TransactionRCopyWith(
          TransactionR value, $Res Function(TransactionR) then) =
      _$TransactionRCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionRCopyWithImpl<$Res> implements $TransactionRCopyWith<$Res> {
  _$TransactionRCopyWithImpl(this._value, this._then);

  final TransactionR _value;
  // ignore: unused_field
  final $Res Function(TransactionR) _then;
}

/// @nodoc
abstract class $GetPointAndLastTransResponseCopyWith<$Res> {
  factory $GetPointAndLastTransResponseCopyWith(
          GetPointAndLastTransResponse value,
          $Res Function(GetPointAndLastTransResponse) then) =
      _$GetPointAndLastTransResponseCopyWithImpl<$Res>;
  $Res call({TransactionData lastTransaction, int customerPoints});

  $TransactionDataCopyWith<$Res> get lastTransaction;
}

/// @nodoc
class _$GetPointAndLastTransResponseCopyWithImpl<$Res>
    extends _$TransactionRCopyWithImpl<$Res>
    implements $GetPointAndLastTransResponseCopyWith<$Res> {
  _$GetPointAndLastTransResponseCopyWithImpl(
      GetPointAndLastTransResponse _value,
      $Res Function(GetPointAndLastTransResponse) _then)
      : super(_value, (v) => _then(v as GetPointAndLastTransResponse));

  @override
  GetPointAndLastTransResponse get _value =>
      super._value as GetPointAndLastTransResponse;

  @override
  $Res call({
    Object lastTransaction = freezed,
    Object customerPoints = freezed,
  }) {
    return _then(GetPointAndLastTransResponse(
      lastTransaction: lastTransaction == freezed
          ? _value.lastTransaction
          : lastTransaction as TransactionData,
      customerPoints: customerPoints == freezed
          ? _value.customerPoints
          : customerPoints as int,
    ));
  }

  @override
  $TransactionDataCopyWith<$Res> get lastTransaction {
    if (_value.lastTransaction == null) {
      return null;
    }
    return $TransactionDataCopyWith<$Res>(_value.lastTransaction, (value) {
      return _then(_value.copyWith(lastTransaction: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$GetPointAndLastTransResponse implements GetPointAndLastTransResponse {
  _$GetPointAndLastTransResponse({this.lastTransaction, this.customerPoints});

  factory _$GetPointAndLastTransResponse.fromJson(Map<String, dynamic> json) =>
      _$_$GetPointAndLastTransResponseFromJson(json);

  @override
  final TransactionData lastTransaction;
  @override
  final int customerPoints;

  @override
  String toString() {
    return 'TransactionR.getPointAndLastTransResponse(lastTransaction: $lastTransaction, customerPoints: $customerPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPointAndLastTransResponse &&
            (identical(other.lastTransaction, lastTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.lastTransaction, lastTransaction)) &&
            (identical(other.customerPoints, customerPoints) ||
                const DeepCollectionEquality()
                    .equals(other.customerPoints, customerPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastTransaction) ^
      const DeepCollectionEquality().hash(customerPoints);

  @JsonKey(ignore: true)
  @override
  $GetPointAndLastTransResponseCopyWith<GetPointAndLastTransResponse>
      get copyWith => _$GetPointAndLastTransResponseCopyWithImpl<
          GetPointAndLastTransResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getPointAndLastTransResponse(
            TransactionData lastTransaction, int customerPoints),
    @required TResult getPointAndLastTransRequest(String id),
  }) {
    assert(getPointAndLastTransResponse != null);
    assert(getPointAndLastTransRequest != null);
    return getPointAndLastTransResponse(lastTransaction, customerPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPointAndLastTransResponse(
        TransactionData lastTransaction, int customerPoints),
    TResult getPointAndLastTransRequest(String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTransResponse != null) {
      return getPointAndLastTransResponse(lastTransaction, customerPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult getPointAndLastTransResponse(
            GetPointAndLastTransResponse value),
    @required
        TResult getPointAndLastTransRequest(GetPointAndLastTransRequest value),
  }) {
    assert(getPointAndLastTransResponse != null);
    assert(getPointAndLastTransRequest != null);
    return getPointAndLastTransResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    TResult getPointAndLastTransRequest(GetPointAndLastTransRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTransResponse != null) {
      return getPointAndLastTransResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GetPointAndLastTransResponseToJson(this)
      ..['runtimeType'] = 'getPointAndLastTransResponse';
  }
}

abstract class GetPointAndLastTransResponse implements TransactionR {
  factory GetPointAndLastTransResponse(
      {TransactionData lastTransaction,
      int customerPoints}) = _$GetPointAndLastTransResponse;

  factory GetPointAndLastTransResponse.fromJson(Map<String, dynamic> json) =
      _$GetPointAndLastTransResponse.fromJson;

  TransactionData get lastTransaction;
  int get customerPoints;
  @JsonKey(ignore: true)
  $GetPointAndLastTransResponseCopyWith<GetPointAndLastTransResponse>
      get copyWith;
}

/// @nodoc
abstract class $GetPointAndLastTransRequestCopyWith<$Res> {
  factory $GetPointAndLastTransRequestCopyWith(
          GetPointAndLastTransRequest value,
          $Res Function(GetPointAndLastTransRequest) then) =
      _$GetPointAndLastTransRequestCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetPointAndLastTransRequestCopyWithImpl<$Res>
    extends _$TransactionRCopyWithImpl<$Res>
    implements $GetPointAndLastTransRequestCopyWith<$Res> {
  _$GetPointAndLastTransRequestCopyWithImpl(GetPointAndLastTransRequest _value,
      $Res Function(GetPointAndLastTransRequest) _then)
      : super(_value, (v) => _then(v as GetPointAndLastTransRequest));

  @override
  GetPointAndLastTransRequest get _value =>
      super._value as GetPointAndLastTransRequest;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetPointAndLastTransRequest(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$GetPointAndLastTransRequest implements GetPointAndLastTransRequest {
  _$GetPointAndLastTransRequest({this.id});

  factory _$GetPointAndLastTransRequest.fromJson(Map<String, dynamic> json) =>
      _$_$GetPointAndLastTransRequestFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'TransactionR.getPointAndLastTransRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPointAndLastTransRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $GetPointAndLastTransRequestCopyWith<GetPointAndLastTransRequest>
      get copyWith => _$GetPointAndLastTransRequestCopyWithImpl<
          GetPointAndLastTransRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getPointAndLastTransResponse(
            TransactionData lastTransaction, int customerPoints),
    @required TResult getPointAndLastTransRequest(String id),
  }) {
    assert(getPointAndLastTransResponse != null);
    assert(getPointAndLastTransRequest != null);
    return getPointAndLastTransRequest(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPointAndLastTransResponse(
        TransactionData lastTransaction, int customerPoints),
    TResult getPointAndLastTransRequest(String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTransRequest != null) {
      return getPointAndLastTransRequest(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult getPointAndLastTransResponse(
            GetPointAndLastTransResponse value),
    @required
        TResult getPointAndLastTransRequest(GetPointAndLastTransRequest value),
  }) {
    assert(getPointAndLastTransResponse != null);
    assert(getPointAndLastTransRequest != null);
    return getPointAndLastTransRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    TResult getPointAndLastTransRequest(GetPointAndLastTransRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTransRequest != null) {
      return getPointAndLastTransRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GetPointAndLastTransRequestToJson(this)
      ..['runtimeType'] = 'getPointAndLastTransRequest';
  }
}

abstract class GetPointAndLastTransRequest implements TransactionR {
  factory GetPointAndLastTransRequest({String id}) =
      _$GetPointAndLastTransRequest;

  factory GetPointAndLastTransRequest.fromJson(Map<String, dynamic> json) =
      _$GetPointAndLastTransRequest.fromJson;

  String get id;
  @JsonKey(ignore: true)
  $GetPointAndLastTransRequestCopyWith<GetPointAndLastTransRequest>
      get copyWith;
}

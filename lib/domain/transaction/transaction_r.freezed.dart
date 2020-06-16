// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

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

class _$TransactionRTearOff {
  const _$TransactionRTearOff();

  GetPointAndLastTransResponse getPointAndLastTransResponse(
      {TransactionData lastTransaction, int customerPoints}) {
    return GetPointAndLastTransResponse(
      lastTransaction: lastTransaction,
      customerPoints: customerPoints,
    );
  }

  GetPointAndLastTransRequest getPointAndLastTransRequest({String id}) {
    return GetPointAndLastTransRequest(
      id: id,
    );
  }
}

// ignore: unused_element
const $TransactionR = _$TransactionRTearOff();

mixin _$TransactionR {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getPointAndLastTransResponse(
            TransactionData lastTransaction, int customerPoints),
    @required Result getPointAndLastTransRequest(String id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPointAndLastTransResponse(
        TransactionData lastTransaction, int customerPoints),
    Result getPointAndLastTransRequest(String id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    @required
        Result getPointAndLastTransRequest(GetPointAndLastTransRequest value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    Result getPointAndLastTransRequest(GetPointAndLastTransRequest value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $TransactionRCopyWith<$Res> {
  factory $TransactionRCopyWith(
          TransactionR value, $Res Function(TransactionR) then) =
      _$TransactionRCopyWithImpl<$Res>;
}

class _$TransactionRCopyWithImpl<$Res> implements $TransactionRCopyWith<$Res> {
  _$TransactionRCopyWithImpl(this._value, this._then);

  final TransactionR _value;
  // ignore: unused_field
  final $Res Function(TransactionR) _then;
}

abstract class $GetPointAndLastTransResponseCopyWith<$Res> {
  factory $GetPointAndLastTransResponseCopyWith(
          GetPointAndLastTransResponse value,
          $Res Function(GetPointAndLastTransResponse) then) =
      _$GetPointAndLastTransResponseCopyWithImpl<$Res>;
  $Res call({TransactionData lastTransaction, int customerPoints});

  $TransactionDataCopyWith<$Res> get lastTransaction;
}

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

  @override
  $GetPointAndLastTransResponseCopyWith<GetPointAndLastTransResponse>
      get copyWith => _$GetPointAndLastTransResponseCopyWithImpl<
          GetPointAndLastTransResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getPointAndLastTransResponse(
            TransactionData lastTransaction, int customerPoints),
    @required Result getPointAndLastTransRequest(String id),
  }) {
    assert(getPointAndLastTransResponse != null);
    assert(getPointAndLastTransRequest != null);
    return getPointAndLastTransResponse(lastTransaction, customerPoints);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPointAndLastTransResponse(
        TransactionData lastTransaction, int customerPoints),
    Result getPointAndLastTransRequest(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTransResponse != null) {
      return getPointAndLastTransResponse(lastTransaction, customerPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    @required
        Result getPointAndLastTransRequest(GetPointAndLastTransRequest value),
  }) {
    assert(getPointAndLastTransResponse != null);
    assert(getPointAndLastTransRequest != null);
    return getPointAndLastTransResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    Result getPointAndLastTransRequest(GetPointAndLastTransRequest value),
    @required Result orElse(),
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
  $GetPointAndLastTransResponseCopyWith<GetPointAndLastTransResponse>
      get copyWith;
}

abstract class $GetPointAndLastTransRequestCopyWith<$Res> {
  factory $GetPointAndLastTransRequestCopyWith(
          GetPointAndLastTransRequest value,
          $Res Function(GetPointAndLastTransRequest) then) =
      _$GetPointAndLastTransRequestCopyWithImpl<$Res>;
  $Res call({String id});
}

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

  @override
  $GetPointAndLastTransRequestCopyWith<GetPointAndLastTransRequest>
      get copyWith => _$GetPointAndLastTransRequestCopyWithImpl<
          GetPointAndLastTransRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getPointAndLastTransResponse(
            TransactionData lastTransaction, int customerPoints),
    @required Result getPointAndLastTransRequest(String id),
  }) {
    assert(getPointAndLastTransResponse != null);
    assert(getPointAndLastTransRequest != null);
    return getPointAndLastTransRequest(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPointAndLastTransResponse(
        TransactionData lastTransaction, int customerPoints),
    Result getPointAndLastTransRequest(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTransRequest != null) {
      return getPointAndLastTransRequest(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    @required
        Result getPointAndLastTransRequest(GetPointAndLastTransRequest value),
  }) {
    assert(getPointAndLastTransResponse != null);
    assert(getPointAndLastTransRequest != null);
    return getPointAndLastTransRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPointAndLastTransResponse(GetPointAndLastTransResponse value),
    Result getPointAndLastTransRequest(GetPointAndLastTransRequest value),
    @required Result orElse(),
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
  $GetPointAndLastTransRequestCopyWith<GetPointAndLastTransRequest>
      get copyWith;
}

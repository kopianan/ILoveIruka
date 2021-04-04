// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionEventTearOff {
  const _$TransactionEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _GetTransactions getTransactions(String userId) {
    return _GetTransactions(
      userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionEvent = _$TransactionEventTearOff();

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getTransactions(String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getTransactions(String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getTransactions(_GetTransactions value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getTransactions(_GetTransactions value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  final TransactionEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$TransactionEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TransactionEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getTransactions(String userId),
  }) {
    assert(started != null);
    assert(getTransactions != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getTransactions(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getTransactions(_GetTransactions value),
  }) {
    assert(started != null);
    assert(getTransactions != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getTransactions(_GetTransactions value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TransactionEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetTransactionsCopyWith<$Res> {
  factory _$GetTransactionsCopyWith(
          _GetTransactions value, $Res Function(_GetTransactions) then) =
      __$GetTransactionsCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$GetTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$GetTransactionsCopyWith<$Res> {
  __$GetTransactionsCopyWithImpl(
      _GetTransactions _value, $Res Function(_GetTransactions) _then)
      : super(_value, (v) => _then(v as _GetTransactions));

  @override
  _GetTransactions get _value => super._value as _GetTransactions;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_GetTransactions(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_GetTransactions implements _GetTransactions {
  const _$_GetTransactions(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'TransactionEvent.getTransactions(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTransactions &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetTransactionsCopyWith<_GetTransactions> get copyWith =>
      __$GetTransactionsCopyWithImpl<_GetTransactions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getTransactions(String userId),
  }) {
    assert(started != null);
    assert(getTransactions != null);
    return getTransactions(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getTransactions(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTransactions != null) {
      return getTransactions(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getTransactions(_GetTransactions value),
  }) {
    assert(started != null);
    assert(getTransactions != null);
    return getTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getTransactions(_GetTransactions value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTransactions != null) {
      return getTransactions(this);
    }
    return orElse();
  }
}

abstract class _GetTransactions implements TransactionEvent {
  const factory _GetTransactions(String userId) = _$_GetTransactions;

  String get userId;
  @JsonKey(ignore: true)
  _$GetTransactionsCopyWith<_GetTransactions> get copyWith;
}

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Error error(GeneralFailure failure) {
    return _Error(
      failure,
    );
  }

// ignore: unused_element
  _OnGetTransaction onGetTransaction(TransactionResponseData data) {
    return _OnGetTransaction(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionState = _$TransactionStateTearOff();

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetTransaction(TransactionResponseData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetTransaction(TransactionResponseData data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetTransaction(_OnGetTransaction value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetTransaction(_OnGetTransaction value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetTransaction(TransactionResponseData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetTransaction != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetTransaction(TransactionResponseData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetTransaction(_OnGetTransaction value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetTransaction != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetTransaction(_OnGetTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TransactionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetTransaction(TransactionResponseData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetTransaction != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetTransaction(TransactionResponseData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetTransaction(_OnGetTransaction value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetTransaction != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetTransaction(_OnGetTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TransactionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({GeneralFailure failure});

  $GeneralFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed ? _value.failure : failure as GeneralFailure,
    ));
  }

  @override
  $GeneralFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $GeneralFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.failure) : assert(failure != null);

  @override
  final GeneralFailure failure;

  @override
  String toString() {
    return 'TransactionState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetTransaction(TransactionResponseData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetTransaction != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetTransaction(TransactionResponseData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetTransaction(_OnGetTransaction value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetTransaction != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetTransaction(_OnGetTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TransactionState {
  const factory _Error(GeneralFailure failure) = _$_Error;

  GeneralFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnGetTransactionCopyWith<$Res> {
  factory _$OnGetTransactionCopyWith(
          _OnGetTransaction value, $Res Function(_OnGetTransaction) then) =
      __$OnGetTransactionCopyWithImpl<$Res>;
  $Res call({TransactionResponseData data});

  $TransactionResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$OnGetTransactionCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnGetTransactionCopyWith<$Res> {
  __$OnGetTransactionCopyWithImpl(
      _OnGetTransaction _value, $Res Function(_OnGetTransaction) _then)
      : super(_value, (v) => _then(v as _OnGetTransaction));

  @override
  _OnGetTransaction get _value => super._value as _OnGetTransaction;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_OnGetTransaction(
      data == freezed ? _value.data : data as TransactionResponseData,
    ));
  }

  @override
  $TransactionResponseDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $TransactionResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$_OnGetTransaction implements _OnGetTransaction {
  const _$_OnGetTransaction(this.data) : assert(data != null);

  @override
  final TransactionResponseData data;

  @override
  String toString() {
    return 'TransactionState.onGetTransaction(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetTransaction &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetTransactionCopyWith<_OnGetTransaction> get copyWith =>
      __$OnGetTransactionCopyWithImpl<_OnGetTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetTransaction(TransactionResponseData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetTransaction != null);
    return onGetTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetTransaction(TransactionResponseData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetTransaction != null) {
      return onGetTransaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetTransaction(_OnGetTransaction value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetTransaction != null);
    return onGetTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetTransaction(_OnGetTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetTransaction != null) {
      return onGetTransaction(this);
    }
    return orElse();
  }
}

abstract class _OnGetTransaction implements TransactionState {
  const factory _OnGetTransaction(TransactionResponseData data) =
      _$_OnGetTransaction;

  TransactionResponseData get data;
  @JsonKey(ignore: true)
  _$OnGetTransactionCopyWith<_OnGetTransaction> get copyWith;
}

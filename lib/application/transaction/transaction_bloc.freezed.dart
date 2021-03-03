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
  _GetPointAndLastTrans getPointAndLastTrans(
      {@required GetPointAndLastTransRequest userId}) {
    return _GetPointAndLastTrans(
      userId: userId,
    );
  }

// ignore: unused_element
  _GetAllTransaction getAllTransaction({@required String userId}) {
    return _GetAllTransaction(
      userId: userId,
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
    @required TResult getPointAndLastTrans(GetPointAndLastTransRequest userId),
    @required TResult getAllTransaction(String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPointAndLastTrans(GetPointAndLastTransRequest userId),
    TResult getAllTransaction(String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPointAndLastTrans(_GetPointAndLastTrans value),
    @required TResult getAllTransaction(_GetAllTransaction value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPointAndLastTrans(_GetPointAndLastTrans value),
    TResult getAllTransaction(_GetAllTransaction value),
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
abstract class _$GetPointAndLastTransCopyWith<$Res> {
  factory _$GetPointAndLastTransCopyWith(_GetPointAndLastTrans value,
          $Res Function(_GetPointAndLastTrans) then) =
      __$GetPointAndLastTransCopyWithImpl<$Res>;
  $Res call({GetPointAndLastTransRequest userId});
}

/// @nodoc
class __$GetPointAndLastTransCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$GetPointAndLastTransCopyWith<$Res> {
  __$GetPointAndLastTransCopyWithImpl(
      _GetPointAndLastTrans _value, $Res Function(_GetPointAndLastTrans) _then)
      : super(_value, (v) => _then(v as _GetPointAndLastTrans));

  @override
  _GetPointAndLastTrans get _value => super._value as _GetPointAndLastTrans;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_GetPointAndLastTrans(
      userId: userId == freezed
          ? _value.userId
          : userId as GetPointAndLastTransRequest,
    ));
  }
}

/// @nodoc
class _$_GetPointAndLastTrans implements _GetPointAndLastTrans {
  _$_GetPointAndLastTrans({@required this.userId}) : assert(userId != null);

  @override
  final GetPointAndLastTransRequest userId;

  @override
  String toString() {
    return 'TransactionEvent.getPointAndLastTrans(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPointAndLastTrans &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetPointAndLastTransCopyWith<_GetPointAndLastTrans> get copyWith =>
      __$GetPointAndLastTransCopyWithImpl<_GetPointAndLastTrans>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPointAndLastTrans(GetPointAndLastTransRequest userId),
    @required TResult getAllTransaction(String userId),
  }) {
    assert(getPointAndLastTrans != null);
    assert(getAllTransaction != null);
    return getPointAndLastTrans(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPointAndLastTrans(GetPointAndLastTransRequest userId),
    TResult getAllTransaction(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTrans != null) {
      return getPointAndLastTrans(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPointAndLastTrans(_GetPointAndLastTrans value),
    @required TResult getAllTransaction(_GetAllTransaction value),
  }) {
    assert(getPointAndLastTrans != null);
    assert(getAllTransaction != null);
    return getPointAndLastTrans(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPointAndLastTrans(_GetPointAndLastTrans value),
    TResult getAllTransaction(_GetAllTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTrans != null) {
      return getPointAndLastTrans(this);
    }
    return orElse();
  }
}

abstract class _GetPointAndLastTrans implements TransactionEvent {
  factory _GetPointAndLastTrans(
      {@required GetPointAndLastTransRequest userId}) = _$_GetPointAndLastTrans;

  GetPointAndLastTransRequest get userId;
  @JsonKey(ignore: true)
  _$GetPointAndLastTransCopyWith<_GetPointAndLastTrans> get copyWith;
}

/// @nodoc
abstract class _$GetAllTransactionCopyWith<$Res> {
  factory _$GetAllTransactionCopyWith(
          _GetAllTransaction value, $Res Function(_GetAllTransaction) then) =
      __$GetAllTransactionCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$GetAllTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$GetAllTransactionCopyWith<$Res> {
  __$GetAllTransactionCopyWithImpl(
      _GetAllTransaction _value, $Res Function(_GetAllTransaction) _then)
      : super(_value, (v) => _then(v as _GetAllTransaction));

  @override
  _GetAllTransaction get _value => super._value as _GetAllTransaction;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_GetAllTransaction(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_GetAllTransaction implements _GetAllTransaction {
  _$_GetAllTransaction({@required this.userId}) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'TransactionEvent.getAllTransaction(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllTransaction &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetAllTransactionCopyWith<_GetAllTransaction> get copyWith =>
      __$GetAllTransactionCopyWithImpl<_GetAllTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPointAndLastTrans(GetPointAndLastTransRequest userId),
    @required TResult getAllTransaction(String userId),
  }) {
    assert(getPointAndLastTrans != null);
    assert(getAllTransaction != null);
    return getAllTransaction(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPointAndLastTrans(GetPointAndLastTransRequest userId),
    TResult getAllTransaction(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllTransaction != null) {
      return getAllTransaction(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPointAndLastTrans(_GetPointAndLastTrans value),
    @required TResult getAllTransaction(_GetAllTransaction value),
  }) {
    assert(getPointAndLastTrans != null);
    assert(getAllTransaction != null);
    return getAllTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPointAndLastTrans(_GetPointAndLastTrans value),
    TResult getAllTransaction(_GetAllTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllTransaction != null) {
      return getAllTransaction(this);
    }
    return orElse();
  }
}

abstract class _GetAllTransaction implements TransactionEvent {
  factory _GetAllTransaction({@required String userId}) = _$_GetAllTransaction;

  String get userId;
  @JsonKey(ignore: true)
  _$GetAllTransactionCopyWith<_GetAllTransaction> get copyWith;
}

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

// ignore: unused_element
  _OnProgress onProgress() {
    return _OnProgress();
  }

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _OnGetPointOption onGetPointOption(
      Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
          failOrSuccessOption) {
    return _OnGetPointOption(
      failOrSuccessOption,
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
    @required TResult onProgress(),
    @required TResult initial(),
    @required
        TResult onGetPointOption(
            Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
                failOrSuccessOption),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onProgress(),
    TResult initial(),
    TResult onGetPointOption(
        Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
            failOrSuccessOption),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onProgress(_OnProgress value),
    @required TResult initial(_Initial value),
    @required TResult onGetPointOption(_OnGetPointOption value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onProgress(_OnProgress value),
    TResult initial(_Initial value),
    TResult onGetPointOption(_OnGetPointOption value),
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
abstract class _$OnProgressCopyWith<$Res> {
  factory _$OnProgressCopyWith(
          _OnProgress value, $Res Function(_OnProgress) then) =
      __$OnProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnProgressCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnProgressCopyWith<$Res> {
  __$OnProgressCopyWithImpl(
      _OnProgress _value, $Res Function(_OnProgress) _then)
      : super(_value, (v) => _then(v as _OnProgress));

  @override
  _OnProgress get _value => super._value as _OnProgress;
}

/// @nodoc
class _$_OnProgress implements _OnProgress {
  _$_OnProgress();

  @override
  String toString() {
    return 'TransactionState.onProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onProgress(),
    @required TResult initial(),
    @required
        TResult onGetPointOption(
            Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
                failOrSuccessOption),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return onProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onProgress(),
    TResult initial(),
    TResult onGetPointOption(
        Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
            failOrSuccessOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onProgress != null) {
      return onProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onProgress(_OnProgress value),
    @required TResult initial(_Initial value),
    @required TResult onGetPointOption(_OnGetPointOption value),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return onProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onProgress(_OnProgress value),
    TResult initial(_Initial value),
    TResult onGetPointOption(_OnGetPointOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onProgress != null) {
      return onProgress(this);
    }
    return orElse();
  }
}

abstract class _OnProgress implements TransactionState {
  factory _OnProgress() = _$_OnProgress;
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
  _$_Initial();

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
    @required TResult onProgress(),
    @required TResult initial(),
    @required
        TResult onGetPointOption(
            Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
                failOrSuccessOption),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onProgress(),
    TResult initial(),
    TResult onGetPointOption(
        Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
            failOrSuccessOption),
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
    @required TResult onProgress(_OnProgress value),
    @required TResult initial(_Initial value),
    @required TResult onGetPointOption(_OnGetPointOption value),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onProgress(_OnProgress value),
    TResult initial(_Initial value),
    TResult onGetPointOption(_OnGetPointOption value),
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
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OnGetPointOptionCopyWith<$Res> {
  factory _$OnGetPointOptionCopyWith(
          _OnGetPointOption value, $Res Function(_OnGetPointOption) then) =
      __$OnGetPointOptionCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
          failOrSuccessOption});
}

/// @nodoc
class __$OnGetPointOptionCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnGetPointOptionCopyWith<$Res> {
  __$OnGetPointOptionCopyWithImpl(
      _OnGetPointOption _value, $Res Function(_OnGetPointOption) _then)
      : super(_value, (v) => _then(v as _OnGetPointOption));

  @override
  _OnGetPointOption get _value => super._value as _OnGetPointOption;

  @override
  $Res call({
    Object failOrSuccessOption = freezed,
  }) {
    return _then(_OnGetPointOption(
      failOrSuccessOption == freezed
          ? _value.failOrSuccessOption
          : failOrSuccessOption as Option<
              Either<TransactionFailure, GetPointAndLastTransResponse>>,
    ));
  }
}

/// @nodoc
class _$_OnGetPointOption implements _OnGetPointOption {
  _$_OnGetPointOption(this.failOrSuccessOption)
      : assert(failOrSuccessOption != null);

  @override
  final Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
      failOrSuccessOption;

  @override
  String toString() {
    return 'TransactionState.onGetPointOption(failOrSuccessOption: $failOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetPointOption &&
            (identical(other.failOrSuccessOption, failOrSuccessOption) ||
                const DeepCollectionEquality()
                    .equals(other.failOrSuccessOption, failOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$OnGetPointOptionCopyWith<_OnGetPointOption> get copyWith =>
      __$OnGetPointOptionCopyWithImpl<_OnGetPointOption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onProgress(),
    @required TResult initial(),
    @required
        TResult onGetPointOption(
            Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
                failOrSuccessOption),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return onGetPointOption(failOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onProgress(),
    TResult initial(),
    TResult onGetPointOption(
        Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
            failOrSuccessOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetPointOption != null) {
      return onGetPointOption(failOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onProgress(_OnProgress value),
    @required TResult initial(_Initial value),
    @required TResult onGetPointOption(_OnGetPointOption value),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return onGetPointOption(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onProgress(_OnProgress value),
    TResult initial(_Initial value),
    TResult onGetPointOption(_OnGetPointOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetPointOption != null) {
      return onGetPointOption(this);
    }
    return orElse();
  }
}

abstract class _OnGetPointOption implements TransactionState {
  factory _OnGetPointOption(
      Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
          failOrSuccessOption) = _$_OnGetPointOption;

  Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
      get failOrSuccessOption;
  @JsonKey(ignore: true)
  _$OnGetPointOptionCopyWith<_OnGetPointOption> get copyWith;
}

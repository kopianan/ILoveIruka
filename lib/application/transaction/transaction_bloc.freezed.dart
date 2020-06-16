// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TransactionEventTearOff {
  const _$TransactionEventTearOff();

  _GetPointAndLastTrans getPointAndLastTrans(
      {@required GetPointAndLastTransRequest userId}) {
    return _GetPointAndLastTrans(
      userId: userId,
    );
  }

  _GetAllTransaction getAllTransaction({@required String userId}) {
    return _GetAllTransaction(
      userId: userId,
    );
  }
}

// ignore: unused_element
const $TransactionEvent = _$TransactionEventTearOff();

mixin _$TransactionEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPointAndLastTrans(GetPointAndLastTransRequest userId),
    @required Result getAllTransaction(String userId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPointAndLastTrans(GetPointAndLastTransRequest userId),
    Result getAllTransaction(String userId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPointAndLastTrans(_GetPointAndLastTrans value),
    @required Result getAllTransaction(_GetAllTransaction value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPointAndLastTrans(_GetPointAndLastTrans value),
    Result getAllTransaction(_GetAllTransaction value),
    @required Result orElse(),
  });
}

abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res>;
}

class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  final TransactionEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionEvent) _then;
}

abstract class _$GetPointAndLastTransCopyWith<$Res> {
  factory _$GetPointAndLastTransCopyWith(_GetPointAndLastTrans value,
          $Res Function(_GetPointAndLastTrans) then) =
      __$GetPointAndLastTransCopyWithImpl<$Res>;
  $Res call({GetPointAndLastTransRequest userId});
}

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

  @override
  _$GetPointAndLastTransCopyWith<_GetPointAndLastTrans> get copyWith =>
      __$GetPointAndLastTransCopyWithImpl<_GetPointAndLastTrans>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPointAndLastTrans(GetPointAndLastTransRequest userId),
    @required Result getAllTransaction(String userId),
  }) {
    assert(getPointAndLastTrans != null);
    assert(getAllTransaction != null);
    return getPointAndLastTrans(userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPointAndLastTrans(GetPointAndLastTransRequest userId),
    Result getAllTransaction(String userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPointAndLastTrans != null) {
      return getPointAndLastTrans(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPointAndLastTrans(_GetPointAndLastTrans value),
    @required Result getAllTransaction(_GetAllTransaction value),
  }) {
    assert(getPointAndLastTrans != null);
    assert(getAllTransaction != null);
    return getPointAndLastTrans(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPointAndLastTrans(_GetPointAndLastTrans value),
    Result getAllTransaction(_GetAllTransaction value),
    @required Result orElse(),
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
  _$GetPointAndLastTransCopyWith<_GetPointAndLastTrans> get copyWith;
}

abstract class _$GetAllTransactionCopyWith<$Res> {
  factory _$GetAllTransactionCopyWith(
          _GetAllTransaction value, $Res Function(_GetAllTransaction) then) =
      __$GetAllTransactionCopyWithImpl<$Res>;
  $Res call({String userId});
}

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

  @override
  _$GetAllTransactionCopyWith<_GetAllTransaction> get copyWith =>
      __$GetAllTransactionCopyWithImpl<_GetAllTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPointAndLastTrans(GetPointAndLastTransRequest userId),
    @required Result getAllTransaction(String userId),
  }) {
    assert(getPointAndLastTrans != null);
    assert(getAllTransaction != null);
    return getAllTransaction(userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPointAndLastTrans(GetPointAndLastTransRequest userId),
    Result getAllTransaction(String userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllTransaction != null) {
      return getAllTransaction(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPointAndLastTrans(_GetPointAndLastTrans value),
    @required Result getAllTransaction(_GetAllTransaction value),
  }) {
    assert(getPointAndLastTrans != null);
    assert(getAllTransaction != null);
    return getAllTransaction(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPointAndLastTrans(_GetPointAndLastTrans value),
    Result getAllTransaction(_GetAllTransaction value),
    @required Result orElse(),
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
  _$GetAllTransactionCopyWith<_GetAllTransaction> get copyWith;
}

class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

  _OnProgress onProgress() {
    return _OnProgress();
  }

  _Initial initial() {
    return _Initial();
  }

  _OnGetPointOption onGetPointOption(
      Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
          failOrSuccessOption) {
    return _OnGetPointOption(
      failOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $TransactionState = _$TransactionStateTearOff();

mixin _$TransactionState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onProgress(),
    @required Result initial(),
    @required
        Result onGetPointOption(
            Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
                failOrSuccessOption),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onProgress(),
    Result initial(),
    Result onGetPointOption(
        Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
            failOrSuccessOption),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onProgress(_OnProgress value),
    @required Result initial(_Initial value),
    @required Result onGetPointOption(_OnGetPointOption value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onProgress(_OnProgress value),
    Result initial(_Initial value),
    Result onGetPointOption(_OnGetPointOption value),
    @required Result orElse(),
  });
}

abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
}

class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;
}

abstract class _$OnProgressCopyWith<$Res> {
  factory _$OnProgressCopyWith(
          _OnProgress value, $Res Function(_OnProgress) then) =
      __$OnProgressCopyWithImpl<$Res>;
}

class __$OnProgressCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnProgressCopyWith<$Res> {
  __$OnProgressCopyWithImpl(
      _OnProgress _value, $Res Function(_OnProgress) _then)
      : super(_value, (v) => _then(v as _OnProgress));

  @override
  _OnProgress get _value => super._value as _OnProgress;
}

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
  Result when<Result extends Object>({
    @required Result onProgress(),
    @required Result initial(),
    @required
        Result onGetPointOption(
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
  Result maybeWhen<Result extends Object>({
    Result onProgress(),
    Result initial(),
    Result onGetPointOption(
        Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
            failOrSuccessOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onProgress != null) {
      return onProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onProgress(_OnProgress value),
    @required Result initial(_Initial value),
    @required Result onGetPointOption(_OnGetPointOption value),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return onProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onProgress(_OnProgress value),
    Result initial(_Initial value),
    Result onGetPointOption(_OnGetPointOption value),
    @required Result orElse(),
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

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

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
  Result when<Result extends Object>({
    @required Result onProgress(),
    @required Result initial(),
    @required
        Result onGetPointOption(
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
  Result maybeWhen<Result extends Object>({
    Result onProgress(),
    Result initial(),
    Result onGetPointOption(
        Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
            failOrSuccessOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onProgress(_OnProgress value),
    @required Result initial(_Initial value),
    @required Result onGetPointOption(_OnGetPointOption value),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onProgress(_OnProgress value),
    Result initial(_Initial value),
    Result onGetPointOption(_OnGetPointOption value),
    @required Result orElse(),
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

abstract class _$OnGetPointOptionCopyWith<$Res> {
  factory _$OnGetPointOptionCopyWith(
          _OnGetPointOption value, $Res Function(_OnGetPointOption) then) =
      __$OnGetPointOptionCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
          failOrSuccessOption});
}

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

  @override
  _$OnGetPointOptionCopyWith<_OnGetPointOption> get copyWith =>
      __$OnGetPointOptionCopyWithImpl<_OnGetPointOption>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onProgress(),
    @required Result initial(),
    @required
        Result onGetPointOption(
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
  Result maybeWhen<Result extends Object>({
    Result onProgress(),
    Result initial(),
    Result onGetPointOption(
        Option<Either<TransactionFailure, GetPointAndLastTransResponse>>
            failOrSuccessOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onGetPointOption != null) {
      return onGetPointOption(failOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onProgress(_OnProgress value),
    @required Result initial(_Initial value),
    @required Result onGetPointOption(_OnGetPointOption value),
  }) {
    assert(onProgress != null);
    assert(initial != null);
    assert(onGetPointOption != null);
    return onGetPointOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onProgress(_OnProgress value),
    Result initial(_Initial value),
    Result onGetPointOption(_OnGetPointOption value),
    @required Result orElse(),
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
  _$OnGetPointOptionCopyWith<_OnGetPointOption> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'transaction_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TransactionFailureTearOff {
  const _$TransactionFailureTearOff();

  _BadRequest badRequest() {
    return const _BadRequest();
  }

  _ServerError serverError() {
    return const _ServerError();
  }

  _NotFound notFound() {
    return const _NotFound();
  }

  _NoTransaction noTransaction() {
    return const _NoTransaction();
  }
}

// ignore: unused_element
const $TransactionFailure = _$TransactionFailureTearOff();

mixin _$TransactionFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(),
    @required Result serverError(),
    @required Result notFound(),
    @required Result noTransaction(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(),
    Result serverError(),
    Result notFound(),
    Result noTransaction(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result serverError(_ServerError value),
    @required Result notFound(_NotFound value),
    @required Result noTransaction(_NoTransaction value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result noTransaction(_NoTransaction value),
    @required Result orElse(),
  });
}

abstract class $TransactionFailureCopyWith<$Res> {
  factory $TransactionFailureCopyWith(
          TransactionFailure value, $Res Function(TransactionFailure) then) =
      _$TransactionFailureCopyWithImpl<$Res>;
}

class _$TransactionFailureCopyWithImpl<$Res>
    implements $TransactionFailureCopyWith<$Res> {
  _$TransactionFailureCopyWithImpl(this._value, this._then);

  final TransactionFailure _value;
  // ignore: unused_field
  final $Res Function(TransactionFailure) _then;
}

abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
}

class __$BadRequestCopyWithImpl<$Res>
    extends _$TransactionFailureCopyWithImpl<$Res>
    implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(
      _BadRequest _value, $Res Function(_BadRequest) _then)
      : super(_value, (v) => _then(v as _BadRequest));

  @override
  _BadRequest get _value => super._value as _BadRequest;
}

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest();

  @override
  String toString() {
    return 'TransactionFailure.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(),
    @required Result serverError(),
    @required Result notFound(),
    @required Result noTransaction(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(noTransaction != null);
    return badRequest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(),
    Result serverError(),
    Result notFound(),
    Result noTransaction(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result serverError(_ServerError value),
    @required Result notFound(_NotFound value),
    @required Result noTransaction(_NoTransaction value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(noTransaction != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result noTransaction(_NoTransaction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements TransactionFailure {
  const factory _BadRequest() = _$_BadRequest;
}

abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

class __$ServerErrorCopyWithImpl<$Res>
    extends _$TransactionFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'TransactionFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(),
    @required Result serverError(),
    @required Result notFound(),
    @required Result noTransaction(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(noTransaction != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(),
    Result serverError(),
    Result notFound(),
    Result noTransaction(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result serverError(_ServerError value),
    @required Result notFound(_NotFound value),
    @required Result noTransaction(_NoTransaction value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(noTransaction != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result noTransaction(_NoTransaction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements TransactionFailure {
  const factory _ServerError() = _$_ServerError;
}

abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

class __$NotFoundCopyWithImpl<$Res>
    extends _$TransactionFailureCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
}

class _$_NotFound implements _NotFound {
  const _$_NotFound();

  @override
  String toString() {
    return 'TransactionFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(),
    @required Result serverError(),
    @required Result notFound(),
    @required Result noTransaction(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(noTransaction != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(),
    Result serverError(),
    Result notFound(),
    Result noTransaction(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result serverError(_ServerError value),
    @required Result notFound(_NotFound value),
    @required Result noTransaction(_NoTransaction value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(noTransaction != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result noTransaction(_NoTransaction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements TransactionFailure {
  const factory _NotFound() = _$_NotFound;
}

abstract class _$NoTransactionCopyWith<$Res> {
  factory _$NoTransactionCopyWith(
          _NoTransaction value, $Res Function(_NoTransaction) then) =
      __$NoTransactionCopyWithImpl<$Res>;
}

class __$NoTransactionCopyWithImpl<$Res>
    extends _$TransactionFailureCopyWithImpl<$Res>
    implements _$NoTransactionCopyWith<$Res> {
  __$NoTransactionCopyWithImpl(
      _NoTransaction _value, $Res Function(_NoTransaction) _then)
      : super(_value, (v) => _then(v as _NoTransaction));

  @override
  _NoTransaction get _value => super._value as _NoTransaction;
}

class _$_NoTransaction implements _NoTransaction {
  const _$_NoTransaction();

  @override
  String toString() {
    return 'TransactionFailure.noTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(),
    @required Result serverError(),
    @required Result notFound(),
    @required Result noTransaction(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(noTransaction != null);
    return noTransaction();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(),
    Result serverError(),
    Result notFound(),
    Result noTransaction(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noTransaction != null) {
      return noTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result serverError(_ServerError value),
    @required Result notFound(_NotFound value),
    @required Result noTransaction(_NoTransaction value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(noTransaction != null);
    return noTransaction(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result noTransaction(_NoTransaction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noTransaction != null) {
      return noTransaction(this);
    }
    return orElse();
  }
}

abstract class _NoTransaction implements TransactionFailure {
  const factory _NoTransaction() = _$_NoTransaction;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _BadRequest badRequest({String errorMessage}) {
    return _BadRequest(
      errorMessage: errorMessage,
    );
  }

  _ServerError serverError() {
    return const _ServerError();
  }

  _NotFound notFound() {
    return const _NotFound();
  }

  _DefaultError defaultError() {
    return const _DefaultError();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(String errorMessage),
    @required Result serverError(),
    @required Result notFound(),
    @required Result defaultError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String errorMessage),
    Result serverError(),
    Result notFound(),
    Result defaultError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result serverError(_ServerError value),
    @required Result notFound(_NotFound value),
    @required Result defaultError(_DefaultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result defaultError(_DefaultError value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

class __$BadRequestCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(
      _BadRequest _value, $Res Function(_BadRequest) _then)
      : super(_value, (v) => _then(v as _BadRequest));

  @override
  _BadRequest get _value => super._value as _BadRequest;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_BadRequest(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest({this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthFailure.badRequest(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadRequest &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$BadRequestCopyWith<_BadRequest> get copyWith =>
      __$BadRequestCopyWithImpl<_BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(String errorMessage),
    @required Result serverError(),
    @required Result notFound(),
    @required Result defaultError(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return badRequest(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String errorMessage),
    Result serverError(),
    Result notFound(),
    Result defaultError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result serverError(_ServerError value),
    @required Result notFound(_NotFound value),
    @required Result defaultError(_DefaultError value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result defaultError(_DefaultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements AuthFailure {
  const factory _BadRequest({String errorMessage}) = _$_BadRequest;

  String get errorMessage;
  _$BadRequestCopyWith<_BadRequest> get copyWith;
}

abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
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
    return 'AuthFailure.serverError()';
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
    @required Result badRequest(String errorMessage),
    @required Result serverError(),
    @required Result notFound(),
    @required Result defaultError(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String errorMessage),
    Result serverError(),
    Result notFound(),
    Result defaultError(),
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
    @required Result defaultError(_DefaultError value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result defaultError(_DefaultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$_ServerError;
}

abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

class __$NotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
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
    return 'AuthFailure.notFound()';
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
    @required Result badRequest(String errorMessage),
    @required Result serverError(),
    @required Result notFound(),
    @required Result defaultError(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String errorMessage),
    Result serverError(),
    Result notFound(),
    Result defaultError(),
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
    @required Result defaultError(_DefaultError value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result defaultError(_DefaultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements AuthFailure {
  const factory _NotFound() = _$_NotFound;
}

abstract class _$DefaultErrorCopyWith<$Res> {
  factory _$DefaultErrorCopyWith(
          _DefaultError value, $Res Function(_DefaultError) then) =
      __$DefaultErrorCopyWithImpl<$Res>;
}

class __$DefaultErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$DefaultErrorCopyWith<$Res> {
  __$DefaultErrorCopyWithImpl(
      _DefaultError _value, $Res Function(_DefaultError) _then)
      : super(_value, (v) => _then(v as _DefaultError));

  @override
  _DefaultError get _value => super._value as _DefaultError;
}

class _$_DefaultError implements _DefaultError {
  const _$_DefaultError();

  @override
  String toString() {
    return 'AuthFailure.defaultError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DefaultError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(String errorMessage),
    @required Result serverError(),
    @required Result notFound(),
    @required Result defaultError(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return defaultError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String errorMessage),
    Result serverError(),
    Result notFound(),
    Result defaultError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (defaultError != null) {
      return defaultError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result serverError(_ServerError value),
    @required Result notFound(_NotFound value),
    @required Result defaultError(_DefaultError value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result serverError(_ServerError value),
    Result notFound(_NotFound value),
    Result defaultError(_DefaultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }
}

abstract class _DefaultError implements AuthFailure {
  const factory _DefaultError() = _$_DefaultError;
}

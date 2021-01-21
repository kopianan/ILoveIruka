// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  _BadRequest badRequest({String errorMessage}) {
    return _BadRequest(
      errorMessage: errorMessage,
    );
  }

// ignore: unused_element
  _ServerError serverError() {
    return const _ServerError();
  }

// ignore: unused_element
  _NotFound notFound() {
    return const _NotFound();
  }

// ignore: unused_element
  _DefaultError defaultError() {
    return const _DefaultError();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult badRequest(String errorMessage),
    @required TResult serverError(),
    @required TResult notFound(),
    @required TResult defaultError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String errorMessage),
    TResult serverError(),
    TResult notFound(),
    TResult defaultError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult serverError(_ServerError value),
    @required TResult notFound(_NotFound value),
    @required TResult defaultError(_DefaultError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult serverError(_ServerError value),
    TResult notFound(_NotFound value),
    TResult defaultError(_DefaultError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  _$BadRequestCopyWith<_BadRequest> get copyWith =>
      __$BadRequestCopyWithImpl<_BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult badRequest(String errorMessage),
    @required TResult serverError(),
    @required TResult notFound(),
    @required TResult defaultError(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return badRequest(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String errorMessage),
    TResult serverError(),
    TResult notFound(),
    TResult defaultError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult serverError(_ServerError value),
    @required TResult notFound(_NotFound value),
    @required TResult defaultError(_DefaultError value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult serverError(_ServerError value),
    TResult notFound(_NotFound value),
    TResult defaultError(_DefaultError value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$BadRequestCopyWith<_BadRequest> get copyWith;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult badRequest(String errorMessage),
    @required TResult serverError(),
    @required TResult notFound(),
    @required TResult defaultError(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String errorMessage),
    TResult serverError(),
    TResult notFound(),
    TResult defaultError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult serverError(_ServerError value),
    @required TResult notFound(_NotFound value),
    @required TResult defaultError(_DefaultError value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult serverError(_ServerError value),
    TResult notFound(_NotFound value),
    TResult defaultError(_DefaultError value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult badRequest(String errorMessage),
    @required TResult serverError(),
    @required TResult notFound(),
    @required TResult defaultError(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String errorMessage),
    TResult serverError(),
    TResult notFound(),
    TResult defaultError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult serverError(_ServerError value),
    @required TResult notFound(_NotFound value),
    @required TResult defaultError(_DefaultError value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult serverError(_ServerError value),
    TResult notFound(_NotFound value),
    TResult defaultError(_DefaultError value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$DefaultErrorCopyWith<$Res> {
  factory _$DefaultErrorCopyWith(
          _DefaultError value, $Res Function(_DefaultError) then) =
      __$DefaultErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$DefaultErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$DefaultErrorCopyWith<$Res> {
  __$DefaultErrorCopyWithImpl(
      _DefaultError _value, $Res Function(_DefaultError) _then)
      : super(_value, (v) => _then(v as _DefaultError));

  @override
  _DefaultError get _value => super._value as _DefaultError;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult badRequest(String errorMessage),
    @required TResult serverError(),
    @required TResult notFound(),
    @required TResult defaultError(),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return defaultError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String errorMessage),
    TResult serverError(),
    TResult notFound(),
    TResult defaultError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultError != null) {
      return defaultError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult serverError(_ServerError value),
    @required TResult notFound(_NotFound value),
    @required TResult defaultError(_DefaultError value),
  }) {
    assert(badRequest != null);
    assert(serverError != null);
    assert(notFound != null);
    assert(defaultError != null);
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult serverError(_ServerError value),
    TResult notFound(_NotFound value),
    TResult defaultError(_DefaultError value),
    @required TResult orElse(),
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

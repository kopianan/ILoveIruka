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
  _ResponseError responseError({String errorMessage}) {
    return _ResponseError(
      errorMessage: errorMessage,
    );
  }

// ignore: unused_element
  _ServerError serverError(String errorMessage) {
    return _ServerError(
      errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  String get errorMessage;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult responseError(String errorMessage),
    @required TResult serverError(String errorMessage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult responseError(String errorMessage),
    TResult serverError(String errorMessage),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult responseError(_ResponseError value),
    @required TResult serverError(_ServerError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult responseError(_ResponseError value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$ResponseErrorCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$ResponseErrorCopyWith(
          _ResponseError value, $Res Function(_ResponseError) then) =
      __$ResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String errorMessage});
}

/// @nodoc
class __$ResponseErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ResponseErrorCopyWith<$Res> {
  __$ResponseErrorCopyWithImpl(
      _ResponseError _value, $Res Function(_ResponseError) _then)
      : super(_value, (v) => _then(v as _ResponseError));

  @override
  _ResponseError get _value => super._value as _ResponseError;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_ResponseError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ResponseError implements _ResponseError {
  const _$_ResponseError({this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthFailure.responseError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ResponseErrorCopyWith<_ResponseError> get copyWith =>
      __$ResponseErrorCopyWithImpl<_ResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult responseError(String errorMessage),
    @required TResult serverError(String errorMessage),
  }) {
    assert(responseError != null);
    assert(serverError != null);
    return responseError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult responseError(String errorMessage),
    TResult serverError(String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (responseError != null) {
      return responseError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult responseError(_ResponseError value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(responseError != null);
    assert(serverError != null);
    return responseError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult responseError(_ResponseError value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (responseError != null) {
      return responseError(this);
    }
    return orElse();
  }
}

abstract class _ResponseError implements AuthFailure {
  const factory _ResponseError({String errorMessage}) = _$_ResponseError;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ResponseErrorCopyWith<_ResponseError> get copyWith;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String errorMessage});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_ServerError(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ServerError implements _ServerError {
  const _$_ServerError(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthFailure.serverError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult responseError(String errorMessage),
    @required TResult serverError(String errorMessage),
  }) {
    assert(responseError != null);
    assert(serverError != null);
    return serverError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult responseError(String errorMessage),
    TResult serverError(String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult responseError(_ResponseError value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(responseError != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult responseError(_ResponseError value),
    TResult serverError(_ServerError value),
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
  const factory _ServerError(String errorMessage) = _$_ServerError;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeedFailureTearOff {
  const _$FeedFailureTearOff();

// ignore: unused_element
  _ResponseError call(String error) {
    return _ResponseError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeedFailure = _$FeedFailureTearOff();

/// @nodoc
mixin _$FeedFailure {
  String get error;

  @JsonKey(ignore: true)
  $FeedFailureCopyWith<FeedFailure> get copyWith;
}

/// @nodoc
abstract class $FeedFailureCopyWith<$Res> {
  factory $FeedFailureCopyWith(
          FeedFailure value, $Res Function(FeedFailure) then) =
      _$FeedFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$FeedFailureCopyWithImpl<$Res> implements $FeedFailureCopyWith<$Res> {
  _$FeedFailureCopyWithImpl(this._value, this._then);

  final FeedFailure _value;
  // ignore: unused_field
  final $Res Function(FeedFailure) _then;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class _$ResponseErrorCopyWith<$Res>
    implements $FeedFailureCopyWith<$Res> {
  factory _$ResponseErrorCopyWith(
          _ResponseError value, $Res Function(_ResponseError) then) =
      __$ResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$ResponseErrorCopyWithImpl<$Res> extends _$FeedFailureCopyWithImpl<$Res>
    implements _$ResponseErrorCopyWith<$Res> {
  __$ResponseErrorCopyWithImpl(
      _ResponseError _value, $Res Function(_ResponseError) _then)
      : super(_value, (v) => _then(v as _ResponseError));

  @override
  _ResponseError get _value => super._value as _ResponseError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_ResponseError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_ResponseError implements _ResponseError {
  const _$_ResponseError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'FeedFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ResponseErrorCopyWith<_ResponseError> get copyWith =>
      __$ResponseErrorCopyWithImpl<_ResponseError>(this, _$identity);
}

abstract class _ResponseError implements FeedFailure {
  const factory _ResponseError(String error) = _$_ResponseError;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$ResponseErrorCopyWith<_ResponseError> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'general_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GeneralFailureTearOff {
  const _$GeneralFailureTearOff();

// ignore: unused_element
  _GeneralFailure call(String error) {
    return _GeneralFailure(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GeneralFailure = _$GeneralFailureTearOff();

/// @nodoc
mixin _$GeneralFailure {
  String get error;

  @JsonKey(ignore: true)
  $GeneralFailureCopyWith<GeneralFailure> get copyWith;
}

/// @nodoc
abstract class $GeneralFailureCopyWith<$Res> {
  factory $GeneralFailureCopyWith(
          GeneralFailure value, $Res Function(GeneralFailure) then) =
      _$GeneralFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$GeneralFailureCopyWithImpl<$Res>
    implements $GeneralFailureCopyWith<$Res> {
  _$GeneralFailureCopyWithImpl(this._value, this._then);

  final GeneralFailure _value;
  // ignore: unused_field
  final $Res Function(GeneralFailure) _then;

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
abstract class _$GeneralFailureCopyWith<$Res>
    implements $GeneralFailureCopyWith<$Res> {
  factory _$GeneralFailureCopyWith(
          _GeneralFailure value, $Res Function(_GeneralFailure) then) =
      __$GeneralFailureCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$GeneralFailureCopyWithImpl<$Res>
    extends _$GeneralFailureCopyWithImpl<$Res>
    implements _$GeneralFailureCopyWith<$Res> {
  __$GeneralFailureCopyWithImpl(
      _GeneralFailure _value, $Res Function(_GeneralFailure) _then)
      : super(_value, (v) => _then(v as _GeneralFailure));

  @override
  _GeneralFailure get _value => super._value as _GeneralFailure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_GeneralFailure(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_GeneralFailure implements _GeneralFailure {
  const _$_GeneralFailure(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'GeneralFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeneralFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$GeneralFailureCopyWith<_GeneralFailure> get copyWith =>
      __$GeneralFailureCopyWithImpl<_GeneralFailure>(this, _$identity);
}

abstract class _GeneralFailure implements GeneralFailure {
  const factory _GeneralFailure(String error) = _$_GeneralFailure;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$GeneralFailureCopyWith<_GeneralFailure> get copyWith;
}

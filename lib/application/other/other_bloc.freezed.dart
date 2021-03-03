// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'other_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OtherEventTearOff {
  const _$OtherEventTearOff();

// ignore: unused_element
  _GetProvinceOnly getProvinceOnly() {
    return _GetProvinceOnly();
  }

// ignore: unused_element
  _GetCityOnly getCityOnly({String provinceId}) {
    return _GetCityOnly(
      provinceId: provinceId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OtherEvent = _$OtherEventTearOff();

/// @nodoc
mixin _$OtherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getProvinceOnly(),
    @required TResult getCityOnly(String provinceId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getProvinceOnly(),
    TResult getCityOnly(String provinceId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getProvinceOnly(_GetProvinceOnly value),
    @required TResult getCityOnly(_GetCityOnly value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getProvinceOnly(_GetProvinceOnly value),
    TResult getCityOnly(_GetCityOnly value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OtherEventCopyWith<$Res> {
  factory $OtherEventCopyWith(
          OtherEvent value, $Res Function(OtherEvent) then) =
      _$OtherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OtherEventCopyWithImpl<$Res> implements $OtherEventCopyWith<$Res> {
  _$OtherEventCopyWithImpl(this._value, this._then);

  final OtherEvent _value;
  // ignore: unused_field
  final $Res Function(OtherEvent) _then;
}

/// @nodoc
abstract class _$GetProvinceOnlyCopyWith<$Res> {
  factory _$GetProvinceOnlyCopyWith(
          _GetProvinceOnly value, $Res Function(_GetProvinceOnly) then) =
      __$GetProvinceOnlyCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProvinceOnlyCopyWithImpl<$Res>
    extends _$OtherEventCopyWithImpl<$Res>
    implements _$GetProvinceOnlyCopyWith<$Res> {
  __$GetProvinceOnlyCopyWithImpl(
      _GetProvinceOnly _value, $Res Function(_GetProvinceOnly) _then)
      : super(_value, (v) => _then(v as _GetProvinceOnly));

  @override
  _GetProvinceOnly get _value => super._value as _GetProvinceOnly;
}

/// @nodoc
class _$_GetProvinceOnly implements _GetProvinceOnly {
  _$_GetProvinceOnly();

  @override
  String toString() {
    return 'OtherEvent.getProvinceOnly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProvinceOnly);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getProvinceOnly(),
    @required TResult getCityOnly(String provinceId),
  }) {
    assert(getProvinceOnly != null);
    assert(getCityOnly != null);
    return getProvinceOnly();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getProvinceOnly(),
    TResult getCityOnly(String provinceId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProvinceOnly != null) {
      return getProvinceOnly();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getProvinceOnly(_GetProvinceOnly value),
    @required TResult getCityOnly(_GetCityOnly value),
  }) {
    assert(getProvinceOnly != null);
    assert(getCityOnly != null);
    return getProvinceOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getProvinceOnly(_GetProvinceOnly value),
    TResult getCityOnly(_GetCityOnly value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProvinceOnly != null) {
      return getProvinceOnly(this);
    }
    return orElse();
  }
}

abstract class _GetProvinceOnly implements OtherEvent {
  factory _GetProvinceOnly() = _$_GetProvinceOnly;
}

/// @nodoc
abstract class _$GetCityOnlyCopyWith<$Res> {
  factory _$GetCityOnlyCopyWith(
          _GetCityOnly value, $Res Function(_GetCityOnly) then) =
      __$GetCityOnlyCopyWithImpl<$Res>;
  $Res call({String provinceId});
}

/// @nodoc
class __$GetCityOnlyCopyWithImpl<$Res> extends _$OtherEventCopyWithImpl<$Res>
    implements _$GetCityOnlyCopyWith<$Res> {
  __$GetCityOnlyCopyWithImpl(
      _GetCityOnly _value, $Res Function(_GetCityOnly) _then)
      : super(_value, (v) => _then(v as _GetCityOnly));

  @override
  _GetCityOnly get _value => super._value as _GetCityOnly;

  @override
  $Res call({
    Object provinceId = freezed,
  }) {
    return _then(_GetCityOnly(
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
    ));
  }
}

/// @nodoc
class _$_GetCityOnly implements _GetCityOnly {
  _$_GetCityOnly({this.provinceId});

  @override
  final String provinceId;

  @override
  String toString() {
    return 'OtherEvent.getCityOnly(provinceId: $provinceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCityOnly &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(provinceId);

  @JsonKey(ignore: true)
  @override
  _$GetCityOnlyCopyWith<_GetCityOnly> get copyWith =>
      __$GetCityOnlyCopyWithImpl<_GetCityOnly>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getProvinceOnly(),
    @required TResult getCityOnly(String provinceId),
  }) {
    assert(getProvinceOnly != null);
    assert(getCityOnly != null);
    return getCityOnly(provinceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getProvinceOnly(),
    TResult getCityOnly(String provinceId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCityOnly != null) {
      return getCityOnly(provinceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getProvinceOnly(_GetProvinceOnly value),
    @required TResult getCityOnly(_GetCityOnly value),
  }) {
    assert(getProvinceOnly != null);
    assert(getCityOnly != null);
    return getCityOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getProvinceOnly(_GetProvinceOnly value),
    TResult getCityOnly(_GetCityOnly value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCityOnly != null) {
      return getCityOnly(this);
    }
    return orElse();
  }
}

abstract class _GetCityOnly implements OtherEvent {
  factory _GetCityOnly({String provinceId}) = _$_GetCityOnly;

  String get provinceId;
  @JsonKey(ignore: true)
  _$GetCityOnlyCopyWith<_GetCityOnly> get copyWith;
}

/// @nodoc
class _$OtherStateTearOff {
  const _$OtherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _GetProvinceOption getProvinceOption(
      {bool isLoading,
      Option<Either<String, List<RajaOngkir>>> getProvinceOption}) {
    return _GetProvinceOption(
      isLoading: isLoading,
      getProvinceOption: getProvinceOption,
    );
  }

// ignore: unused_element
  _GetCityOption getCityOption(
      {bool isLoading,
      Option<Either<String, List<RajaOngkir>>> getCityOption}) {
    return _GetCityOption(
      isLoading: isLoading,
      getCityOption: getCityOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OtherState = _$OtherStateTearOff();

/// @nodoc
mixin _$OtherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult getProvinceOption(bool isLoading,
            Option<Either<String, List<RajaOngkir>>> getProvinceOption),
    @required
        TResult getCityOption(bool isLoading,
            Option<Either<String, List<RajaOngkir>>> getCityOption),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProvinceOption(bool isLoading,
        Option<Either<String, List<RajaOngkir>>> getProvinceOption),
    TResult getCityOption(
        bool isLoading, Option<Either<String, List<RajaOngkir>>> getCityOption),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getProvinceOption(_GetProvinceOption value),
    @required TResult getCityOption(_GetCityOption value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProvinceOption(_GetProvinceOption value),
    TResult getCityOption(_GetCityOption value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OtherStateCopyWith<$Res> {
  factory $OtherStateCopyWith(
          OtherState value, $Res Function(OtherState) then) =
      _$OtherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OtherStateCopyWithImpl<$Res> implements $OtherStateCopyWith<$Res> {
  _$OtherStateCopyWithImpl(this._value, this._then);

  final OtherState _value;
  // ignore: unused_field
  final $Res Function(OtherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OtherStateCopyWithImpl<$Res>
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
    return 'OtherState.initial()';
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
    @required
        TResult getProvinceOption(bool isLoading,
            Option<Either<String, List<RajaOngkir>>> getProvinceOption),
    @required
        TResult getCityOption(bool isLoading,
            Option<Either<String, List<RajaOngkir>>> getCityOption),
  }) {
    assert(initial != null);
    assert(getProvinceOption != null);
    assert(getCityOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProvinceOption(bool isLoading,
        Option<Either<String, List<RajaOngkir>>> getProvinceOption),
    TResult getCityOption(
        bool isLoading, Option<Either<String, List<RajaOngkir>>> getCityOption),
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
    @required TResult getProvinceOption(_GetProvinceOption value),
    @required TResult getCityOption(_GetCityOption value),
  }) {
    assert(initial != null);
    assert(getProvinceOption != null);
    assert(getCityOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProvinceOption(_GetProvinceOption value),
    TResult getCityOption(_GetCityOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OtherState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$GetProvinceOptionCopyWith<$Res> {
  factory _$GetProvinceOptionCopyWith(
          _GetProvinceOption value, $Res Function(_GetProvinceOption) then) =
      __$GetProvinceOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<String, List<RajaOngkir>>> getProvinceOption});
}

/// @nodoc
class __$GetProvinceOptionCopyWithImpl<$Res>
    extends _$OtherStateCopyWithImpl<$Res>
    implements _$GetProvinceOptionCopyWith<$Res> {
  __$GetProvinceOptionCopyWithImpl(
      _GetProvinceOption _value, $Res Function(_GetProvinceOption) _then)
      : super(_value, (v) => _then(v as _GetProvinceOption));

  @override
  _GetProvinceOption get _value => super._value as _GetProvinceOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object getProvinceOption = freezed,
  }) {
    return _then(_GetProvinceOption(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      getProvinceOption: getProvinceOption == freezed
          ? _value.getProvinceOption
          : getProvinceOption as Option<Either<String, List<RajaOngkir>>>,
    ));
  }
}

/// @nodoc
class _$_GetProvinceOption implements _GetProvinceOption {
  _$_GetProvinceOption({this.isLoading, this.getProvinceOption});

  @override
  final bool isLoading;
  @override
  final Option<Either<String, List<RajaOngkir>>> getProvinceOption;

  @override
  String toString() {
    return 'OtherState.getProvinceOption(isLoading: $isLoading, getProvinceOption: $getProvinceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetProvinceOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.getProvinceOption, getProvinceOption) ||
                const DeepCollectionEquality()
                    .equals(other.getProvinceOption, getProvinceOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(getProvinceOption);

  @JsonKey(ignore: true)
  @override
  _$GetProvinceOptionCopyWith<_GetProvinceOption> get copyWith =>
      __$GetProvinceOptionCopyWithImpl<_GetProvinceOption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult getProvinceOption(bool isLoading,
            Option<Either<String, List<RajaOngkir>>> getProvinceOption),
    @required
        TResult getCityOption(bool isLoading,
            Option<Either<String, List<RajaOngkir>>> getCityOption),
  }) {
    assert(initial != null);
    assert(getProvinceOption != null);
    assert(getCityOption != null);
    return getProvinceOption(isLoading, this.getProvinceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProvinceOption(bool isLoading,
        Option<Either<String, List<RajaOngkir>>> getProvinceOption),
    TResult getCityOption(
        bool isLoading, Option<Either<String, List<RajaOngkir>>> getCityOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProvinceOption != null) {
      return getProvinceOption(isLoading, this.getProvinceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getProvinceOption(_GetProvinceOption value),
    @required TResult getCityOption(_GetCityOption value),
  }) {
    assert(initial != null);
    assert(getProvinceOption != null);
    assert(getCityOption != null);
    return getProvinceOption(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProvinceOption(_GetProvinceOption value),
    TResult getCityOption(_GetCityOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProvinceOption != null) {
      return getProvinceOption(this);
    }
    return orElse();
  }
}

abstract class _GetProvinceOption implements OtherState {
  factory _GetProvinceOption(
          {bool isLoading,
          Option<Either<String, List<RajaOngkir>>> getProvinceOption}) =
      _$_GetProvinceOption;

  bool get isLoading;
  Option<Either<String, List<RajaOngkir>>> get getProvinceOption;
  @JsonKey(ignore: true)
  _$GetProvinceOptionCopyWith<_GetProvinceOption> get copyWith;
}

/// @nodoc
abstract class _$GetCityOptionCopyWith<$Res> {
  factory _$GetCityOptionCopyWith(
          _GetCityOption value, $Res Function(_GetCityOption) then) =
      __$GetCityOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, Option<Either<String, List<RajaOngkir>>> getCityOption});
}

/// @nodoc
class __$GetCityOptionCopyWithImpl<$Res> extends _$OtherStateCopyWithImpl<$Res>
    implements _$GetCityOptionCopyWith<$Res> {
  __$GetCityOptionCopyWithImpl(
      _GetCityOption _value, $Res Function(_GetCityOption) _then)
      : super(_value, (v) => _then(v as _GetCityOption));

  @override
  _GetCityOption get _value => super._value as _GetCityOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object getCityOption = freezed,
  }) {
    return _then(_GetCityOption(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      getCityOption: getCityOption == freezed
          ? _value.getCityOption
          : getCityOption as Option<Either<String, List<RajaOngkir>>>,
    ));
  }
}

/// @nodoc
class _$_GetCityOption implements _GetCityOption {
  _$_GetCityOption({this.isLoading, this.getCityOption});

  @override
  final bool isLoading;
  @override
  final Option<Either<String, List<RajaOngkir>>> getCityOption;

  @override
  String toString() {
    return 'OtherState.getCityOption(isLoading: $isLoading, getCityOption: $getCityOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCityOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.getCityOption, getCityOption) ||
                const DeepCollectionEquality()
                    .equals(other.getCityOption, getCityOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(getCityOption);

  @JsonKey(ignore: true)
  @override
  _$GetCityOptionCopyWith<_GetCityOption> get copyWith =>
      __$GetCityOptionCopyWithImpl<_GetCityOption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult getProvinceOption(bool isLoading,
            Option<Either<String, List<RajaOngkir>>> getProvinceOption),
    @required
        TResult getCityOption(bool isLoading,
            Option<Either<String, List<RajaOngkir>>> getCityOption),
  }) {
    assert(initial != null);
    assert(getProvinceOption != null);
    assert(getCityOption != null);
    return getCityOption(isLoading, this.getCityOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProvinceOption(bool isLoading,
        Option<Either<String, List<RajaOngkir>>> getProvinceOption),
    TResult getCityOption(
        bool isLoading, Option<Either<String, List<RajaOngkir>>> getCityOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCityOption != null) {
      return getCityOption(isLoading, this.getCityOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getProvinceOption(_GetProvinceOption value),
    @required TResult getCityOption(_GetCityOption value),
  }) {
    assert(initial != null);
    assert(getProvinceOption != null);
    assert(getCityOption != null);
    return getCityOption(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProvinceOption(_GetProvinceOption value),
    TResult getCityOption(_GetCityOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCityOption != null) {
      return getCityOption(this);
    }
    return orElse();
  }
}

abstract class _GetCityOption implements OtherState {
  factory _GetCityOption(
          {bool isLoading,
          Option<Either<String, List<RajaOngkir>>> getCityOption}) =
      _$_GetCityOption;

  bool get isLoading;
  Option<Either<String, List<RajaOngkir>>> get getCityOption;
  @JsonKey(ignore: true)
  _$GetCityOptionCopyWith<_GetCityOption> get copyWith;
}

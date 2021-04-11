// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'partnership_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PartnershipEventTearOff {
  const _$PartnershipEventTearOff();

// ignore: unused_element
  _GetPartnersList getPartnersList() {
    return const _GetPartnersList();
  }
}

/// @nodoc
// ignore: unused_element
const $PartnershipEvent = _$PartnershipEventTearOff();

/// @nodoc
mixin _$PartnershipEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPartnersList(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPartnersList(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPartnersList(_GetPartnersList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPartnersList(_GetPartnersList value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PartnershipEventCopyWith<$Res> {
  factory $PartnershipEventCopyWith(
          PartnershipEvent value, $Res Function(PartnershipEvent) then) =
      _$PartnershipEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PartnershipEventCopyWithImpl<$Res>
    implements $PartnershipEventCopyWith<$Res> {
  _$PartnershipEventCopyWithImpl(this._value, this._then);

  final PartnershipEvent _value;
  // ignore: unused_field
  final $Res Function(PartnershipEvent) _then;
}

/// @nodoc
abstract class _$GetPartnersListCopyWith<$Res> {
  factory _$GetPartnersListCopyWith(
          _GetPartnersList value, $Res Function(_GetPartnersList) then) =
      __$GetPartnersListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPartnersListCopyWithImpl<$Res>
    extends _$PartnershipEventCopyWithImpl<$Res>
    implements _$GetPartnersListCopyWith<$Res> {
  __$GetPartnersListCopyWithImpl(
      _GetPartnersList _value, $Res Function(_GetPartnersList) _then)
      : super(_value, (v) => _then(v as _GetPartnersList));

  @override
  _GetPartnersList get _value => super._value as _GetPartnersList;
}

/// @nodoc
class _$_GetPartnersList implements _GetPartnersList {
  const _$_GetPartnersList();

  @override
  String toString() {
    return 'PartnershipEvent.getPartnersList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetPartnersList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPartnersList(),
  }) {
    assert(getPartnersList != null);
    return getPartnersList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPartnersList(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPartnersList != null) {
      return getPartnersList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPartnersList(_GetPartnersList value),
  }) {
    assert(getPartnersList != null);
    return getPartnersList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPartnersList(_GetPartnersList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPartnersList != null) {
      return getPartnersList(this);
    }
    return orElse();
  }
}

abstract class _GetPartnersList implements PartnershipEvent {
  const factory _GetPartnersList() = _$_GetPartnersList;
}

/// @nodoc
class _$PartnershipStateTearOff {
  const _$PartnershipStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Error error(String error) {
    return _Error(
      error,
    );
  }

// ignore: unused_element
  _OnGetParternData onGetParternData(
      Either<GeneralFailure, List<PartnershipDataModel>> listData) {
    return _OnGetParternData(
      listData,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PartnershipState = _$PartnershipStateTearOff();

/// @nodoc
mixin _$PartnershipState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult initial(),
    @required TResult error(String error),
    @required
        TResult onGetParternData(
            Either<GeneralFailure, List<PartnershipDataModel>> listData),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult initial(),
    TResult error(String error),
    TResult onGetParternData(
        Either<GeneralFailure, List<PartnershipDataModel>> listData),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult onGetParternData(_OnGetParternData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult onGetParternData(_OnGetParternData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PartnershipStateCopyWith<$Res> {
  factory $PartnershipStateCopyWith(
          PartnershipState value, $Res Function(PartnershipState) then) =
      _$PartnershipStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PartnershipStateCopyWithImpl<$Res>
    implements $PartnershipStateCopyWith<$Res> {
  _$PartnershipStateCopyWithImpl(this._value, this._then);

  final PartnershipState _value;
  // ignore: unused_field
  final $Res Function(PartnershipState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PartnershipStateCopyWithImpl<$Res>
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
    return 'PartnershipState.loading()';
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
    @required TResult loading(),
    @required TResult initial(),
    @required TResult error(String error),
    @required
        TResult onGetParternData(
            Either<GeneralFailure, List<PartnershipDataModel>> listData),
  }) {
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    assert(onGetParternData != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult initial(),
    TResult error(String error),
    TResult onGetParternData(
        Either<GeneralFailure, List<PartnershipDataModel>> listData),
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
    @required TResult loading(_Loading value),
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult onGetParternData(_OnGetParternData value),
  }) {
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    assert(onGetParternData != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult onGetParternData(_OnGetParternData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PartnershipState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PartnershipStateCopyWithImpl<$Res>
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
    return 'PartnershipState.initial()';
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
    @required TResult loading(),
    @required TResult initial(),
    @required TResult error(String error),
    @required
        TResult onGetParternData(
            Either<GeneralFailure, List<PartnershipDataModel>> listData),
  }) {
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    assert(onGetParternData != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult initial(),
    TResult error(String error),
    TResult onGetParternData(
        Either<GeneralFailure, List<PartnershipDataModel>> listData),
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
    @required TResult loading(_Loading value),
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult onGetParternData(_OnGetParternData value),
  }) {
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    assert(onGetParternData != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult onGetParternData(_OnGetParternData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PartnershipState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$PartnershipStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_Error(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'PartnershipState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult initial(),
    @required TResult error(String error),
    @required
        TResult onGetParternData(
            Either<GeneralFailure, List<PartnershipDataModel>> listData),
  }) {
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    assert(onGetParternData != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult initial(),
    TResult error(String error),
    TResult onGetParternData(
        Either<GeneralFailure, List<PartnershipDataModel>> listData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult onGetParternData(_OnGetParternData value),
  }) {
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    assert(onGetParternData != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult onGetParternData(_OnGetParternData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PartnershipState {
  const factory _Error(String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnGetParternDataCopyWith<$Res> {
  factory _$OnGetParternDataCopyWith(
          _OnGetParternData value, $Res Function(_OnGetParternData) then) =
      __$OnGetParternDataCopyWithImpl<$Res>;
  $Res call({Either<GeneralFailure, List<PartnershipDataModel>> listData});
}

/// @nodoc
class __$OnGetParternDataCopyWithImpl<$Res>
    extends _$PartnershipStateCopyWithImpl<$Res>
    implements _$OnGetParternDataCopyWith<$Res> {
  __$OnGetParternDataCopyWithImpl(
      _OnGetParternData _value, $Res Function(_OnGetParternData) _then)
      : super(_value, (v) => _then(v as _OnGetParternData));

  @override
  _OnGetParternData get _value => super._value as _OnGetParternData;

  @override
  $Res call({
    Object listData = freezed,
  }) {
    return _then(_OnGetParternData(
      listData == freezed
          ? _value.listData
          : listData as Either<GeneralFailure, List<PartnershipDataModel>>,
    ));
  }
}

/// @nodoc
class _$_OnGetParternData implements _OnGetParternData {
  const _$_OnGetParternData(this.listData) : assert(listData != null);

  @override
  final Either<GeneralFailure, List<PartnershipDataModel>> listData;

  @override
  String toString() {
    return 'PartnershipState.onGetParternData(listData: $listData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetParternData &&
            (identical(other.listData, listData) ||
                const DeepCollectionEquality()
                    .equals(other.listData, listData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listData);

  @JsonKey(ignore: true)
  @override
  _$OnGetParternDataCopyWith<_OnGetParternData> get copyWith =>
      __$OnGetParternDataCopyWithImpl<_OnGetParternData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult initial(),
    @required TResult error(String error),
    @required
        TResult onGetParternData(
            Either<GeneralFailure, List<PartnershipDataModel>> listData),
  }) {
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    assert(onGetParternData != null);
    return onGetParternData(listData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult initial(),
    TResult error(String error),
    TResult onGetParternData(
        Either<GeneralFailure, List<PartnershipDataModel>> listData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetParternData != null) {
      return onGetParternData(listData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult onGetParternData(_OnGetParternData value),
  }) {
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    assert(onGetParternData != null);
    return onGetParternData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult onGetParternData(_OnGetParternData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetParternData != null) {
      return onGetParternData(this);
    }
    return orElse();
  }
}

abstract class _OnGetParternData implements PartnershipState {
  const factory _OnGetParternData(
          Either<GeneralFailure, List<PartnershipDataModel>> listData) =
      _$_OnGetParternData;

  Either<GeneralFailure, List<PartnershipDataModel>> get listData;
  @JsonKey(ignore: true)
  _$OnGetParternDataCopyWith<_OnGetParternData> get copyWith;
}

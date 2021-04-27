// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'membership_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MembershipEventTearOff {
  const _$MembershipEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _GetMembershipList getMembershipList() {
    return const _GetMembershipList();
  }

// ignore: unused_element
  _GetMyMembership getMyMembership() {
    return const _GetMyMembership();
  }

// ignore: unused_element
  _GetMembershipDataById getMembershipDataById(String membershipId) {
    return _GetMembershipDataById(
      membershipId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MembershipEvent = _$MembershipEventTearOff();

/// @nodoc
mixin _$MembershipEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getMembershipList(),
    @required TResult getMyMembership(),
    @required TResult getMembershipDataById(String membershipId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getMembershipList(),
    TResult getMyMembership(),
    TResult getMembershipDataById(String membershipId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getMembershipList(_GetMembershipList value),
    @required TResult getMyMembership(_GetMyMembership value),
    @required TResult getMembershipDataById(_GetMembershipDataById value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getMembershipList(_GetMembershipList value),
    TResult getMyMembership(_GetMyMembership value),
    TResult getMembershipDataById(_GetMembershipDataById value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MembershipEventCopyWith<$Res> {
  factory $MembershipEventCopyWith(
          MembershipEvent value, $Res Function(MembershipEvent) then) =
      _$MembershipEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MembershipEventCopyWithImpl<$Res>
    implements $MembershipEventCopyWith<$Res> {
  _$MembershipEventCopyWithImpl(this._value, this._then);

  final MembershipEvent _value;
  // ignore: unused_field
  final $Res Function(MembershipEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$MembershipEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'MembershipEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getMembershipList(),
    @required TResult getMyMembership(),
    @required TResult getMembershipDataById(String membershipId),
  }) {
    assert(started != null);
    assert(getMembershipList != null);
    assert(getMyMembership != null);
    assert(getMembershipDataById != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getMembershipList(),
    TResult getMyMembership(),
    TResult getMembershipDataById(String membershipId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getMembershipList(_GetMembershipList value),
    @required TResult getMyMembership(_GetMyMembership value),
    @required TResult getMembershipDataById(_GetMembershipDataById value),
  }) {
    assert(started != null);
    assert(getMembershipList != null);
    assert(getMyMembership != null);
    assert(getMembershipDataById != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getMembershipList(_GetMembershipList value),
    TResult getMyMembership(_GetMyMembership value),
    TResult getMembershipDataById(_GetMembershipDataById value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MembershipEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetMembershipListCopyWith<$Res> {
  factory _$GetMembershipListCopyWith(
          _GetMembershipList value, $Res Function(_GetMembershipList) then) =
      __$GetMembershipListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetMembershipListCopyWithImpl<$Res>
    extends _$MembershipEventCopyWithImpl<$Res>
    implements _$GetMembershipListCopyWith<$Res> {
  __$GetMembershipListCopyWithImpl(
      _GetMembershipList _value, $Res Function(_GetMembershipList) _then)
      : super(_value, (v) => _then(v as _GetMembershipList));

  @override
  _GetMembershipList get _value => super._value as _GetMembershipList;
}

/// @nodoc
class _$_GetMembershipList implements _GetMembershipList {
  const _$_GetMembershipList();

  @override
  String toString() {
    return 'MembershipEvent.getMembershipList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetMembershipList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getMembershipList(),
    @required TResult getMyMembership(),
    @required TResult getMembershipDataById(String membershipId),
  }) {
    assert(started != null);
    assert(getMembershipList != null);
    assert(getMyMembership != null);
    assert(getMembershipDataById != null);
    return getMembershipList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getMembershipList(),
    TResult getMyMembership(),
    TResult getMembershipDataById(String membershipId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMembershipList != null) {
      return getMembershipList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getMembershipList(_GetMembershipList value),
    @required TResult getMyMembership(_GetMyMembership value),
    @required TResult getMembershipDataById(_GetMembershipDataById value),
  }) {
    assert(started != null);
    assert(getMembershipList != null);
    assert(getMyMembership != null);
    assert(getMembershipDataById != null);
    return getMembershipList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getMembershipList(_GetMembershipList value),
    TResult getMyMembership(_GetMyMembership value),
    TResult getMembershipDataById(_GetMembershipDataById value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMembershipList != null) {
      return getMembershipList(this);
    }
    return orElse();
  }
}

abstract class _GetMembershipList implements MembershipEvent {
  const factory _GetMembershipList() = _$_GetMembershipList;
}

/// @nodoc
abstract class _$GetMyMembershipCopyWith<$Res> {
  factory _$GetMyMembershipCopyWith(
          _GetMyMembership value, $Res Function(_GetMyMembership) then) =
      __$GetMyMembershipCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetMyMembershipCopyWithImpl<$Res>
    extends _$MembershipEventCopyWithImpl<$Res>
    implements _$GetMyMembershipCopyWith<$Res> {
  __$GetMyMembershipCopyWithImpl(
      _GetMyMembership _value, $Res Function(_GetMyMembership) _then)
      : super(_value, (v) => _then(v as _GetMyMembership));

  @override
  _GetMyMembership get _value => super._value as _GetMyMembership;
}

/// @nodoc
class _$_GetMyMembership implements _GetMyMembership {
  const _$_GetMyMembership();

  @override
  String toString() {
    return 'MembershipEvent.getMyMembership()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetMyMembership);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getMembershipList(),
    @required TResult getMyMembership(),
    @required TResult getMembershipDataById(String membershipId),
  }) {
    assert(started != null);
    assert(getMembershipList != null);
    assert(getMyMembership != null);
    assert(getMembershipDataById != null);
    return getMyMembership();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getMembershipList(),
    TResult getMyMembership(),
    TResult getMembershipDataById(String membershipId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMyMembership != null) {
      return getMyMembership();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getMembershipList(_GetMembershipList value),
    @required TResult getMyMembership(_GetMyMembership value),
    @required TResult getMembershipDataById(_GetMembershipDataById value),
  }) {
    assert(started != null);
    assert(getMembershipList != null);
    assert(getMyMembership != null);
    assert(getMembershipDataById != null);
    return getMyMembership(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getMembershipList(_GetMembershipList value),
    TResult getMyMembership(_GetMyMembership value),
    TResult getMembershipDataById(_GetMembershipDataById value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMyMembership != null) {
      return getMyMembership(this);
    }
    return orElse();
  }
}

abstract class _GetMyMembership implements MembershipEvent {
  const factory _GetMyMembership() = _$_GetMyMembership;
}

/// @nodoc
abstract class _$GetMembershipDataByIdCopyWith<$Res> {
  factory _$GetMembershipDataByIdCopyWith(_GetMembershipDataById value,
          $Res Function(_GetMembershipDataById) then) =
      __$GetMembershipDataByIdCopyWithImpl<$Res>;
  $Res call({String membershipId});
}

/// @nodoc
class __$GetMembershipDataByIdCopyWithImpl<$Res>
    extends _$MembershipEventCopyWithImpl<$Res>
    implements _$GetMembershipDataByIdCopyWith<$Res> {
  __$GetMembershipDataByIdCopyWithImpl(_GetMembershipDataById _value,
      $Res Function(_GetMembershipDataById) _then)
      : super(_value, (v) => _then(v as _GetMembershipDataById));

  @override
  _GetMembershipDataById get _value => super._value as _GetMembershipDataById;

  @override
  $Res call({
    Object membershipId = freezed,
  }) {
    return _then(_GetMembershipDataById(
      membershipId == freezed ? _value.membershipId : membershipId as String,
    ));
  }
}

/// @nodoc
class _$_GetMembershipDataById implements _GetMembershipDataById {
  const _$_GetMembershipDataById(this.membershipId)
      : assert(membershipId != null);

  @override
  final String membershipId;

  @override
  String toString() {
    return 'MembershipEvent.getMembershipDataById(membershipId: $membershipId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMembershipDataById &&
            (identical(other.membershipId, membershipId) ||
                const DeepCollectionEquality()
                    .equals(other.membershipId, membershipId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(membershipId);

  @JsonKey(ignore: true)
  @override
  _$GetMembershipDataByIdCopyWith<_GetMembershipDataById> get copyWith =>
      __$GetMembershipDataByIdCopyWithImpl<_GetMembershipDataById>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getMembershipList(),
    @required TResult getMyMembership(),
    @required TResult getMembershipDataById(String membershipId),
  }) {
    assert(started != null);
    assert(getMembershipList != null);
    assert(getMyMembership != null);
    assert(getMembershipDataById != null);
    return getMembershipDataById(membershipId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getMembershipList(),
    TResult getMyMembership(),
    TResult getMembershipDataById(String membershipId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMembershipDataById != null) {
      return getMembershipDataById(membershipId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getMembershipList(_GetMembershipList value),
    @required TResult getMyMembership(_GetMyMembership value),
    @required TResult getMembershipDataById(_GetMembershipDataById value),
  }) {
    assert(started != null);
    assert(getMembershipList != null);
    assert(getMyMembership != null);
    assert(getMembershipDataById != null);
    return getMembershipDataById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getMembershipList(_GetMembershipList value),
    TResult getMyMembership(_GetMyMembership value),
    TResult getMembershipDataById(_GetMembershipDataById value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMembershipDataById != null) {
      return getMembershipDataById(this);
    }
    return orElse();
  }
}

abstract class _GetMembershipDataById implements MembershipEvent {
  const factory _GetMembershipDataById(String membershipId) =
      _$_GetMembershipDataById;

  String get membershipId;
  @JsonKey(ignore: true)
  _$GetMembershipDataByIdCopyWith<_GetMembershipDataById> get copyWith;
}

/// @nodoc
class _$MembershipStateTearOff {
  const _$MembershipStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Error error(String err) {
    return _Error(
      err,
    );
  }

// ignore: unused_element
  _OnGetMemberList onGetMemberList(
      {Either<GeneralFailure, List<MembershipDataModel>> onData}) {
    return _OnGetMemberList(
      onData: onData,
    );
  }

// ignore: unused_element
  _OnGetMyMembership onGetMyMembership(
      {Either<GeneralFailure, MemberInfoDataModel> onData}) {
    return _OnGetMyMembership(
      onData: onData,
    );
  }

// ignore: unused_element
  _OnGetSingleMembership onGetSingleMembership(
      {Either<GeneralFailure, MembershipDataModel> onSingleMembership}) {
    return _OnGetSingleMembership(
      onSingleMembership: onSingleMembership,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MembershipState = _$MembershipStateTearOff();

/// @nodoc
mixin _$MembershipState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String err),
    @required
        TResult onGetMemberList(
            Either<GeneralFailure, List<MembershipDataModel>> onData),
    @required
        TResult onGetMyMembership(
            Either<GeneralFailure, MemberInfoDataModel> onData),
    @required
        TResult onGetSingleMembership(
            Either<GeneralFailure, MembershipDataModel> onSingleMembership),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String err),
    TResult onGetMemberList(
        Either<GeneralFailure, List<MembershipDataModel>> onData),
    TResult onGetMyMembership(
        Either<GeneralFailure, MemberInfoDataModel> onData),
    TResult onGetSingleMembership(
        Either<GeneralFailure, MembershipDataModel> onSingleMembership),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetMemberList(_OnGetMemberList value),
    @required TResult onGetMyMembership(_OnGetMyMembership value),
    @required TResult onGetSingleMembership(_OnGetSingleMembership value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetMemberList(_OnGetMemberList value),
    TResult onGetMyMembership(_OnGetMyMembership value),
    TResult onGetSingleMembership(_OnGetSingleMembership value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MembershipStateCopyWith<$Res> {
  factory $MembershipStateCopyWith(
          MembershipState value, $Res Function(MembershipState) then) =
      _$MembershipStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MembershipStateCopyWithImpl<$Res>
    implements $MembershipStateCopyWith<$Res> {
  _$MembershipStateCopyWithImpl(this._value, this._then);

  final MembershipState _value;
  // ignore: unused_field
  final $Res Function(MembershipState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MembershipStateCopyWithImpl<$Res>
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
    return 'MembershipState.initial()';
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
    @required TResult loading(),
    @required TResult error(String err),
    @required
        TResult onGetMemberList(
            Either<GeneralFailure, List<MembershipDataModel>> onData),
    @required
        TResult onGetMyMembership(
            Either<GeneralFailure, MemberInfoDataModel> onData),
    @required
        TResult onGetSingleMembership(
            Either<GeneralFailure, MembershipDataModel> onSingleMembership),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String err),
    TResult onGetMemberList(
        Either<GeneralFailure, List<MembershipDataModel>> onData),
    TResult onGetMyMembership(
        Either<GeneralFailure, MemberInfoDataModel> onData),
    TResult onGetSingleMembership(
        Either<GeneralFailure, MembershipDataModel> onSingleMembership),
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
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetMemberList(_OnGetMemberList value),
    @required TResult onGetMyMembership(_OnGetMyMembership value),
    @required TResult onGetSingleMembership(_OnGetSingleMembership value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetMemberList(_OnGetMemberList value),
    TResult onGetMyMembership(_OnGetMyMembership value),
    TResult onGetSingleMembership(_OnGetSingleMembership value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MembershipState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$MembershipStateCopyWithImpl<$Res>
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
    return 'MembershipState.loading()';
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
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String err),
    @required
        TResult onGetMemberList(
            Either<GeneralFailure, List<MembershipDataModel>> onData),
    @required
        TResult onGetMyMembership(
            Either<GeneralFailure, MemberInfoDataModel> onData),
    @required
        TResult onGetSingleMembership(
            Either<GeneralFailure, MembershipDataModel> onSingleMembership),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String err),
    TResult onGetMemberList(
        Either<GeneralFailure, List<MembershipDataModel>> onData),
    TResult onGetMyMembership(
        Either<GeneralFailure, MemberInfoDataModel> onData),
    TResult onGetSingleMembership(
        Either<GeneralFailure, MembershipDataModel> onSingleMembership),
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
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetMemberList(_OnGetMemberList value),
    @required TResult onGetMyMembership(_OnGetMyMembership value),
    @required TResult onGetSingleMembership(_OnGetSingleMembership value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetMemberList(_OnGetMemberList value),
    TResult onGetMyMembership(_OnGetMyMembership value),
    TResult onGetSingleMembership(_OnGetSingleMembership value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MembershipState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String err});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$MembershipStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object err = freezed,
  }) {
    return _then(_Error(
      err == freezed ? _value.err : err as String,
    ));
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.err) : assert(err != null);

  @override
  final String err;

  @override
  String toString() {
    return 'MembershipState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(err);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String err),
    @required
        TResult onGetMemberList(
            Either<GeneralFailure, List<MembershipDataModel>> onData),
    @required
        TResult onGetMyMembership(
            Either<GeneralFailure, MemberInfoDataModel> onData),
    @required
        TResult onGetSingleMembership(
            Either<GeneralFailure, MembershipDataModel> onSingleMembership),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String err),
    TResult onGetMemberList(
        Either<GeneralFailure, List<MembershipDataModel>> onData),
    TResult onGetMyMembership(
        Either<GeneralFailure, MemberInfoDataModel> onData),
    TResult onGetSingleMembership(
        Either<GeneralFailure, MembershipDataModel> onSingleMembership),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetMemberList(_OnGetMemberList value),
    @required TResult onGetMyMembership(_OnGetMyMembership value),
    @required TResult onGetSingleMembership(_OnGetSingleMembership value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetMemberList(_OnGetMemberList value),
    TResult onGetMyMembership(_OnGetMyMembership value),
    TResult onGetSingleMembership(_OnGetSingleMembership value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MembershipState {
  const factory _Error(String err) = _$_Error;

  String get err;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnGetMemberListCopyWith<$Res> {
  factory _$OnGetMemberListCopyWith(
          _OnGetMemberList value, $Res Function(_OnGetMemberList) then) =
      __$OnGetMemberListCopyWithImpl<$Res>;
  $Res call({Either<GeneralFailure, List<MembershipDataModel>> onData});
}

/// @nodoc
class __$OnGetMemberListCopyWithImpl<$Res>
    extends _$MembershipStateCopyWithImpl<$Res>
    implements _$OnGetMemberListCopyWith<$Res> {
  __$OnGetMemberListCopyWithImpl(
      _OnGetMemberList _value, $Res Function(_OnGetMemberList) _then)
      : super(_value, (v) => _then(v as _OnGetMemberList));

  @override
  _OnGetMemberList get _value => super._value as _OnGetMemberList;

  @override
  $Res call({
    Object onData = freezed,
  }) {
    return _then(_OnGetMemberList(
      onData: onData == freezed
          ? _value.onData
          : onData as Either<GeneralFailure, List<MembershipDataModel>>,
    ));
  }
}

/// @nodoc
class _$_OnGetMemberList implements _OnGetMemberList {
  const _$_OnGetMemberList({this.onData});

  @override
  final Either<GeneralFailure, List<MembershipDataModel>> onData;

  @override
  String toString() {
    return 'MembershipState.onGetMemberList(onData: $onData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetMemberList &&
            (identical(other.onData, onData) ||
                const DeepCollectionEquality().equals(other.onData, onData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(onData);

  @JsonKey(ignore: true)
  @override
  _$OnGetMemberListCopyWith<_OnGetMemberList> get copyWith =>
      __$OnGetMemberListCopyWithImpl<_OnGetMemberList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String err),
    @required
        TResult onGetMemberList(
            Either<GeneralFailure, List<MembershipDataModel>> onData),
    @required
        TResult onGetMyMembership(
            Either<GeneralFailure, MemberInfoDataModel> onData),
    @required
        TResult onGetSingleMembership(
            Either<GeneralFailure, MembershipDataModel> onSingleMembership),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return onGetMemberList(onData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String err),
    TResult onGetMemberList(
        Either<GeneralFailure, List<MembershipDataModel>> onData),
    TResult onGetMyMembership(
        Either<GeneralFailure, MemberInfoDataModel> onData),
    TResult onGetSingleMembership(
        Either<GeneralFailure, MembershipDataModel> onSingleMembership),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetMemberList != null) {
      return onGetMemberList(onData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetMemberList(_OnGetMemberList value),
    @required TResult onGetMyMembership(_OnGetMyMembership value),
    @required TResult onGetSingleMembership(_OnGetSingleMembership value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return onGetMemberList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetMemberList(_OnGetMemberList value),
    TResult onGetMyMembership(_OnGetMyMembership value),
    TResult onGetSingleMembership(_OnGetSingleMembership value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetMemberList != null) {
      return onGetMemberList(this);
    }
    return orElse();
  }
}

abstract class _OnGetMemberList implements MembershipState {
  const factory _OnGetMemberList(
          {Either<GeneralFailure, List<MembershipDataModel>> onData}) =
      _$_OnGetMemberList;

  Either<GeneralFailure, List<MembershipDataModel>> get onData;
  @JsonKey(ignore: true)
  _$OnGetMemberListCopyWith<_OnGetMemberList> get copyWith;
}

/// @nodoc
abstract class _$OnGetMyMembershipCopyWith<$Res> {
  factory _$OnGetMyMembershipCopyWith(
          _OnGetMyMembership value, $Res Function(_OnGetMyMembership) then) =
      __$OnGetMyMembershipCopyWithImpl<$Res>;
  $Res call({Either<GeneralFailure, MemberInfoDataModel> onData});
}

/// @nodoc
class __$OnGetMyMembershipCopyWithImpl<$Res>
    extends _$MembershipStateCopyWithImpl<$Res>
    implements _$OnGetMyMembershipCopyWith<$Res> {
  __$OnGetMyMembershipCopyWithImpl(
      _OnGetMyMembership _value, $Res Function(_OnGetMyMembership) _then)
      : super(_value, (v) => _then(v as _OnGetMyMembership));

  @override
  _OnGetMyMembership get _value => super._value as _OnGetMyMembership;

  @override
  $Res call({
    Object onData = freezed,
  }) {
    return _then(_OnGetMyMembership(
      onData: onData == freezed
          ? _value.onData
          : onData as Either<GeneralFailure, MemberInfoDataModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetMyMembership implements _OnGetMyMembership {
  const _$_OnGetMyMembership({this.onData});

  @override
  final Either<GeneralFailure, MemberInfoDataModel> onData;

  @override
  String toString() {
    return 'MembershipState.onGetMyMembership(onData: $onData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetMyMembership &&
            (identical(other.onData, onData) ||
                const DeepCollectionEquality().equals(other.onData, onData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(onData);

  @JsonKey(ignore: true)
  @override
  _$OnGetMyMembershipCopyWith<_OnGetMyMembership> get copyWith =>
      __$OnGetMyMembershipCopyWithImpl<_OnGetMyMembership>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String err),
    @required
        TResult onGetMemberList(
            Either<GeneralFailure, List<MembershipDataModel>> onData),
    @required
        TResult onGetMyMembership(
            Either<GeneralFailure, MemberInfoDataModel> onData),
    @required
        TResult onGetSingleMembership(
            Either<GeneralFailure, MembershipDataModel> onSingleMembership),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return onGetMyMembership(onData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String err),
    TResult onGetMemberList(
        Either<GeneralFailure, List<MembershipDataModel>> onData),
    TResult onGetMyMembership(
        Either<GeneralFailure, MemberInfoDataModel> onData),
    TResult onGetSingleMembership(
        Either<GeneralFailure, MembershipDataModel> onSingleMembership),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetMyMembership != null) {
      return onGetMyMembership(onData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetMemberList(_OnGetMemberList value),
    @required TResult onGetMyMembership(_OnGetMyMembership value),
    @required TResult onGetSingleMembership(_OnGetSingleMembership value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return onGetMyMembership(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetMemberList(_OnGetMemberList value),
    TResult onGetMyMembership(_OnGetMyMembership value),
    TResult onGetSingleMembership(_OnGetSingleMembership value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetMyMembership != null) {
      return onGetMyMembership(this);
    }
    return orElse();
  }
}

abstract class _OnGetMyMembership implements MembershipState {
  const factory _OnGetMyMembership(
          {Either<GeneralFailure, MemberInfoDataModel> onData}) =
      _$_OnGetMyMembership;

  Either<GeneralFailure, MemberInfoDataModel> get onData;
  @JsonKey(ignore: true)
  _$OnGetMyMembershipCopyWith<_OnGetMyMembership> get copyWith;
}

/// @nodoc
abstract class _$OnGetSingleMembershipCopyWith<$Res> {
  factory _$OnGetSingleMembershipCopyWith(_OnGetSingleMembership value,
          $Res Function(_OnGetSingleMembership) then) =
      __$OnGetSingleMembershipCopyWithImpl<$Res>;
  $Res call({Either<GeneralFailure, MembershipDataModel> onSingleMembership});
}

/// @nodoc
class __$OnGetSingleMembershipCopyWithImpl<$Res>
    extends _$MembershipStateCopyWithImpl<$Res>
    implements _$OnGetSingleMembershipCopyWith<$Res> {
  __$OnGetSingleMembershipCopyWithImpl(_OnGetSingleMembership _value,
      $Res Function(_OnGetSingleMembership) _then)
      : super(_value, (v) => _then(v as _OnGetSingleMembership));

  @override
  _OnGetSingleMembership get _value => super._value as _OnGetSingleMembership;

  @override
  $Res call({
    Object onSingleMembership = freezed,
  }) {
    return _then(_OnGetSingleMembership(
      onSingleMembership: onSingleMembership == freezed
          ? _value.onSingleMembership
          : onSingleMembership as Either<GeneralFailure, MembershipDataModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetSingleMembership implements _OnGetSingleMembership {
  const _$_OnGetSingleMembership({this.onSingleMembership});

  @override
  final Either<GeneralFailure, MembershipDataModel> onSingleMembership;

  @override
  String toString() {
    return 'MembershipState.onGetSingleMembership(onSingleMembership: $onSingleMembership)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetSingleMembership &&
            (identical(other.onSingleMembership, onSingleMembership) ||
                const DeepCollectionEquality()
                    .equals(other.onSingleMembership, onSingleMembership)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(onSingleMembership);

  @JsonKey(ignore: true)
  @override
  _$OnGetSingleMembershipCopyWith<_OnGetSingleMembership> get copyWith =>
      __$OnGetSingleMembershipCopyWithImpl<_OnGetSingleMembership>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String err),
    @required
        TResult onGetMemberList(
            Either<GeneralFailure, List<MembershipDataModel>> onData),
    @required
        TResult onGetMyMembership(
            Either<GeneralFailure, MemberInfoDataModel> onData),
    @required
        TResult onGetSingleMembership(
            Either<GeneralFailure, MembershipDataModel> onSingleMembership),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return onGetSingleMembership(onSingleMembership);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String err),
    TResult onGetMemberList(
        Either<GeneralFailure, List<MembershipDataModel>> onData),
    TResult onGetMyMembership(
        Either<GeneralFailure, MemberInfoDataModel> onData),
    TResult onGetSingleMembership(
        Either<GeneralFailure, MembershipDataModel> onSingleMembership),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetSingleMembership != null) {
      return onGetSingleMembership(onSingleMembership);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetMemberList(_OnGetMemberList value),
    @required TResult onGetMyMembership(_OnGetMyMembership value),
    @required TResult onGetSingleMembership(_OnGetSingleMembership value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetMemberList != null);
    assert(onGetMyMembership != null);
    assert(onGetSingleMembership != null);
    return onGetSingleMembership(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetMemberList(_OnGetMemberList value),
    TResult onGetMyMembership(_OnGetMyMembership value),
    TResult onGetSingleMembership(_OnGetSingleMembership value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetSingleMembership != null) {
      return onGetSingleMembership(this);
    }
    return orElse();
  }
}

abstract class _OnGetSingleMembership implements MembershipState {
  const factory _OnGetSingleMembership(
          {Either<GeneralFailure, MembershipDataModel> onSingleMembership}) =
      _$_OnGetSingleMembership;

  Either<GeneralFailure, MembershipDataModel> get onSingleMembership;
  @JsonKey(ignore: true)
  _$OnGetSingleMembershipCopyWith<_OnGetSingleMembership> get copyWith;
}

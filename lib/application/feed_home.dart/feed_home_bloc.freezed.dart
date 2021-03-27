// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeedHomeEventTearOff {
  const _$FeedHomeEventTearOff();

// ignore: unused_element
  _GetTopFeedData getTopFeedData() {
    return const _GetTopFeedData();
  }

// ignore: unused_element
  _GetBottomFeedData getBottomFeedData() {
    return const _GetBottomFeedData();
  }

// ignore: unused_element
  _GetHomeMenuList getHomeMenuList() {
    return const _GetHomeMenuList();
  }

// ignore: unused_element
  _GetSingleFeed getSingleFeed(String feedId) {
    return _GetSingleFeed(
      feedId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeedHomeEvent = _$FeedHomeEventTearOff();

/// @nodoc
mixin _$FeedHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getTopFeedData(),
    @required TResult getBottomFeedData(),
    @required TResult getHomeMenuList(),
    @required TResult getSingleFeed(String feedId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getTopFeedData(),
    TResult getBottomFeedData(),
    TResult getHomeMenuList(),
    TResult getSingleFeed(String feedId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getTopFeedData(_GetTopFeedData value),
    @required TResult getBottomFeedData(_GetBottomFeedData value),
    @required TResult getHomeMenuList(_GetHomeMenuList value),
    @required TResult getSingleFeed(_GetSingleFeed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getTopFeedData(_GetTopFeedData value),
    TResult getBottomFeedData(_GetBottomFeedData value),
    TResult getHomeMenuList(_GetHomeMenuList value),
    TResult getSingleFeed(_GetSingleFeed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FeedHomeEventCopyWith<$Res> {
  factory $FeedHomeEventCopyWith(
          FeedHomeEvent value, $Res Function(FeedHomeEvent) then) =
      _$FeedHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedHomeEventCopyWithImpl<$Res>
    implements $FeedHomeEventCopyWith<$Res> {
  _$FeedHomeEventCopyWithImpl(this._value, this._then);

  final FeedHomeEvent _value;
  // ignore: unused_field
  final $Res Function(FeedHomeEvent) _then;
}

/// @nodoc
abstract class _$GetTopFeedDataCopyWith<$Res> {
  factory _$GetTopFeedDataCopyWith(
          _GetTopFeedData value, $Res Function(_GetTopFeedData) then) =
      __$GetTopFeedDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetTopFeedDataCopyWithImpl<$Res>
    extends _$FeedHomeEventCopyWithImpl<$Res>
    implements _$GetTopFeedDataCopyWith<$Res> {
  __$GetTopFeedDataCopyWithImpl(
      _GetTopFeedData _value, $Res Function(_GetTopFeedData) _then)
      : super(_value, (v) => _then(v as _GetTopFeedData));

  @override
  _GetTopFeedData get _value => super._value as _GetTopFeedData;
}

/// @nodoc
class _$_GetTopFeedData implements _GetTopFeedData {
  const _$_GetTopFeedData();

  @override
  String toString() {
    return 'FeedHomeEvent.getTopFeedData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetTopFeedData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getTopFeedData(),
    @required TResult getBottomFeedData(),
    @required TResult getHomeMenuList(),
    @required TResult getSingleFeed(String feedId),
  }) {
    assert(getTopFeedData != null);
    assert(getBottomFeedData != null);
    assert(getHomeMenuList != null);
    assert(getSingleFeed != null);
    return getTopFeedData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getTopFeedData(),
    TResult getBottomFeedData(),
    TResult getHomeMenuList(),
    TResult getSingleFeed(String feedId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTopFeedData != null) {
      return getTopFeedData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getTopFeedData(_GetTopFeedData value),
    @required TResult getBottomFeedData(_GetBottomFeedData value),
    @required TResult getHomeMenuList(_GetHomeMenuList value),
    @required TResult getSingleFeed(_GetSingleFeed value),
  }) {
    assert(getTopFeedData != null);
    assert(getBottomFeedData != null);
    assert(getHomeMenuList != null);
    assert(getSingleFeed != null);
    return getTopFeedData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getTopFeedData(_GetTopFeedData value),
    TResult getBottomFeedData(_GetBottomFeedData value),
    TResult getHomeMenuList(_GetHomeMenuList value),
    TResult getSingleFeed(_GetSingleFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTopFeedData != null) {
      return getTopFeedData(this);
    }
    return orElse();
  }
}

abstract class _GetTopFeedData implements FeedHomeEvent {
  const factory _GetTopFeedData() = _$_GetTopFeedData;
}

/// @nodoc
abstract class _$GetBottomFeedDataCopyWith<$Res> {
  factory _$GetBottomFeedDataCopyWith(
          _GetBottomFeedData value, $Res Function(_GetBottomFeedData) then) =
      __$GetBottomFeedDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetBottomFeedDataCopyWithImpl<$Res>
    extends _$FeedHomeEventCopyWithImpl<$Res>
    implements _$GetBottomFeedDataCopyWith<$Res> {
  __$GetBottomFeedDataCopyWithImpl(
      _GetBottomFeedData _value, $Res Function(_GetBottomFeedData) _then)
      : super(_value, (v) => _then(v as _GetBottomFeedData));

  @override
  _GetBottomFeedData get _value => super._value as _GetBottomFeedData;
}

/// @nodoc
class _$_GetBottomFeedData implements _GetBottomFeedData {
  const _$_GetBottomFeedData();

  @override
  String toString() {
    return 'FeedHomeEvent.getBottomFeedData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetBottomFeedData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getTopFeedData(),
    @required TResult getBottomFeedData(),
    @required TResult getHomeMenuList(),
    @required TResult getSingleFeed(String feedId),
  }) {
    assert(getTopFeedData != null);
    assert(getBottomFeedData != null);
    assert(getHomeMenuList != null);
    assert(getSingleFeed != null);
    return getBottomFeedData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getTopFeedData(),
    TResult getBottomFeedData(),
    TResult getHomeMenuList(),
    TResult getSingleFeed(String feedId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getBottomFeedData != null) {
      return getBottomFeedData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getTopFeedData(_GetTopFeedData value),
    @required TResult getBottomFeedData(_GetBottomFeedData value),
    @required TResult getHomeMenuList(_GetHomeMenuList value),
    @required TResult getSingleFeed(_GetSingleFeed value),
  }) {
    assert(getTopFeedData != null);
    assert(getBottomFeedData != null);
    assert(getHomeMenuList != null);
    assert(getSingleFeed != null);
    return getBottomFeedData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getTopFeedData(_GetTopFeedData value),
    TResult getBottomFeedData(_GetBottomFeedData value),
    TResult getHomeMenuList(_GetHomeMenuList value),
    TResult getSingleFeed(_GetSingleFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getBottomFeedData != null) {
      return getBottomFeedData(this);
    }
    return orElse();
  }
}

abstract class _GetBottomFeedData implements FeedHomeEvent {
  const factory _GetBottomFeedData() = _$_GetBottomFeedData;
}

/// @nodoc
abstract class _$GetHomeMenuListCopyWith<$Res> {
  factory _$GetHomeMenuListCopyWith(
          _GetHomeMenuList value, $Res Function(_GetHomeMenuList) then) =
      __$GetHomeMenuListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetHomeMenuListCopyWithImpl<$Res>
    extends _$FeedHomeEventCopyWithImpl<$Res>
    implements _$GetHomeMenuListCopyWith<$Res> {
  __$GetHomeMenuListCopyWithImpl(
      _GetHomeMenuList _value, $Res Function(_GetHomeMenuList) _then)
      : super(_value, (v) => _then(v as _GetHomeMenuList));

  @override
  _GetHomeMenuList get _value => super._value as _GetHomeMenuList;
}

/// @nodoc
class _$_GetHomeMenuList implements _GetHomeMenuList {
  const _$_GetHomeMenuList();

  @override
  String toString() {
    return 'FeedHomeEvent.getHomeMenuList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetHomeMenuList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getTopFeedData(),
    @required TResult getBottomFeedData(),
    @required TResult getHomeMenuList(),
    @required TResult getSingleFeed(String feedId),
  }) {
    assert(getTopFeedData != null);
    assert(getBottomFeedData != null);
    assert(getHomeMenuList != null);
    assert(getSingleFeed != null);
    return getHomeMenuList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getTopFeedData(),
    TResult getBottomFeedData(),
    TResult getHomeMenuList(),
    TResult getSingleFeed(String feedId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getHomeMenuList != null) {
      return getHomeMenuList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getTopFeedData(_GetTopFeedData value),
    @required TResult getBottomFeedData(_GetBottomFeedData value),
    @required TResult getHomeMenuList(_GetHomeMenuList value),
    @required TResult getSingleFeed(_GetSingleFeed value),
  }) {
    assert(getTopFeedData != null);
    assert(getBottomFeedData != null);
    assert(getHomeMenuList != null);
    assert(getSingleFeed != null);
    return getHomeMenuList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getTopFeedData(_GetTopFeedData value),
    TResult getBottomFeedData(_GetBottomFeedData value),
    TResult getHomeMenuList(_GetHomeMenuList value),
    TResult getSingleFeed(_GetSingleFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getHomeMenuList != null) {
      return getHomeMenuList(this);
    }
    return orElse();
  }
}

abstract class _GetHomeMenuList implements FeedHomeEvent {
  const factory _GetHomeMenuList() = _$_GetHomeMenuList;
}

/// @nodoc
abstract class _$GetSingleFeedCopyWith<$Res> {
  factory _$GetSingleFeedCopyWith(
          _GetSingleFeed value, $Res Function(_GetSingleFeed) then) =
      __$GetSingleFeedCopyWithImpl<$Res>;
  $Res call({String feedId});
}

/// @nodoc
class __$GetSingleFeedCopyWithImpl<$Res>
    extends _$FeedHomeEventCopyWithImpl<$Res>
    implements _$GetSingleFeedCopyWith<$Res> {
  __$GetSingleFeedCopyWithImpl(
      _GetSingleFeed _value, $Res Function(_GetSingleFeed) _then)
      : super(_value, (v) => _then(v as _GetSingleFeed));

  @override
  _GetSingleFeed get _value => super._value as _GetSingleFeed;

  @override
  $Res call({
    Object feedId = freezed,
  }) {
    return _then(_GetSingleFeed(
      feedId == freezed ? _value.feedId : feedId as String,
    ));
  }
}

/// @nodoc
class _$_GetSingleFeed implements _GetSingleFeed {
  const _$_GetSingleFeed(this.feedId) : assert(feedId != null);

  @override
  final String feedId;

  @override
  String toString() {
    return 'FeedHomeEvent.getSingleFeed(feedId: $feedId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSingleFeed &&
            (identical(other.feedId, feedId) ||
                const DeepCollectionEquality().equals(other.feedId, feedId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(feedId);

  @JsonKey(ignore: true)
  @override
  _$GetSingleFeedCopyWith<_GetSingleFeed> get copyWith =>
      __$GetSingleFeedCopyWithImpl<_GetSingleFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getTopFeedData(),
    @required TResult getBottomFeedData(),
    @required TResult getHomeMenuList(),
    @required TResult getSingleFeed(String feedId),
  }) {
    assert(getTopFeedData != null);
    assert(getBottomFeedData != null);
    assert(getHomeMenuList != null);
    assert(getSingleFeed != null);
    return getSingleFeed(feedId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getTopFeedData(),
    TResult getBottomFeedData(),
    TResult getHomeMenuList(),
    TResult getSingleFeed(String feedId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSingleFeed != null) {
      return getSingleFeed(feedId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getTopFeedData(_GetTopFeedData value),
    @required TResult getBottomFeedData(_GetBottomFeedData value),
    @required TResult getHomeMenuList(_GetHomeMenuList value),
    @required TResult getSingleFeed(_GetSingleFeed value),
  }) {
    assert(getTopFeedData != null);
    assert(getBottomFeedData != null);
    assert(getHomeMenuList != null);
    assert(getSingleFeed != null);
    return getSingleFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getTopFeedData(_GetTopFeedData value),
    TResult getBottomFeedData(_GetBottomFeedData value),
    TResult getHomeMenuList(_GetHomeMenuList value),
    TResult getSingleFeed(_GetSingleFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSingleFeed != null) {
      return getSingleFeed(this);
    }
    return orElse();
  }
}

abstract class _GetSingleFeed implements FeedHomeEvent {
  const factory _GetSingleFeed(String feedId) = _$_GetSingleFeed;

  String get feedId;
  @JsonKey(ignore: true)
  _$GetSingleFeedCopyWith<_GetSingleFeed> get copyWith;
}

/// @nodoc
class _$FeedHomeStateTearOff {
  const _$FeedHomeStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _FailOrSuccessGetData failOrSuccessGetData(
      {@required Option<Either<FeedFailure, List<Feed>>> responseOptions,
      @required bool isLoading}) {
    return _FailOrSuccessGetData(
      responseOptions: responseOptions,
      isLoading: isLoading,
    );
  }

// ignore: unused_element
  _FailOrSuccessGetDataBottom failOrSuccessGetDataBottom(
      {@required Option<Either<FeedFailure, List<Feed>>> responseOptions,
      @required bool isLoading}) {
    return _FailOrSuccessGetDataBottom(
      responseOptions: responseOptions,
      isLoading: isLoading,
    );
  }

// ignore: unused_element
  _OnGetHomeMenuList onGetHomeMenuList(
      {@required Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
      @required bool isLoading}) {
    return _OnGetHomeMenuList(
      homeMenuData: homeMenuData,
      isLoading: isLoading,
    );
  }

// ignore: unused_element
  _OnGetSingleFeedData onGetSingleFeedData(
      {@required Option<Either<FeedFailure, Feed>> singleData,
      @required bool isLoading}) {
    return _OnGetSingleFeedData(
      singleData: singleData,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeedHomeState = _$FeedHomeStateTearOff();

/// @nodoc
mixin _$FeedHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult failOrSuccessGetData(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult failOrSuccessGetDataBottom(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult onGetHomeMenuList(
            Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
            bool isLoading),
    @required
        TResult onGetSingleFeedData(
            Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failOrSuccessGetData(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult failOrSuccessGetDataBottom(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult onGetHomeMenuList(
        Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
        bool isLoading),
    TResult onGetSingleFeedData(
        Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    @required
        TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    @required TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    @required TResult onGetSingleFeedData(_OnGetSingleFeedData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    TResult onGetSingleFeedData(_OnGetSingleFeedData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FeedHomeStateCopyWith<$Res> {
  factory $FeedHomeStateCopyWith(
          FeedHomeState value, $Res Function(FeedHomeState) then) =
      _$FeedHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedHomeStateCopyWithImpl<$Res>
    implements $FeedHomeStateCopyWith<$Res> {
  _$FeedHomeStateCopyWithImpl(this._value, this._then);

  final FeedHomeState _value;
  // ignore: unused_field
  final $Res Function(FeedHomeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FeedHomeStateCopyWithImpl<$Res>
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
    return 'FeedHomeState.initial()';
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
        TResult failOrSuccessGetData(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult failOrSuccessGetDataBottom(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult onGetHomeMenuList(
            Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
            bool isLoading),
    @required
        TResult onGetSingleFeedData(
            Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failOrSuccessGetData(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult failOrSuccessGetDataBottom(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult onGetHomeMenuList(
        Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
        bool isLoading),
    TResult onGetSingleFeedData(
        Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
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
    @required TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    @required
        TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    @required TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    @required TResult onGetSingleFeedData(_OnGetSingleFeedData value),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    TResult onGetSingleFeedData(_OnGetSingleFeedData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FeedHomeState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FailOrSuccessGetDataCopyWith<$Res> {
  factory _$FailOrSuccessGetDataCopyWith(_FailOrSuccessGetData value,
          $Res Function(_FailOrSuccessGetData) then) =
      __$FailOrSuccessGetDataCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<FeedFailure, List<Feed>>> responseOptions,
      bool isLoading});
}

/// @nodoc
class __$FailOrSuccessGetDataCopyWithImpl<$Res>
    extends _$FeedHomeStateCopyWithImpl<$Res>
    implements _$FailOrSuccessGetDataCopyWith<$Res> {
  __$FailOrSuccessGetDataCopyWithImpl(
      _FailOrSuccessGetData _value, $Res Function(_FailOrSuccessGetData) _then)
      : super(_value, (v) => _then(v as _FailOrSuccessGetData));

  @override
  _FailOrSuccessGetData get _value => super._value as _FailOrSuccessGetData;

  @override
  $Res call({
    Object responseOptions = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FailOrSuccessGetData(
      responseOptions: responseOptions == freezed
          ? _value.responseOptions
          : responseOptions as Option<Either<FeedFailure, List<Feed>>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_FailOrSuccessGetData implements _FailOrSuccessGetData {
  _$_FailOrSuccessGetData(
      {@required this.responseOptions, @required this.isLoading})
      : assert(responseOptions != null),
        assert(isLoading != null);

  @override
  final Option<Either<FeedFailure, List<Feed>>> responseOptions;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FeedHomeState.failOrSuccessGetData(responseOptions: $responseOptions, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailOrSuccessGetData &&
            (identical(other.responseOptions, responseOptions) ||
                const DeepCollectionEquality()
                    .equals(other.responseOptions, responseOptions)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(responseOptions) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$FailOrSuccessGetDataCopyWith<_FailOrSuccessGetData> get copyWith =>
      __$FailOrSuccessGetDataCopyWithImpl<_FailOrSuccessGetData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult failOrSuccessGetData(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult failOrSuccessGetDataBottom(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult onGetHomeMenuList(
            Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
            bool isLoading),
    @required
        TResult onGetSingleFeedData(
            Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return failOrSuccessGetData(responseOptions, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failOrSuccessGetData(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult failOrSuccessGetDataBottom(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult onGetHomeMenuList(
        Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
        bool isLoading),
    TResult onGetSingleFeedData(
        Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessGetData != null) {
      return failOrSuccessGetData(responseOptions, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    @required
        TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    @required TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    @required TResult onGetSingleFeedData(_OnGetSingleFeedData value),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return failOrSuccessGetData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    TResult onGetSingleFeedData(_OnGetSingleFeedData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessGetData != null) {
      return failOrSuccessGetData(this);
    }
    return orElse();
  }
}

abstract class _FailOrSuccessGetData implements FeedHomeState {
  factory _FailOrSuccessGetData(
      {@required Option<Either<FeedFailure, List<Feed>>> responseOptions,
      @required bool isLoading}) = _$_FailOrSuccessGetData;

  Option<Either<FeedFailure, List<Feed>>> get responseOptions;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$FailOrSuccessGetDataCopyWith<_FailOrSuccessGetData> get copyWith;
}

/// @nodoc
abstract class _$FailOrSuccessGetDataBottomCopyWith<$Res> {
  factory _$FailOrSuccessGetDataBottomCopyWith(
          _FailOrSuccessGetDataBottom value,
          $Res Function(_FailOrSuccessGetDataBottom) then) =
      __$FailOrSuccessGetDataBottomCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<FeedFailure, List<Feed>>> responseOptions,
      bool isLoading});
}

/// @nodoc
class __$FailOrSuccessGetDataBottomCopyWithImpl<$Res>
    extends _$FeedHomeStateCopyWithImpl<$Res>
    implements _$FailOrSuccessGetDataBottomCopyWith<$Res> {
  __$FailOrSuccessGetDataBottomCopyWithImpl(_FailOrSuccessGetDataBottom _value,
      $Res Function(_FailOrSuccessGetDataBottom) _then)
      : super(_value, (v) => _then(v as _FailOrSuccessGetDataBottom));

  @override
  _FailOrSuccessGetDataBottom get _value =>
      super._value as _FailOrSuccessGetDataBottom;

  @override
  $Res call({
    Object responseOptions = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FailOrSuccessGetDataBottom(
      responseOptions: responseOptions == freezed
          ? _value.responseOptions
          : responseOptions as Option<Either<FeedFailure, List<Feed>>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_FailOrSuccessGetDataBottom implements _FailOrSuccessGetDataBottom {
  _$_FailOrSuccessGetDataBottom(
      {@required this.responseOptions, @required this.isLoading})
      : assert(responseOptions != null),
        assert(isLoading != null);

  @override
  final Option<Either<FeedFailure, List<Feed>>> responseOptions;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FeedHomeState.failOrSuccessGetDataBottom(responseOptions: $responseOptions, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailOrSuccessGetDataBottom &&
            (identical(other.responseOptions, responseOptions) ||
                const DeepCollectionEquality()
                    .equals(other.responseOptions, responseOptions)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(responseOptions) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$FailOrSuccessGetDataBottomCopyWith<_FailOrSuccessGetDataBottom>
      get copyWith => __$FailOrSuccessGetDataBottomCopyWithImpl<
          _FailOrSuccessGetDataBottom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult failOrSuccessGetData(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult failOrSuccessGetDataBottom(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult onGetHomeMenuList(
            Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
            bool isLoading),
    @required
        TResult onGetSingleFeedData(
            Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return failOrSuccessGetDataBottom(responseOptions, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failOrSuccessGetData(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult failOrSuccessGetDataBottom(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult onGetHomeMenuList(
        Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
        bool isLoading),
    TResult onGetSingleFeedData(
        Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessGetDataBottom != null) {
      return failOrSuccessGetDataBottom(responseOptions, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    @required
        TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    @required TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    @required TResult onGetSingleFeedData(_OnGetSingleFeedData value),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return failOrSuccessGetDataBottom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    TResult onGetSingleFeedData(_OnGetSingleFeedData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessGetDataBottom != null) {
      return failOrSuccessGetDataBottom(this);
    }
    return orElse();
  }
}

abstract class _FailOrSuccessGetDataBottom implements FeedHomeState {
  factory _FailOrSuccessGetDataBottom(
      {@required Option<Either<FeedFailure, List<Feed>>> responseOptions,
      @required bool isLoading}) = _$_FailOrSuccessGetDataBottom;

  Option<Either<FeedFailure, List<Feed>>> get responseOptions;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$FailOrSuccessGetDataBottomCopyWith<_FailOrSuccessGetDataBottom>
      get copyWith;
}

/// @nodoc
abstract class _$OnGetHomeMenuListCopyWith<$Res> {
  factory _$OnGetHomeMenuListCopyWith(
          _OnGetHomeMenuList value, $Res Function(_OnGetHomeMenuList) then) =
      __$OnGetHomeMenuListCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
      bool isLoading});
}

/// @nodoc
class __$OnGetHomeMenuListCopyWithImpl<$Res>
    extends _$FeedHomeStateCopyWithImpl<$Res>
    implements _$OnGetHomeMenuListCopyWith<$Res> {
  __$OnGetHomeMenuListCopyWithImpl(
      _OnGetHomeMenuList _value, $Res Function(_OnGetHomeMenuList) _then)
      : super(_value, (v) => _then(v as _OnGetHomeMenuList));

  @override
  _OnGetHomeMenuList get _value => super._value as _OnGetHomeMenuList;

  @override
  $Res call({
    Object homeMenuData = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_OnGetHomeMenuList(
      homeMenuData: homeMenuData == freezed
          ? _value.homeMenuData
          : homeMenuData as Option<Either<FeedFailure, List<MenuDataModel>>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_OnGetHomeMenuList implements _OnGetHomeMenuList {
  const _$_OnGetHomeMenuList(
      {@required this.homeMenuData, @required this.isLoading})
      : assert(homeMenuData != null),
        assert(isLoading != null);

  @override
  final Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FeedHomeState.onGetHomeMenuList(homeMenuData: $homeMenuData, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetHomeMenuList &&
            (identical(other.homeMenuData, homeMenuData) ||
                const DeepCollectionEquality()
                    .equals(other.homeMenuData, homeMenuData)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeMenuData) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$OnGetHomeMenuListCopyWith<_OnGetHomeMenuList> get copyWith =>
      __$OnGetHomeMenuListCopyWithImpl<_OnGetHomeMenuList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult failOrSuccessGetData(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult failOrSuccessGetDataBottom(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult onGetHomeMenuList(
            Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
            bool isLoading),
    @required
        TResult onGetSingleFeedData(
            Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return onGetHomeMenuList(homeMenuData, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failOrSuccessGetData(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult failOrSuccessGetDataBottom(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult onGetHomeMenuList(
        Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
        bool isLoading),
    TResult onGetSingleFeedData(
        Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetHomeMenuList != null) {
      return onGetHomeMenuList(homeMenuData, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    @required
        TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    @required TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    @required TResult onGetSingleFeedData(_OnGetSingleFeedData value),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return onGetHomeMenuList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    TResult onGetSingleFeedData(_OnGetSingleFeedData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetHomeMenuList != null) {
      return onGetHomeMenuList(this);
    }
    return orElse();
  }
}

abstract class _OnGetHomeMenuList implements FeedHomeState {
  const factory _OnGetHomeMenuList(
      {@required Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
      @required bool isLoading}) = _$_OnGetHomeMenuList;

  Option<Either<FeedFailure, List<MenuDataModel>>> get homeMenuData;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$OnGetHomeMenuListCopyWith<_OnGetHomeMenuList> get copyWith;
}

/// @nodoc
abstract class _$OnGetSingleFeedDataCopyWith<$Res> {
  factory _$OnGetSingleFeedDataCopyWith(_OnGetSingleFeedData value,
          $Res Function(_OnGetSingleFeedData) then) =
      __$OnGetSingleFeedDataCopyWithImpl<$Res>;
  $Res call({Option<Either<FeedFailure, Feed>> singleData, bool isLoading});
}

/// @nodoc
class __$OnGetSingleFeedDataCopyWithImpl<$Res>
    extends _$FeedHomeStateCopyWithImpl<$Res>
    implements _$OnGetSingleFeedDataCopyWith<$Res> {
  __$OnGetSingleFeedDataCopyWithImpl(
      _OnGetSingleFeedData _value, $Res Function(_OnGetSingleFeedData) _then)
      : super(_value, (v) => _then(v as _OnGetSingleFeedData));

  @override
  _OnGetSingleFeedData get _value => super._value as _OnGetSingleFeedData;

  @override
  $Res call({
    Object singleData = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_OnGetSingleFeedData(
      singleData: singleData == freezed
          ? _value.singleData
          : singleData as Option<Either<FeedFailure, Feed>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_OnGetSingleFeedData implements _OnGetSingleFeedData {
  const _$_OnGetSingleFeedData(
      {@required this.singleData, @required this.isLoading})
      : assert(singleData != null),
        assert(isLoading != null);

  @override
  final Option<Either<FeedFailure, Feed>> singleData;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FeedHomeState.onGetSingleFeedData(singleData: $singleData, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetSingleFeedData &&
            (identical(other.singleData, singleData) ||
                const DeepCollectionEquality()
                    .equals(other.singleData, singleData)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(singleData) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$OnGetSingleFeedDataCopyWith<_OnGetSingleFeedData> get copyWith =>
      __$OnGetSingleFeedDataCopyWithImpl<_OnGetSingleFeedData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult failOrSuccessGetData(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult failOrSuccessGetDataBottom(
            Option<Either<FeedFailure, List<Feed>>> responseOptions,
            bool isLoading),
    @required
        TResult onGetHomeMenuList(
            Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
            bool isLoading),
    @required
        TResult onGetSingleFeedData(
            Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return onGetSingleFeedData(singleData, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failOrSuccessGetData(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult failOrSuccessGetDataBottom(
        Option<Either<FeedFailure, List<Feed>>> responseOptions,
        bool isLoading),
    TResult onGetHomeMenuList(
        Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
        bool isLoading),
    TResult onGetSingleFeedData(
        Option<Either<FeedFailure, Feed>> singleData, bool isLoading),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetSingleFeedData != null) {
      return onGetSingleFeedData(singleData, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    @required
        TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    @required TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    @required TResult onGetSingleFeedData(_OnGetSingleFeedData value),
  }) {
    assert(initial != null);
    assert(failOrSuccessGetData != null);
    assert(failOrSuccessGetDataBottom != null);
    assert(onGetHomeMenuList != null);
    assert(onGetSingleFeedData != null);
    return onGetSingleFeedData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failOrSuccessGetData(_FailOrSuccessGetData value),
    TResult failOrSuccessGetDataBottom(_FailOrSuccessGetDataBottom value),
    TResult onGetHomeMenuList(_OnGetHomeMenuList value),
    TResult onGetSingleFeedData(_OnGetSingleFeedData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetSingleFeedData != null) {
      return onGetSingleFeedData(this);
    }
    return orElse();
  }
}

abstract class _OnGetSingleFeedData implements FeedHomeState {
  const factory _OnGetSingleFeedData(
      {@required Option<Either<FeedFailure, Feed>> singleData,
      @required bool isLoading}) = _$_OnGetSingleFeedData;

  Option<Either<FeedFailure, Feed>> get singleData;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$OnGetSingleFeedDataCopyWith<_OnGetSingleFeedData> get copyWith;
}

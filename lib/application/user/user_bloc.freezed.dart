// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _ChangeProfilePhoto changeProfilePhoto(String file) {
    return _ChangeProfilePhoto(
      file,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
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
    return 'UserEvent.started()';
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
    @required TResult changeProfilePhoto(String file),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file),
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
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ChangeProfilePhotoCopyWith<$Res> {
  factory _$ChangeProfilePhotoCopyWith(
          _ChangeProfilePhoto value, $Res Function(_ChangeProfilePhoto) then) =
      __$ChangeProfilePhotoCopyWithImpl<$Res>;
  $Res call({String file});
}

/// @nodoc
class __$ChangeProfilePhotoCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$ChangeProfilePhotoCopyWith<$Res> {
  __$ChangeProfilePhotoCopyWithImpl(
      _ChangeProfilePhoto _value, $Res Function(_ChangeProfilePhoto) _then)
      : super(_value, (v) => _then(v as _ChangeProfilePhoto));

  @override
  _ChangeProfilePhoto get _value => super._value as _ChangeProfilePhoto;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(_ChangeProfilePhoto(
      file == freezed ? _value.file : file as String,
    ));
  }
}

/// @nodoc
class _$_ChangeProfilePhoto implements _ChangeProfilePhoto {
  const _$_ChangeProfilePhoto(this.file) : assert(file != null);

  @override
  final String file;

  @override
  String toString() {
    return 'UserEvent.changeProfilePhoto(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeProfilePhoto &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$ChangeProfilePhotoCopyWith<_ChangeProfilePhoto> get copyWith =>
      __$ChangeProfilePhotoCopyWithImpl<_ChangeProfilePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    return changeProfilePhoto(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeProfilePhoto != null) {
      return changeProfilePhoto(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    return changeProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeProfilePhoto != null) {
      return changeProfilePhoto(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfilePhoto implements UserEvent {
  const factory _ChangeProfilePhoto(String file) = _$_ChangeProfilePhoto;

  String get file;
  @JsonKey(ignore: true)
  _$ChangeProfilePhotoCopyWith<_ChangeProfilePhoto> get copyWith;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UploadProfilePhoto uploadProfilePhoto(
      Option<Either<GeneralFailure, String>> response, bool isLoading) {
    return _UploadProfilePhoto(
      response,
      isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
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
    return 'UserState.initial()';
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
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  }) {
    assert(initial != null);
    assert(uploadProfilePhoto != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
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
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  }) {
    assert(initial != null);
    assert(uploadProfilePhoto != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UploadProfilePhotoCopyWith<$Res> {
  factory _$UploadProfilePhotoCopyWith(
          _UploadProfilePhoto value, $Res Function(_UploadProfilePhoto) then) =
      __$UploadProfilePhotoCopyWithImpl<$Res>;
  $Res call({Option<Either<GeneralFailure, String>> response, bool isLoading});
}

/// @nodoc
class __$UploadProfilePhotoCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$UploadProfilePhotoCopyWith<$Res> {
  __$UploadProfilePhotoCopyWithImpl(
      _UploadProfilePhoto _value, $Res Function(_UploadProfilePhoto) _then)
      : super(_value, (v) => _then(v as _UploadProfilePhoto));

  @override
  _UploadProfilePhoto get _value => super._value as _UploadProfilePhoto;

  @override
  $Res call({
    Object response = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_UploadProfilePhoto(
      response == freezed
          ? _value.response
          : response as Option<Either<GeneralFailure, String>>,
      isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_UploadProfilePhoto implements _UploadProfilePhoto {
  const _$_UploadProfilePhoto(this.response, this.isLoading)
      : assert(response != null),
        assert(isLoading != null);

  @override
  final Option<Either<GeneralFailure, String>> response;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserState.uploadProfilePhoto(response: $response, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadProfilePhoto &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$UploadProfilePhotoCopyWith<_UploadProfilePhoto> get copyWith =>
      __$UploadProfilePhotoCopyWithImpl<_UploadProfilePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  }) {
    assert(initial != null);
    assert(uploadProfilePhoto != null);
    return uploadProfilePhoto(response, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadProfilePhoto != null) {
      return uploadProfilePhoto(response, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  }) {
    assert(initial != null);
    assert(uploadProfilePhoto != null);
    return uploadProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadProfilePhoto != null) {
      return uploadProfilePhoto(this);
    }
    return orElse();
  }
}

abstract class _UploadProfilePhoto implements UserState {
  const factory _UploadProfilePhoto(
          Option<Either<GeneralFailure, String>> response, bool isLoading) =
      _$_UploadProfilePhoto;

  Option<Either<GeneralFailure, String>> get response;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$UploadProfilePhotoCopyWith<_UploadProfilePhoto> get copyWith;
}

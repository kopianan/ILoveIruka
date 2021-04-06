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

// ignore: unused_element
  _ChangePassword changePassword(PasswordDataModel password) {
    return _ChangePassword(
      password,
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
    @required TResult changePassword(PasswordDataModel password),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file),
    TResult changePassword(PasswordDataModel password),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult changePassword(_ChangePassword value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult changePassword(_ChangePassword value),
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
    @required TResult changePassword(PasswordDataModel password),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(changePassword != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file),
    TResult changePassword(PasswordDataModel password),
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
    @required TResult changePassword(_ChangePassword value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(changePassword != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult changePassword(_ChangePassword value),
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
    @required TResult changePassword(PasswordDataModel password),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(changePassword != null);
    return changeProfilePhoto(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file),
    TResult changePassword(PasswordDataModel password),
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
    @required TResult changePassword(_ChangePassword value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(changePassword != null);
    return changeProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult changePassword(_ChangePassword value),
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
abstract class _$ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  $Res call({PasswordDataModel password});
}

/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_ChangePassword(
      password == freezed ? _value.password : password as PasswordDataModel,
    ));
  }
}

/// @nodoc
class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.password) : assert(password != null);

  @override
  final PasswordDataModel password;

  @override
  String toString() {
    return 'UserEvent.changePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file),
    @required TResult changePassword(PasswordDataModel password),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(changePassword != null);
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file),
    TResult changePassword(PasswordDataModel password),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult changePassword(_ChangePassword value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(changePassword != null);
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult changePassword(_ChangePassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements UserEvent {
  const factory _ChangePassword(PasswordDataModel password) = _$_ChangePassword;

  PasswordDataModel get password;
  @JsonKey(ignore: true)
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Error error(GeneralFailure failure) {
    return _Error(
      failure,
    );
  }

// ignore: unused_element
  _OnChangePassword onChangePassword(String success) {
    return _OnChangePassword(
      success,
    );
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
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
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
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
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
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
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
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
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
    return 'UserState.loading()';
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
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
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
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({GeneralFailure failure});

  $GeneralFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed ? _value.failure : failure as GeneralFailure,
    ));
  }

  @override
  $GeneralFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $GeneralFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.failure) : assert(failure != null);

  @override
  final GeneralFailure failure;

  @override
  String toString() {
    return 'UserState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserState {
  const factory _Error(GeneralFailure failure) = _$_Error;

  GeneralFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnChangePasswordCopyWith<$Res> {
  factory _$OnChangePasswordCopyWith(
          _OnChangePassword value, $Res Function(_OnChangePassword) then) =
      __$OnChangePasswordCopyWithImpl<$Res>;
  $Res call({String success});
}

/// @nodoc
class __$OnChangePasswordCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$OnChangePasswordCopyWith<$Res> {
  __$OnChangePasswordCopyWithImpl(
      _OnChangePassword _value, $Res Function(_OnChangePassword) _then)
      : super(_value, (v) => _then(v as _OnChangePassword));

  @override
  _OnChangePassword get _value => super._value as _OnChangePassword;

  @override
  $Res call({
    Object success = freezed,
  }) {
    return _then(_OnChangePassword(
      success == freezed ? _value.success : success as String,
    ));
  }
}

/// @nodoc
class _$_OnChangePassword implements _OnChangePassword {
  const _$_OnChangePassword(this.success) : assert(success != null);

  @override
  final String success;

  @override
  String toString() {
    return 'UserState.onChangePassword(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnChangePassword &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$OnChangePasswordCopyWith<_OnChangePassword> get copyWith =>
      __$OnChangePasswordCopyWithImpl<_OnChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return onChangePassword(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangePassword != null) {
      return onChangePassword(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return onChangePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangePassword != null) {
      return onChangePassword(this);
    }
    return orElse();
  }
}

abstract class _OnChangePassword implements UserState {
  const factory _OnChangePassword(String success) = _$_OnChangePassword;

  String get success;
  @JsonKey(ignore: true)
  _$OnChangePasswordCopyWith<_OnChangePassword> get copyWith;
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
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return uploadProfilePhoto(response, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
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
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    return uploadProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
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

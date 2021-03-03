// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _LoginWithEmail loginWithEmail(String username, String password) {
    return _LoginWithEmail(
      username,
      password,
    );
  }

// ignore: unused_element
  _RegisterWithEmail registerWithEmail(SignUpRequest request) {
    return _RegisterWithEmail(
      request,
    );
  }

// ignore: unused_element
  _GetUserRoleList getUserRoleList() {
    return _GetUserRoleList();
  }

// ignore: unused_element
  _UpdateCustomer updateCustomer({UpdateCustomerData data, File image}) {
    return _UpdateCustomer(
      data: data,
      image: image,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(String username, String password),
    @required TResult registerWithEmail(SignUpRequest request),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(String username, String password),
    TResult registerWithEmail(SignUpRequest request),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(_LoginWithEmail value),
    @required TResult registerWithEmail(_RegisterWithEmail value),
    @required TResult getUserRoleList(_GetUserRoleList value),
    @required TResult updateCustomer(_UpdateCustomer value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$LoginWithEmailCopyWith<$Res> {
  factory _$LoginWithEmailCopyWith(
          _LoginWithEmail value, $Res Function(_LoginWithEmail) then) =
      __$LoginWithEmailCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class __$LoginWithEmailCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginWithEmailCopyWith<$Res> {
  __$LoginWithEmailCopyWithImpl(
      _LoginWithEmail _value, $Res Function(_LoginWithEmail) _then)
      : super(_value, (v) => _then(v as _LoginWithEmail));

  @override
  _LoginWithEmail get _value => super._value as _LoginWithEmail;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginWithEmail(
      username == freezed ? _value.username : username as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_LoginWithEmail implements _LoginWithEmail {
  _$_LoginWithEmail(this.username, this.password)
      : assert(username != null),
        assert(password != null);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmail(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginWithEmail &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginWithEmailCopyWith<_LoginWithEmail> get copyWith =>
      __$LoginWithEmailCopyWithImpl<_LoginWithEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(String username, String password),
    @required TResult registerWithEmail(SignUpRequest request),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return loginWithEmail(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(String username, String password),
    TResult registerWithEmail(SignUpRequest request),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(_LoginWithEmail value),
    @required TResult registerWithEmail(_RegisterWithEmail value),
    @required TResult getUserRoleList(_GetUserRoleList value),
    @required TResult updateCustomer(_UpdateCustomer value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmail implements AuthEvent {
  factory _LoginWithEmail(String username, String password) = _$_LoginWithEmail;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$LoginWithEmailCopyWith<_LoginWithEmail> get copyWith;
}

/// @nodoc
abstract class _$RegisterWithEmailCopyWith<$Res> {
  factory _$RegisterWithEmailCopyWith(
          _RegisterWithEmail value, $Res Function(_RegisterWithEmail) then) =
      __$RegisterWithEmailCopyWithImpl<$Res>;
  $Res call({SignUpRequest request});

  $SignUpRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$RegisterWithEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailCopyWith<$Res> {
  __$RegisterWithEmailCopyWithImpl(
      _RegisterWithEmail _value, $Res Function(_RegisterWithEmail) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmail));

  @override
  _RegisterWithEmail get _value => super._value as _RegisterWithEmail;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(_RegisterWithEmail(
      request == freezed ? _value.request : request as SignUpRequest,
    ));
  }

  @override
  $SignUpRequestCopyWith<$Res> get request {
    if (_value.request == null) {
      return null;
    }
    return $SignUpRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
class _$_RegisterWithEmail implements _RegisterWithEmail {
  _$_RegisterWithEmail(this.request) : assert(request != null);

  @override
  final SignUpRequest request;

  @override
  String toString() {
    return 'AuthEvent.registerWithEmail(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterWithEmail &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$RegisterWithEmailCopyWith<_RegisterWithEmail> get copyWith =>
      __$RegisterWithEmailCopyWithImpl<_RegisterWithEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(String username, String password),
    @required TResult registerWithEmail(SignUpRequest request),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return registerWithEmail(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(String username, String password),
    TResult registerWithEmail(SignUpRequest request),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmail != null) {
      return registerWithEmail(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(_LoginWithEmail value),
    @required TResult registerWithEmail(_RegisterWithEmail value),
    @required TResult getUserRoleList(_GetUserRoleList value),
    @required TResult updateCustomer(_UpdateCustomer value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return registerWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmail != null) {
      return registerWithEmail(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmail implements AuthEvent {
  factory _RegisterWithEmail(SignUpRequest request) = _$_RegisterWithEmail;

  SignUpRequest get request;
  @JsonKey(ignore: true)
  _$RegisterWithEmailCopyWith<_RegisterWithEmail> get copyWith;
}

/// @nodoc
abstract class _$GetUserRoleListCopyWith<$Res> {
  factory _$GetUserRoleListCopyWith(
          _GetUserRoleList value, $Res Function(_GetUserRoleList) then) =
      __$GetUserRoleListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetUserRoleListCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$GetUserRoleListCopyWith<$Res> {
  __$GetUserRoleListCopyWithImpl(
      _GetUserRoleList _value, $Res Function(_GetUserRoleList) _then)
      : super(_value, (v) => _then(v as _GetUserRoleList));

  @override
  _GetUserRoleList get _value => super._value as _GetUserRoleList;
}

/// @nodoc
class _$_GetUserRoleList implements _GetUserRoleList {
  _$_GetUserRoleList();

  @override
  String toString() {
    return 'AuthEvent.getUserRoleList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetUserRoleList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(String username, String password),
    @required TResult registerWithEmail(SignUpRequest request),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return getUserRoleList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(String username, String password),
    TResult registerWithEmail(SignUpRequest request),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserRoleList != null) {
      return getUserRoleList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(_LoginWithEmail value),
    @required TResult registerWithEmail(_RegisterWithEmail value),
    @required TResult getUserRoleList(_GetUserRoleList value),
    @required TResult updateCustomer(_UpdateCustomer value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return getUserRoleList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserRoleList != null) {
      return getUserRoleList(this);
    }
    return orElse();
  }
}

abstract class _GetUserRoleList implements AuthEvent {
  factory _GetUserRoleList() = _$_GetUserRoleList;
}

/// @nodoc
abstract class _$UpdateCustomerCopyWith<$Res> {
  factory _$UpdateCustomerCopyWith(
          _UpdateCustomer value, $Res Function(_UpdateCustomer) then) =
      __$UpdateCustomerCopyWithImpl<$Res>;
  $Res call({UpdateCustomerData data, File image});
}

/// @nodoc
class __$UpdateCustomerCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$UpdateCustomerCopyWith<$Res> {
  __$UpdateCustomerCopyWithImpl(
      _UpdateCustomer _value, $Res Function(_UpdateCustomer) _then)
      : super(_value, (v) => _then(v as _UpdateCustomer));

  @override
  _UpdateCustomer get _value => super._value as _UpdateCustomer;

  @override
  $Res call({
    Object data = freezed,
    Object image = freezed,
  }) {
    return _then(_UpdateCustomer(
      data: data == freezed ? _value.data : data as UpdateCustomerData,
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
class _$_UpdateCustomer implements _UpdateCustomer {
  _$_UpdateCustomer({this.data, this.image});

  @override
  final UpdateCustomerData data;
  @override
  final File image;

  @override
  String toString() {
    return 'AuthEvent.updateCustomer(data: $data, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCustomer &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$UpdateCustomerCopyWith<_UpdateCustomer> get copyWith =>
      __$UpdateCustomerCopyWithImpl<_UpdateCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(String username, String password),
    @required TResult registerWithEmail(SignUpRequest request),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return updateCustomer(data, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(String username, String password),
    TResult registerWithEmail(SignUpRequest request),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateCustomer != null) {
      return updateCustomer(data, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(_LoginWithEmail value),
    @required TResult registerWithEmail(_RegisterWithEmail value),
    @required TResult getUserRoleList(_GetUserRoleList value),
    @required TResult updateCustomer(_UpdateCustomer value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return updateCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateCustomer != null) {
      return updateCustomer(this);
    }
    return orElse();
  }
}

abstract class _UpdateCustomer implements AuthEvent {
  factory _UpdateCustomer({UpdateCustomerData data, File image}) =
      _$_UpdateCustomer;

  UpdateCustomerData get data;
  File get image;
  @JsonKey(ignore: true)
  _$UpdateCustomerCopyWith<_UpdateCustomer> get copyWith;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _OnProgreess onProgress() {
    return _OnProgreess();
  }

// ignore: unused_element
  _ChangeAvailability changeAvailability(
      Option<Either<AuthFailure, Unit>> availabilityOption) {
    return _ChangeAvailability(
      availabilityOption,
    );
  }

// ignore: unused_element
  _OnRegisterUser onRegisterUser(
      {@required bool isLoading,
      @required Option<Either<AuthFailure, UserDataModel>> userOption}) {
    return _OnRegisterUser(
      isLoading: isLoading,
      userOption: userOption,
    );
  }

// ignore: unused_element
  _OnGetUserRoleList onGetUserRoleList(
      {@required bool isLoading,
      @required Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions}) {
    return _OnGetUserRoleList(
      isLoading: isLoading,
      roleOptions: roleOptions,
    );
  }

// ignore: unused_element
  _OnLoginOption onLoginOption(bool isLoading,
      Option<Either<AuthFailure, UserDataModel>> onLoginOption) {
    return _OnLoginOption(
      isLoading,
      onLoginOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult onRegisterUser(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> userOption),
    @required
        TResult onGetUserRoleList(bool isLoading,
            Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    @required
        TResult onLoginOption(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> onLoginOption),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult onRegisterUser(
        bool isLoading, Option<Either<AuthFailure, UserDataModel>> userOption),
    TResult onGetUserRoleList(bool isLoading,
        Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    TResult onLoginOption(bool isLoading,
        Option<Either<AuthFailure, UserDataModel>> onLoginOption),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult onRegisterUser(_OnRegisterUser value),
    @required TResult onGetUserRoleList(_OnGetUserRoleList value),
    @required TResult onLoginOption(_OnLoginOption value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult onRegisterUser(_OnRegisterUser value),
    TResult onGetUserRoleList(_OnGetUserRoleList value),
    TResult onLoginOption(_OnLoginOption value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult onRegisterUser(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> userOption),
    @required
        TResult onGetUserRoleList(bool isLoading,
            Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    @required
        TResult onLoginOption(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> onLoginOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult onRegisterUser(
        bool isLoading, Option<Either<AuthFailure, UserDataModel>> userOption),
    TResult onGetUserRoleList(bool isLoading,
        Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    TResult onLoginOption(bool isLoading,
        Option<Either<AuthFailure, UserDataModel>> onLoginOption),
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
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult onRegisterUser(_OnRegisterUser value),
    @required TResult onGetUserRoleList(_OnGetUserRoleList value),
    @required TResult onLoginOption(_OnLoginOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult onRegisterUser(_OnRegisterUser value),
    TResult onGetUserRoleList(_OnGetUserRoleList value),
    TResult onLoginOption(_OnLoginOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OnProgreessCopyWith<$Res> {
  factory _$OnProgreessCopyWith(
          _OnProgreess value, $Res Function(_OnProgreess) then) =
      __$OnProgreessCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnProgreessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnProgreessCopyWith<$Res> {
  __$OnProgreessCopyWithImpl(
      _OnProgreess _value, $Res Function(_OnProgreess) _then)
      : super(_value, (v) => _then(v as _OnProgreess));

  @override
  _OnProgreess get _value => super._value as _OnProgreess;
}

/// @nodoc
class _$_OnProgreess implements _OnProgreess {
  _$_OnProgreess();

  @override
  String toString() {
    return 'AuthState.onProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnProgreess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult onRegisterUser(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> userOption),
    @required
        TResult onGetUserRoleList(bool isLoading,
            Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    @required
        TResult onLoginOption(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> onLoginOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return onProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult onRegisterUser(
        bool isLoading, Option<Either<AuthFailure, UserDataModel>> userOption),
    TResult onGetUserRoleList(bool isLoading,
        Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    TResult onLoginOption(bool isLoading,
        Option<Either<AuthFailure, UserDataModel>> onLoginOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onProgress != null) {
      return onProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult onRegisterUser(_OnRegisterUser value),
    @required TResult onGetUserRoleList(_OnGetUserRoleList value),
    @required TResult onLoginOption(_OnLoginOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return onProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult onRegisterUser(_OnRegisterUser value),
    TResult onGetUserRoleList(_OnGetUserRoleList value),
    TResult onLoginOption(_OnLoginOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onProgress != null) {
      return onProgress(this);
    }
    return orElse();
  }
}

abstract class _OnProgreess implements AuthState {
  factory _OnProgreess() = _$_OnProgreess;
}

/// @nodoc
abstract class _$ChangeAvailabilityCopyWith<$Res> {
  factory _$ChangeAvailabilityCopyWith(
          _ChangeAvailability value, $Res Function(_ChangeAvailability) then) =
      __$ChangeAvailabilityCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, Unit>> availabilityOption});
}

/// @nodoc
class __$ChangeAvailabilityCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$ChangeAvailabilityCopyWith<$Res> {
  __$ChangeAvailabilityCopyWithImpl(
      _ChangeAvailability _value, $Res Function(_ChangeAvailability) _then)
      : super(_value, (v) => _then(v as _ChangeAvailability));

  @override
  _ChangeAvailability get _value => super._value as _ChangeAvailability;

  @override
  $Res call({
    Object availabilityOption = freezed,
  }) {
    return _then(_ChangeAvailability(
      availabilityOption == freezed
          ? _value.availabilityOption
          : availabilityOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ChangeAvailability implements _ChangeAvailability {
  _$_ChangeAvailability(this.availabilityOption)
      : assert(availabilityOption != null);

  @override
  final Option<Either<AuthFailure, Unit>> availabilityOption;

  @override
  String toString() {
    return 'AuthState.changeAvailability(availabilityOption: $availabilityOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAvailability &&
            (identical(other.availabilityOption, availabilityOption) ||
                const DeepCollectionEquality()
                    .equals(other.availabilityOption, availabilityOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(availabilityOption);

  @JsonKey(ignore: true)
  @override
  _$ChangeAvailabilityCopyWith<_ChangeAvailability> get copyWith =>
      __$ChangeAvailabilityCopyWithImpl<_ChangeAvailability>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult onRegisterUser(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> userOption),
    @required
        TResult onGetUserRoleList(bool isLoading,
            Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    @required
        TResult onLoginOption(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> onLoginOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return changeAvailability(availabilityOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult onRegisterUser(
        bool isLoading, Option<Either<AuthFailure, UserDataModel>> userOption),
    TResult onGetUserRoleList(bool isLoading,
        Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    TResult onLoginOption(bool isLoading,
        Option<Either<AuthFailure, UserDataModel>> onLoginOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAvailability != null) {
      return changeAvailability(availabilityOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult onRegisterUser(_OnRegisterUser value),
    @required TResult onGetUserRoleList(_OnGetUserRoleList value),
    @required TResult onLoginOption(_OnLoginOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return changeAvailability(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult onRegisterUser(_OnRegisterUser value),
    TResult onGetUserRoleList(_OnGetUserRoleList value),
    TResult onLoginOption(_OnLoginOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAvailability != null) {
      return changeAvailability(this);
    }
    return orElse();
  }
}

abstract class _ChangeAvailability implements AuthState {
  factory _ChangeAvailability(
          Option<Either<AuthFailure, Unit>> availabilityOption) =
      _$_ChangeAvailability;

  Option<Either<AuthFailure, Unit>> get availabilityOption;
  @JsonKey(ignore: true)
  _$ChangeAvailabilityCopyWith<_ChangeAvailability> get copyWith;
}

/// @nodoc
abstract class _$OnRegisterUserCopyWith<$Res> {
  factory _$OnRegisterUserCopyWith(
          _OnRegisterUser value, $Res Function(_OnRegisterUser) then) =
      __$OnRegisterUserCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, Option<Either<AuthFailure, UserDataModel>> userOption});
}

/// @nodoc
class __$OnRegisterUserCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnRegisterUserCopyWith<$Res> {
  __$OnRegisterUserCopyWithImpl(
      _OnRegisterUser _value, $Res Function(_OnRegisterUser) _then)
      : super(_value, (v) => _then(v as _OnRegisterUser));

  @override
  _OnRegisterUser get _value => super._value as _OnRegisterUser;

  @override
  $Res call({
    Object isLoading = freezed,
    Object userOption = freezed,
  }) {
    return _then(_OnRegisterUser(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      userOption: userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<AuthFailure, UserDataModel>>,
    ));
  }
}

/// @nodoc
class _$_OnRegisterUser implements _OnRegisterUser {
  const _$_OnRegisterUser({@required this.isLoading, @required this.userOption})
      : assert(isLoading != null),
        assert(userOption != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<AuthFailure, UserDataModel>> userOption;

  @override
  String toString() {
    return 'AuthState.onRegisterUser(isLoading: $isLoading, userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnRegisterUser &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.userOption, userOption) ||
                const DeepCollectionEquality()
                    .equals(other.userOption, userOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(userOption);

  @JsonKey(ignore: true)
  @override
  _$OnRegisterUserCopyWith<_OnRegisterUser> get copyWith =>
      __$OnRegisterUserCopyWithImpl<_OnRegisterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult onRegisterUser(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> userOption),
    @required
        TResult onGetUserRoleList(bool isLoading,
            Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    @required
        TResult onLoginOption(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> onLoginOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return onRegisterUser(isLoading, userOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult onRegisterUser(
        bool isLoading, Option<Either<AuthFailure, UserDataModel>> userOption),
    TResult onGetUserRoleList(bool isLoading,
        Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    TResult onLoginOption(bool isLoading,
        Option<Either<AuthFailure, UserDataModel>> onLoginOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRegisterUser != null) {
      return onRegisterUser(isLoading, userOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult onRegisterUser(_OnRegisterUser value),
    @required TResult onGetUserRoleList(_OnGetUserRoleList value),
    @required TResult onLoginOption(_OnLoginOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return onRegisterUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult onRegisterUser(_OnRegisterUser value),
    TResult onGetUserRoleList(_OnGetUserRoleList value),
    TResult onLoginOption(_OnLoginOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRegisterUser != null) {
      return onRegisterUser(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterUser implements AuthState {
  const factory _OnRegisterUser(
          {@required bool isLoading,
          @required Option<Either<AuthFailure, UserDataModel>> userOption}) =
      _$_OnRegisterUser;

  bool get isLoading;
  Option<Either<AuthFailure, UserDataModel>> get userOption;
  @JsonKey(ignore: true)
  _$OnRegisterUserCopyWith<_OnRegisterUser> get copyWith;
}

/// @nodoc
abstract class _$OnGetUserRoleListCopyWith<$Res> {
  factory _$OnGetUserRoleListCopyWith(
          _OnGetUserRoleList value, $Res Function(_OnGetUserRoleList) then) =
      __$OnGetUserRoleListCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions});
}

/// @nodoc
class __$OnGetUserRoleListCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnGetUserRoleListCopyWith<$Res> {
  __$OnGetUserRoleListCopyWithImpl(
      _OnGetUserRoleList _value, $Res Function(_OnGetUserRoleList) _then)
      : super(_value, (v) => _then(v as _OnGetUserRoleList));

  @override
  _OnGetUserRoleList get _value => super._value as _OnGetUserRoleList;

  @override
  $Res call({
    Object isLoading = freezed,
    Object roleOptions = freezed,
  }) {
    return _then(_OnGetUserRoleList(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      roleOptions: roleOptions == freezed
          ? _value.roleOptions
          : roleOptions as Option<Either<AuthFailure, List<RoleDataModel>>>,
    ));
  }
}

/// @nodoc
class _$_OnGetUserRoleList implements _OnGetUserRoleList {
  const _$_OnGetUserRoleList(
      {@required this.isLoading, @required this.roleOptions})
      : assert(isLoading != null),
        assert(roleOptions != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions;

  @override
  String toString() {
    return 'AuthState.onGetUserRoleList(isLoading: $isLoading, roleOptions: $roleOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetUserRoleList &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.roleOptions, roleOptions) ||
                const DeepCollectionEquality()
                    .equals(other.roleOptions, roleOptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(roleOptions);

  @JsonKey(ignore: true)
  @override
  _$OnGetUserRoleListCopyWith<_OnGetUserRoleList> get copyWith =>
      __$OnGetUserRoleListCopyWithImpl<_OnGetUserRoleList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult onRegisterUser(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> userOption),
    @required
        TResult onGetUserRoleList(bool isLoading,
            Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    @required
        TResult onLoginOption(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> onLoginOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return onGetUserRoleList(isLoading, roleOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult onRegisterUser(
        bool isLoading, Option<Either<AuthFailure, UserDataModel>> userOption),
    TResult onGetUserRoleList(bool isLoading,
        Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    TResult onLoginOption(bool isLoading,
        Option<Either<AuthFailure, UserDataModel>> onLoginOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetUserRoleList != null) {
      return onGetUserRoleList(isLoading, roleOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult onRegisterUser(_OnRegisterUser value),
    @required TResult onGetUserRoleList(_OnGetUserRoleList value),
    @required TResult onLoginOption(_OnLoginOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return onGetUserRoleList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult onRegisterUser(_OnRegisterUser value),
    TResult onGetUserRoleList(_OnGetUserRoleList value),
    TResult onLoginOption(_OnLoginOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetUserRoleList != null) {
      return onGetUserRoleList(this);
    }
    return orElse();
  }
}

abstract class _OnGetUserRoleList implements AuthState {
  const factory _OnGetUserRoleList(
          {@required
              bool isLoading,
          @required
              Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions}) =
      _$_OnGetUserRoleList;

  bool get isLoading;
  Option<Either<AuthFailure, List<RoleDataModel>>> get roleOptions;
  @JsonKey(ignore: true)
  _$OnGetUserRoleListCopyWith<_OnGetUserRoleList> get copyWith;
}

/// @nodoc
abstract class _$OnLoginOptionCopyWith<$Res> {
  factory _$OnLoginOptionCopyWith(
          _OnLoginOption value, $Res Function(_OnLoginOption) then) =
      __$OnLoginOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<AuthFailure, UserDataModel>> onLoginOption});
}

/// @nodoc
class __$OnLoginOptionCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnLoginOptionCopyWith<$Res> {
  __$OnLoginOptionCopyWithImpl(
      _OnLoginOption _value, $Res Function(_OnLoginOption) _then)
      : super(_value, (v) => _then(v as _OnLoginOption));

  @override
  _OnLoginOption get _value => super._value as _OnLoginOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object onLoginOption = freezed,
  }) {
    return _then(_OnLoginOption(
      isLoading == freezed ? _value.isLoading : isLoading as bool,
      onLoginOption == freezed
          ? _value.onLoginOption
          : onLoginOption as Option<Either<AuthFailure, UserDataModel>>,
    ));
  }
}

/// @nodoc
class _$_OnLoginOption implements _OnLoginOption {
  const _$_OnLoginOption(this.isLoading, this.onLoginOption)
      : assert(isLoading != null),
        assert(onLoginOption != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<AuthFailure, UserDataModel>> onLoginOption;

  @override
  String toString() {
    return 'AuthState.onLoginOption(isLoading: $isLoading, onLoginOption: $onLoginOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnLoginOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.onLoginOption, onLoginOption) ||
                const DeepCollectionEquality()
                    .equals(other.onLoginOption, onLoginOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(onLoginOption);

  @JsonKey(ignore: true)
  @override
  _$OnLoginOptionCopyWith<_OnLoginOption> get copyWith =>
      __$OnLoginOptionCopyWithImpl<_OnLoginOption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult onRegisterUser(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> userOption),
    @required
        TResult onGetUserRoleList(bool isLoading,
            Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    @required
        TResult onLoginOption(bool isLoading,
            Option<Either<AuthFailure, UserDataModel>> onLoginOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return onLoginOption(isLoading, this.onLoginOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult onRegisterUser(
        bool isLoading, Option<Either<AuthFailure, UserDataModel>> userOption),
    TResult onGetUserRoleList(bool isLoading,
        Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions),
    TResult onLoginOption(bool isLoading,
        Option<Either<AuthFailure, UserDataModel>> onLoginOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onLoginOption != null) {
      return onLoginOption(isLoading, this.onLoginOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult onRegisterUser(_OnRegisterUser value),
    @required TResult onGetUserRoleList(_OnGetUserRoleList value),
    @required TResult onLoginOption(_OnLoginOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(onRegisterUser != null);
    assert(onGetUserRoleList != null);
    assert(onLoginOption != null);
    return onLoginOption(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult onRegisterUser(_OnRegisterUser value),
    TResult onGetUserRoleList(_OnGetUserRoleList value),
    TResult onLoginOption(_OnLoginOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onLoginOption != null) {
      return onLoginOption(this);
    }
    return orElse();
  }
}

abstract class _OnLoginOption implements AuthState {
  const factory _OnLoginOption(bool isLoading,
          Option<Either<AuthFailure, UserDataModel>> onLoginOption) =
      _$_OnLoginOption;

  bool get isLoading;
  Option<Either<AuthFailure, UserDataModel>> get onLoginOption;
  @JsonKey(ignore: true)
  _$OnLoginOptionCopyWith<_OnLoginOption> get copyWith;
}

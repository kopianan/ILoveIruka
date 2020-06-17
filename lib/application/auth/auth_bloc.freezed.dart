// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _LoginWithEmail loginWithEmail(LoginRequestData loginRequestData) {
    return _LoginWithEmail(
      loginRequestData,
    );
  }

  _RegisterWithEmail registerWithEmail(RegisterData registerData) {
    return _RegisterWithEmail(
      registerData,
    );
  }

  _GetUserRoleList getUserRoleList() {
    return _GetUserRoleList();
  }

  _UpdateCustomer updateCustomer({UpdateCustomerData data}) {
    return _UpdateCustomer(
      data: data,
    );
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginWithEmail(LoginRequestData loginRequestData),
    @required Result registerWithEmail(RegisterData registerData),
    @required Result getUserRoleList(),
    @required Result updateCustomer(UpdateCustomerData data),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginWithEmail(LoginRequestData loginRequestData),
    Result registerWithEmail(RegisterData registerData),
    Result getUserRoleList(),
    Result updateCustomer(UpdateCustomerData data),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginWithEmail(_LoginWithEmail value),
    @required Result registerWithEmail(_RegisterWithEmail value),
    @required Result getUserRoleList(_GetUserRoleList value),
    @required Result updateCustomer(_UpdateCustomer value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginWithEmail(_LoginWithEmail value),
    Result registerWithEmail(_RegisterWithEmail value),
    Result getUserRoleList(_GetUserRoleList value),
    Result updateCustomer(_UpdateCustomer value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class _$LoginWithEmailCopyWith<$Res> {
  factory _$LoginWithEmailCopyWith(
          _LoginWithEmail value, $Res Function(_LoginWithEmail) then) =
      __$LoginWithEmailCopyWithImpl<$Res>;
  $Res call({LoginRequestData loginRequestData});
}

class __$LoginWithEmailCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginWithEmailCopyWith<$Res> {
  __$LoginWithEmailCopyWithImpl(
      _LoginWithEmail _value, $Res Function(_LoginWithEmail) _then)
      : super(_value, (v) => _then(v as _LoginWithEmail));

  @override
  _LoginWithEmail get _value => super._value as _LoginWithEmail;

  @override
  $Res call({
    Object loginRequestData = freezed,
  }) {
    return _then(_LoginWithEmail(
      loginRequestData == freezed
          ? _value.loginRequestData
          : loginRequestData as LoginRequestData,
    ));
  }
}

class _$_LoginWithEmail implements _LoginWithEmail {
  _$_LoginWithEmail(this.loginRequestData) : assert(loginRequestData != null);

  @override
  final LoginRequestData loginRequestData;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmail(loginRequestData: $loginRequestData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginWithEmail &&
            (identical(other.loginRequestData, loginRequestData) ||
                const DeepCollectionEquality()
                    .equals(other.loginRequestData, loginRequestData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loginRequestData);

  @override
  _$LoginWithEmailCopyWith<_LoginWithEmail> get copyWith =>
      __$LoginWithEmailCopyWithImpl<_LoginWithEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginWithEmail(LoginRequestData loginRequestData),
    @required Result registerWithEmail(RegisterData registerData),
    @required Result getUserRoleList(),
    @required Result updateCustomer(UpdateCustomerData data),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return loginWithEmail(loginRequestData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginWithEmail(LoginRequestData loginRequestData),
    Result registerWithEmail(RegisterData registerData),
    Result getUserRoleList(),
    Result updateCustomer(UpdateCustomerData data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail(loginRequestData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginWithEmail(_LoginWithEmail value),
    @required Result registerWithEmail(_RegisterWithEmail value),
    @required Result getUserRoleList(_GetUserRoleList value),
    @required Result updateCustomer(_UpdateCustomer value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginWithEmail(_LoginWithEmail value),
    Result registerWithEmail(_RegisterWithEmail value),
    Result getUserRoleList(_GetUserRoleList value),
    Result updateCustomer(_UpdateCustomer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmail implements AuthEvent {
  factory _LoginWithEmail(LoginRequestData loginRequestData) =
      _$_LoginWithEmail;

  LoginRequestData get loginRequestData;
  _$LoginWithEmailCopyWith<_LoginWithEmail> get copyWith;
}

abstract class _$RegisterWithEmailCopyWith<$Res> {
  factory _$RegisterWithEmailCopyWith(
          _RegisterWithEmail value, $Res Function(_RegisterWithEmail) then) =
      __$RegisterWithEmailCopyWithImpl<$Res>;
  $Res call({RegisterData registerData});

  $RegisterDataCopyWith<$Res> get registerData;
}

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
    Object registerData = freezed,
  }) {
    return _then(_RegisterWithEmail(
      registerData == freezed
          ? _value.registerData
          : registerData as RegisterData,
    ));
  }

  @override
  $RegisterDataCopyWith<$Res> get registerData {
    if (_value.registerData == null) {
      return null;
    }
    return $RegisterDataCopyWith<$Res>(_value.registerData, (value) {
      return _then(_value.copyWith(registerData: value));
    });
  }
}

class _$_RegisterWithEmail implements _RegisterWithEmail {
  _$_RegisterWithEmail(this.registerData) : assert(registerData != null);

  @override
  final RegisterData registerData;

  @override
  String toString() {
    return 'AuthEvent.registerWithEmail(registerData: $registerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterWithEmail &&
            (identical(other.registerData, registerData) ||
                const DeepCollectionEquality()
                    .equals(other.registerData, registerData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(registerData);

  @override
  _$RegisterWithEmailCopyWith<_RegisterWithEmail> get copyWith =>
      __$RegisterWithEmailCopyWithImpl<_RegisterWithEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginWithEmail(LoginRequestData loginRequestData),
    @required Result registerWithEmail(RegisterData registerData),
    @required Result getUserRoleList(),
    @required Result updateCustomer(UpdateCustomerData data),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return registerWithEmail(registerData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginWithEmail(LoginRequestData loginRequestData),
    Result registerWithEmail(RegisterData registerData),
    Result getUserRoleList(),
    Result updateCustomer(UpdateCustomerData data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmail != null) {
      return registerWithEmail(registerData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginWithEmail(_LoginWithEmail value),
    @required Result registerWithEmail(_RegisterWithEmail value),
    @required Result getUserRoleList(_GetUserRoleList value),
    @required Result updateCustomer(_UpdateCustomer value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return registerWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginWithEmail(_LoginWithEmail value),
    Result registerWithEmail(_RegisterWithEmail value),
    Result getUserRoleList(_GetUserRoleList value),
    Result updateCustomer(_UpdateCustomer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmail != null) {
      return registerWithEmail(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmail implements AuthEvent {
  factory _RegisterWithEmail(RegisterData registerData) = _$_RegisterWithEmail;

  RegisterData get registerData;
  _$RegisterWithEmailCopyWith<_RegisterWithEmail> get copyWith;
}

abstract class _$GetUserRoleListCopyWith<$Res> {
  factory _$GetUserRoleListCopyWith(
          _GetUserRoleList value, $Res Function(_GetUserRoleList) then) =
      __$GetUserRoleListCopyWithImpl<$Res>;
}

class __$GetUserRoleListCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$GetUserRoleListCopyWith<$Res> {
  __$GetUserRoleListCopyWithImpl(
      _GetUserRoleList _value, $Res Function(_GetUserRoleList) _then)
      : super(_value, (v) => _then(v as _GetUserRoleList));

  @override
  _GetUserRoleList get _value => super._value as _GetUserRoleList;
}

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
  Result when<Result extends Object>({
    @required Result loginWithEmail(LoginRequestData loginRequestData),
    @required Result registerWithEmail(RegisterData registerData),
    @required Result getUserRoleList(),
    @required Result updateCustomer(UpdateCustomerData data),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return getUserRoleList();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginWithEmail(LoginRequestData loginRequestData),
    Result registerWithEmail(RegisterData registerData),
    Result getUserRoleList(),
    Result updateCustomer(UpdateCustomerData data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserRoleList != null) {
      return getUserRoleList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginWithEmail(_LoginWithEmail value),
    @required Result registerWithEmail(_RegisterWithEmail value),
    @required Result getUserRoleList(_GetUserRoleList value),
    @required Result updateCustomer(_UpdateCustomer value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return getUserRoleList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginWithEmail(_LoginWithEmail value),
    Result registerWithEmail(_RegisterWithEmail value),
    Result getUserRoleList(_GetUserRoleList value),
    Result updateCustomer(_UpdateCustomer value),
    @required Result orElse(),
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

abstract class _$UpdateCustomerCopyWith<$Res> {
  factory _$UpdateCustomerCopyWith(
          _UpdateCustomer value, $Res Function(_UpdateCustomer) then) =
      __$UpdateCustomerCopyWithImpl<$Res>;
  $Res call({UpdateCustomerData data});
}

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
  }) {
    return _then(_UpdateCustomer(
      data: data == freezed ? _value.data : data as UpdateCustomerData,
    ));
  }
}

class _$_UpdateCustomer implements _UpdateCustomer {
  _$_UpdateCustomer({this.data});

  @override
  final UpdateCustomerData data;

  @override
  String toString() {
    return 'AuthEvent.updateCustomer(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCustomer &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$UpdateCustomerCopyWith<_UpdateCustomer> get copyWith =>
      __$UpdateCustomerCopyWithImpl<_UpdateCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginWithEmail(LoginRequestData loginRequestData),
    @required Result registerWithEmail(RegisterData registerData),
    @required Result getUserRoleList(),
    @required Result updateCustomer(UpdateCustomerData data),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return updateCustomer(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginWithEmail(LoginRequestData loginRequestData),
    Result registerWithEmail(RegisterData registerData),
    Result getUserRoleList(),
    Result updateCustomer(UpdateCustomerData data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCustomer != null) {
      return updateCustomer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginWithEmail(_LoginWithEmail value),
    @required Result registerWithEmail(_RegisterWithEmail value),
    @required Result getUserRoleList(_GetUserRoleList value),
    @required Result updateCustomer(_UpdateCustomer value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    return updateCustomer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginWithEmail(_LoginWithEmail value),
    Result registerWithEmail(_RegisterWithEmail value),
    Result getUserRoleList(_GetUserRoleList value),
    Result updateCustomer(_UpdateCustomer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCustomer != null) {
      return updateCustomer(this);
    }
    return orElse();
  }
}

abstract class _UpdateCustomer implements AuthEvent {
  factory _UpdateCustomer({UpdateCustomerData data}) = _$_UpdateCustomer;

  UpdateCustomerData get data;
  _$UpdateCustomerCopyWith<_UpdateCustomer> get copyWith;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _OnProgreess onProgress() {
    return _OnProgreess();
  }

  _FailOrSuccessGetRole failOrSuccessGetRole(
      {Option<Either<AuthFailure, List<String>>> options, bool isLoading}) {
    return _FailOrSuccessGetRole(
      options: options,
      isLoading: isLoading,
    );
  }

  _FailOrSuccessOption failOrSuccessLoginOption(
      {@required Option<Either<AuthFailure, LoginData>> failOrSuccessOption}) {
    return _FailOrSuccessOption(
      failOrSuccessOption: failOrSuccessOption,
    );
  }

  _FailOrSuccessUpdateCustomerOption failOrSuccessUpdateCustomerOption(
      {@required Option<Either<AuthFailure, LoginData>> updateCustomerOption}) {
    return _FailOrSuccessUpdateCustomerOption(
      updateCustomerOption: updateCustomerOption,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result onProgress(),
    @required
        Result failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        Result failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        Result failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result onProgress(),
    Result failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    Result failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    Result failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result onProgress(_OnProgreess value),
    @required Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        Result failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result onProgress(_OnProgreess value),
    Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    Result failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result onProgress(),
    @required
        Result failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        Result failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        Result failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result onProgress(),
    Result failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    Result failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    Result failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result onProgress(_OnProgreess value),
    @required Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        Result failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result onProgress(_OnProgreess value),
    Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    Result failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required Result orElse(),
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

abstract class _$OnProgreessCopyWith<$Res> {
  factory _$OnProgreessCopyWith(
          _OnProgreess value, $Res Function(_OnProgreess) then) =
      __$OnProgreessCopyWithImpl<$Res>;
}

class __$OnProgreessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnProgreessCopyWith<$Res> {
  __$OnProgreessCopyWithImpl(
      _OnProgreess _value, $Res Function(_OnProgreess) _then)
      : super(_value, (v) => _then(v as _OnProgreess));

  @override
  _OnProgreess get _value => super._value as _OnProgreess;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result onProgress(),
    @required
        Result failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        Result failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        Result failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return onProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result onProgress(),
    Result failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    Result failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    Result failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onProgress != null) {
      return onProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result onProgress(_OnProgreess value),
    @required Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        Result failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return onProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result onProgress(_OnProgreess value),
    Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    Result failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required Result orElse(),
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

abstract class _$FailOrSuccessGetRoleCopyWith<$Res> {
  factory _$FailOrSuccessGetRoleCopyWith(_FailOrSuccessGetRole value,
          $Res Function(_FailOrSuccessGetRole) then) =
      __$FailOrSuccessGetRoleCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<AuthFailure, List<String>>> options, bool isLoading});
}

class __$FailOrSuccessGetRoleCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$FailOrSuccessGetRoleCopyWith<$Res> {
  __$FailOrSuccessGetRoleCopyWithImpl(
      _FailOrSuccessGetRole _value, $Res Function(_FailOrSuccessGetRole) _then)
      : super(_value, (v) => _then(v as _FailOrSuccessGetRole));

  @override
  _FailOrSuccessGetRole get _value => super._value as _FailOrSuccessGetRole;

  @override
  $Res call({
    Object options = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FailOrSuccessGetRole(
      options: options == freezed
          ? _value.options
          : options as Option<Either<AuthFailure, List<String>>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

class _$_FailOrSuccessGetRole implements _FailOrSuccessGetRole {
  _$_FailOrSuccessGetRole({this.options, this.isLoading});

  @override
  final Option<Either<AuthFailure, List<String>>> options;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState.failOrSuccessGetRole(options: $options, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailOrSuccessGetRole &&
            (identical(other.options, options) ||
                const DeepCollectionEquality()
                    .equals(other.options, options)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$FailOrSuccessGetRoleCopyWith<_FailOrSuccessGetRole> get copyWith =>
      __$FailOrSuccessGetRoleCopyWithImpl<_FailOrSuccessGetRole>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result onProgress(),
    @required
        Result failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        Result failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        Result failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessGetRole(options, isLoading);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result onProgress(),
    Result failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    Result failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    Result failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessGetRole != null) {
      return failOrSuccessGetRole(options, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result onProgress(_OnProgreess value),
    @required Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        Result failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessGetRole(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result onProgress(_OnProgreess value),
    Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    Result failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessGetRole != null) {
      return failOrSuccessGetRole(this);
    }
    return orElse();
  }
}

abstract class _FailOrSuccessGetRole implements AuthState {
  factory _FailOrSuccessGetRole(
      {Option<Either<AuthFailure, List<String>>> options,
      bool isLoading}) = _$_FailOrSuccessGetRole;

  Option<Either<AuthFailure, List<String>>> get options;
  bool get isLoading;
  _$FailOrSuccessGetRoleCopyWith<_FailOrSuccessGetRole> get copyWith;
}

abstract class _$FailOrSuccessOptionCopyWith<$Res> {
  factory _$FailOrSuccessOptionCopyWith(_FailOrSuccessOption value,
          $Res Function(_FailOrSuccessOption) then) =
      __$FailOrSuccessOptionCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, LoginData>> failOrSuccessOption});
}

class __$FailOrSuccessOptionCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$FailOrSuccessOptionCopyWith<$Res> {
  __$FailOrSuccessOptionCopyWithImpl(
      _FailOrSuccessOption _value, $Res Function(_FailOrSuccessOption) _then)
      : super(_value, (v) => _then(v as _FailOrSuccessOption));

  @override
  _FailOrSuccessOption get _value => super._value as _FailOrSuccessOption;

  @override
  $Res call({
    Object failOrSuccessOption = freezed,
  }) {
    return _then(_FailOrSuccessOption(
      failOrSuccessOption: failOrSuccessOption == freezed
          ? _value.failOrSuccessOption
          : failOrSuccessOption as Option<Either<AuthFailure, LoginData>>,
    ));
  }
}

class _$_FailOrSuccessOption implements _FailOrSuccessOption {
  _$_FailOrSuccessOption({@required this.failOrSuccessOption})
      : assert(failOrSuccessOption != null);

  @override
  final Option<Either<AuthFailure, LoginData>> failOrSuccessOption;

  @override
  String toString() {
    return 'AuthState.failOrSuccessLoginOption(failOrSuccessOption: $failOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailOrSuccessOption &&
            (identical(other.failOrSuccessOption, failOrSuccessOption) ||
                const DeepCollectionEquality()
                    .equals(other.failOrSuccessOption, failOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failOrSuccessOption);

  @override
  _$FailOrSuccessOptionCopyWith<_FailOrSuccessOption> get copyWith =>
      __$FailOrSuccessOptionCopyWithImpl<_FailOrSuccessOption>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result onProgress(),
    @required
        Result failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        Result failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        Result failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessLoginOption(failOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result onProgress(),
    Result failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    Result failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    Result failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessLoginOption != null) {
      return failOrSuccessLoginOption(failOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result onProgress(_OnProgreess value),
    @required Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        Result failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessLoginOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result onProgress(_OnProgreess value),
    Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    Result failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessLoginOption != null) {
      return failOrSuccessLoginOption(this);
    }
    return orElse();
  }
}

abstract class _FailOrSuccessOption implements AuthState {
  factory _FailOrSuccessOption(
          {@required
              Option<Either<AuthFailure, LoginData>> failOrSuccessOption}) =
      _$_FailOrSuccessOption;

  Option<Either<AuthFailure, LoginData>> get failOrSuccessOption;
  _$FailOrSuccessOptionCopyWith<_FailOrSuccessOption> get copyWith;
}

abstract class _$FailOrSuccessUpdateCustomerOptionCopyWith<$Res> {
  factory _$FailOrSuccessUpdateCustomerOptionCopyWith(
          _FailOrSuccessUpdateCustomerOption value,
          $Res Function(_FailOrSuccessUpdateCustomerOption) then) =
      __$FailOrSuccessUpdateCustomerOptionCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, LoginData>> updateCustomerOption});
}

class __$FailOrSuccessUpdateCustomerOptionCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$FailOrSuccessUpdateCustomerOptionCopyWith<$Res> {
  __$FailOrSuccessUpdateCustomerOptionCopyWithImpl(
      _FailOrSuccessUpdateCustomerOption _value,
      $Res Function(_FailOrSuccessUpdateCustomerOption) _then)
      : super(_value, (v) => _then(v as _FailOrSuccessUpdateCustomerOption));

  @override
  _FailOrSuccessUpdateCustomerOption get _value =>
      super._value as _FailOrSuccessUpdateCustomerOption;

  @override
  $Res call({
    Object updateCustomerOption = freezed,
  }) {
    return _then(_FailOrSuccessUpdateCustomerOption(
      updateCustomerOption: updateCustomerOption == freezed
          ? _value.updateCustomerOption
          : updateCustomerOption as Option<Either<AuthFailure, LoginData>>,
    ));
  }
}

class _$_FailOrSuccessUpdateCustomerOption
    implements _FailOrSuccessUpdateCustomerOption {
  _$_FailOrSuccessUpdateCustomerOption({@required this.updateCustomerOption})
      : assert(updateCustomerOption != null);

  @override
  final Option<Either<AuthFailure, LoginData>> updateCustomerOption;

  @override
  String toString() {
    return 'AuthState.failOrSuccessUpdateCustomerOption(updateCustomerOption: $updateCustomerOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailOrSuccessUpdateCustomerOption &&
            (identical(other.updateCustomerOption, updateCustomerOption) ||
                const DeepCollectionEquality()
                    .equals(other.updateCustomerOption, updateCustomerOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateCustomerOption);

  @override
  _$FailOrSuccessUpdateCustomerOptionCopyWith<
          _FailOrSuccessUpdateCustomerOption>
      get copyWith => __$FailOrSuccessUpdateCustomerOptionCopyWithImpl<
          _FailOrSuccessUpdateCustomerOption>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result onProgress(),
    @required
        Result failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        Result failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        Result failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessUpdateCustomerOption(updateCustomerOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result onProgress(),
    Result failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    Result failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    Result failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessUpdateCustomerOption != null) {
      return failOrSuccessUpdateCustomerOption(updateCustomerOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result onProgress(_OnProgreess value),
    @required Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        Result failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessUpdateCustomerOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result onProgress(_OnProgreess value),
    Result failOrSuccessGetRole(_FailOrSuccessGetRole value),
    Result failOrSuccessLoginOption(_FailOrSuccessOption value),
    Result failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessUpdateCustomerOption != null) {
      return failOrSuccessUpdateCustomerOption(this);
    }
    return orElse();
  }
}

abstract class _FailOrSuccessUpdateCustomerOption implements AuthState {
  factory _FailOrSuccessUpdateCustomerOption(
          {@required
              Option<Either<AuthFailure, LoginData>> updateCustomerOption}) =
      _$_FailOrSuccessUpdateCustomerOption;

  Option<Either<AuthFailure, LoginData>> get updateCustomerOption;
  _$FailOrSuccessUpdateCustomerOptionCopyWith<
      _FailOrSuccessUpdateCustomerOption> get copyWith;
}

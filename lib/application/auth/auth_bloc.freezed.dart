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
  _LoginWithEmail loginWithEmail(LoginRequestData loginRequestData) {
    return _LoginWithEmail(
      loginRequestData,
    );
  }

// ignore: unused_element
  _RegisterWithEmail registerWithEmail(RegisterData registerData) {
    return _RegisterWithEmail(
      registerData,
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

// ignore: unused_element
  _UpdateGroomer updateGroomer({User user}) {
    return _UpdateGroomer(
      user: user,
    );
  }

// ignore: unused_element
  _ChangeGroomerAvailability changeGroomerAvailability(
      {bool isAvailable, String id}) {
    return _ChangeGroomerAvailability(
      isAvailable: isAvailable,
      id: id,
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
    @required TResult loginWithEmail(LoginRequestData loginRequestData),
    @required TResult registerWithEmail(RegisterData registerData),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult updateGroomer(User user),
    @required TResult changeGroomerAvailability(bool isAvailable, String id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(LoginRequestData loginRequestData),
    TResult registerWithEmail(RegisterData registerData),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    TResult updateGroomer(User user),
    TResult changeGroomerAvailability(bool isAvailable, String id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(_LoginWithEmail value),
    @required TResult registerWithEmail(_RegisterWithEmail value),
    @required TResult getUserRoleList(_GetUserRoleList value),
    @required TResult updateCustomer(_UpdateCustomer value),
    @required TResult updateGroomer(_UpdateGroomer value),
    @required
        TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    TResult updateGroomer(_UpdateGroomer value),
    TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
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
  $Res call({LoginRequestData loginRequestData});
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
    Object loginRequestData = freezed,
  }) {
    return _then(_LoginWithEmail(
      loginRequestData == freezed
          ? _value.loginRequestData
          : loginRequestData as LoginRequestData,
    ));
  }
}

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  _$LoginWithEmailCopyWith<_LoginWithEmail> get copyWith =>
      __$LoginWithEmailCopyWithImpl<_LoginWithEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(LoginRequestData loginRequestData),
    @required TResult registerWithEmail(RegisterData registerData),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult updateGroomer(User user),
    @required TResult changeGroomerAvailability(bool isAvailable, String id),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return loginWithEmail(loginRequestData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(LoginRequestData loginRequestData),
    TResult registerWithEmail(RegisterData registerData),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    TResult updateGroomer(User user),
    TResult changeGroomerAvailability(bool isAvailable, String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail(loginRequestData);
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
    @required TResult updateGroomer(_UpdateGroomer value),
    @required
        TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    TResult updateGroomer(_UpdateGroomer value),
    TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
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
  factory _LoginWithEmail(LoginRequestData loginRequestData) =
      _$_LoginWithEmail;

  LoginRequestData get loginRequestData;
  @JsonKey(ignore: true)
  _$LoginWithEmailCopyWith<_LoginWithEmail> get copyWith;
}

/// @nodoc
abstract class _$RegisterWithEmailCopyWith<$Res> {
  factory _$RegisterWithEmailCopyWith(
          _RegisterWithEmail value, $Res Function(_RegisterWithEmail) then) =
      __$RegisterWithEmailCopyWithImpl<$Res>;
  $Res call({RegisterData registerData});

  $RegisterDataCopyWith<$Res> get registerData;
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  _$RegisterWithEmailCopyWith<_RegisterWithEmail> get copyWith =>
      __$RegisterWithEmailCopyWithImpl<_RegisterWithEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(LoginRequestData loginRequestData),
    @required TResult registerWithEmail(RegisterData registerData),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult updateGroomer(User user),
    @required TResult changeGroomerAvailability(bool isAvailable, String id),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return registerWithEmail(registerData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(LoginRequestData loginRequestData),
    TResult registerWithEmail(RegisterData registerData),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    TResult updateGroomer(User user),
    TResult changeGroomerAvailability(bool isAvailable, String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmail != null) {
      return registerWithEmail(registerData);
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
    @required TResult updateGroomer(_UpdateGroomer value),
    @required
        TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return registerWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    TResult updateGroomer(_UpdateGroomer value),
    TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
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
  factory _RegisterWithEmail(RegisterData registerData) = _$_RegisterWithEmail;

  RegisterData get registerData;
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
    @required TResult loginWithEmail(LoginRequestData loginRequestData),
    @required TResult registerWithEmail(RegisterData registerData),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult updateGroomer(User user),
    @required TResult changeGroomerAvailability(bool isAvailable, String id),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return getUserRoleList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(LoginRequestData loginRequestData),
    TResult registerWithEmail(RegisterData registerData),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    TResult updateGroomer(User user),
    TResult changeGroomerAvailability(bool isAvailable, String id),
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
    @required TResult updateGroomer(_UpdateGroomer value),
    @required
        TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return getUserRoleList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    TResult updateGroomer(_UpdateGroomer value),
    TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
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
    @required TResult loginWithEmail(LoginRequestData loginRequestData),
    @required TResult registerWithEmail(RegisterData registerData),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult updateGroomer(User user),
    @required TResult changeGroomerAvailability(bool isAvailable, String id),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return updateCustomer(data, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(LoginRequestData loginRequestData),
    TResult registerWithEmail(RegisterData registerData),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    TResult updateGroomer(User user),
    TResult changeGroomerAvailability(bool isAvailable, String id),
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
    @required TResult updateGroomer(_UpdateGroomer value),
    @required
        TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return updateCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    TResult updateGroomer(_UpdateGroomer value),
    TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
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
abstract class _$UpdateGroomerCopyWith<$Res> {
  factory _$UpdateGroomerCopyWith(
          _UpdateGroomer value, $Res Function(_UpdateGroomer) then) =
      __$UpdateGroomerCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdateGroomerCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$UpdateGroomerCopyWith<$Res> {
  __$UpdateGroomerCopyWithImpl(
      _UpdateGroomer _value, $Res Function(_UpdateGroomer) _then)
      : super(_value, (v) => _then(v as _UpdateGroomer));

  @override
  _UpdateGroomer get _value => super._value as _UpdateGroomer;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_UpdateGroomer(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_UpdateGroomer implements _UpdateGroomer {
  _$_UpdateGroomer({this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.updateGroomer(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateGroomer &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$UpdateGroomerCopyWith<_UpdateGroomer> get copyWith =>
      __$UpdateGroomerCopyWithImpl<_UpdateGroomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(LoginRequestData loginRequestData),
    @required TResult registerWithEmail(RegisterData registerData),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult updateGroomer(User user),
    @required TResult changeGroomerAvailability(bool isAvailable, String id),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return updateGroomer(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(LoginRequestData loginRequestData),
    TResult registerWithEmail(RegisterData registerData),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    TResult updateGroomer(User user),
    TResult changeGroomerAvailability(bool isAvailable, String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateGroomer != null) {
      return updateGroomer(user);
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
    @required TResult updateGroomer(_UpdateGroomer value),
    @required
        TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return updateGroomer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    TResult updateGroomer(_UpdateGroomer value),
    TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateGroomer != null) {
      return updateGroomer(this);
    }
    return orElse();
  }
}

abstract class _UpdateGroomer implements AuthEvent {
  factory _UpdateGroomer({User user}) = _$_UpdateGroomer;

  User get user;
  @JsonKey(ignore: true)
  _$UpdateGroomerCopyWith<_UpdateGroomer> get copyWith;
}

/// @nodoc
abstract class _$ChangeGroomerAvailabilityCopyWith<$Res> {
  factory _$ChangeGroomerAvailabilityCopyWith(_ChangeGroomerAvailability value,
          $Res Function(_ChangeGroomerAvailability) then) =
      __$ChangeGroomerAvailabilityCopyWithImpl<$Res>;
  $Res call({bool isAvailable, String id});
}

/// @nodoc
class __$ChangeGroomerAvailabilityCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$ChangeGroomerAvailabilityCopyWith<$Res> {
  __$ChangeGroomerAvailabilityCopyWithImpl(_ChangeGroomerAvailability _value,
      $Res Function(_ChangeGroomerAvailability) _then)
      : super(_value, (v) => _then(v as _ChangeGroomerAvailability));

  @override
  _ChangeGroomerAvailability get _value =>
      super._value as _ChangeGroomerAvailability;

  @override
  $Res call({
    Object isAvailable = freezed,
    Object id = freezed,
  }) {
    return _then(_ChangeGroomerAvailability(
      isAvailable:
          isAvailable == freezed ? _value.isAvailable : isAvailable as bool,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_ChangeGroomerAvailability implements _ChangeGroomerAvailability {
  _$_ChangeGroomerAvailability({this.isAvailable, this.id});

  @override
  final bool isAvailable;
  @override
  final String id;

  @override
  String toString() {
    return 'AuthEvent.changeGroomerAvailability(isAvailable: $isAvailable, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeGroomerAvailability &&
            (identical(other.isAvailable, isAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isAvailable, isAvailable)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAvailable) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ChangeGroomerAvailabilityCopyWith<_ChangeGroomerAvailability>
      get copyWith =>
          __$ChangeGroomerAvailabilityCopyWithImpl<_ChangeGroomerAvailability>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(LoginRequestData loginRequestData),
    @required TResult registerWithEmail(RegisterData registerData),
    @required TResult getUserRoleList(),
    @required TResult updateCustomer(UpdateCustomerData data, File image),
    @required TResult updateGroomer(User user),
    @required TResult changeGroomerAvailability(bool isAvailable, String id),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return changeGroomerAvailability(isAvailable, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(LoginRequestData loginRequestData),
    TResult registerWithEmail(RegisterData registerData),
    TResult getUserRoleList(),
    TResult updateCustomer(UpdateCustomerData data, File image),
    TResult updateGroomer(User user),
    TResult changeGroomerAvailability(bool isAvailable, String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeGroomerAvailability != null) {
      return changeGroomerAvailability(isAvailable, id);
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
    @required TResult updateGroomer(_UpdateGroomer value),
    @required
        TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
  }) {
    assert(loginWithEmail != null);
    assert(registerWithEmail != null);
    assert(getUserRoleList != null);
    assert(updateCustomer != null);
    assert(updateGroomer != null);
    assert(changeGroomerAvailability != null);
    return changeGroomerAvailability(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(_LoginWithEmail value),
    TResult registerWithEmail(_RegisterWithEmail value),
    TResult getUserRoleList(_GetUserRoleList value),
    TResult updateCustomer(_UpdateCustomer value),
    TResult updateGroomer(_UpdateGroomer value),
    TResult changeGroomerAvailability(_ChangeGroomerAvailability value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeGroomerAvailability != null) {
      return changeGroomerAvailability(this);
    }
    return orElse();
  }
}

abstract class _ChangeGroomerAvailability implements AuthEvent {
  factory _ChangeGroomerAvailability({bool isAvailable, String id}) =
      _$_ChangeGroomerAvailability;

  bool get isAvailable;
  String get id;
  @JsonKey(ignore: true)
  _$ChangeGroomerAvailabilityCopyWith<_ChangeGroomerAvailability> get copyWith;
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
  _FailOrSuccessGetRole failOrSuccessGetRole(
      {Option<Either<AuthFailure, List<String>>> options, bool isLoading}) {
    return _FailOrSuccessGetRole(
      options: options,
      isLoading: isLoading,
    );
  }

// ignore: unused_element
  _FailOrSuccessOption failOrSuccessLoginOption(
      {@required Option<Either<AuthFailure, LoginData>> failOrSuccessOption}) {
    return _FailOrSuccessOption(
      failOrSuccessOption: failOrSuccessOption,
    );
  }

// ignore: unused_element
  _FailOrSuccessUpdateCustomerOption failOrSuccessUpdateCustomerOption(
      {@required Option<Either<AuthFailure, LoginData>> updateCustomerOption}) {
    return _FailOrSuccessUpdateCustomerOption(
      updateCustomerOption: updateCustomerOption,
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
        TResult failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        TResult failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    TResult failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    TResult failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    TResult failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
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
        TResult failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        TResult failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    TResult failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    TResult failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
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
    @required TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    TResult failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
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
        TResult failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        TResult failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return onProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    TResult failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    TResult failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
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
    @required TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return onProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    TResult failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
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
        TResult failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        TResult failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return changeAvailability(availabilityOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    TResult failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    TResult failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
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
    @required TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return changeAvailability(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    TResult failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
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
abstract class _$FailOrSuccessGetRoleCopyWith<$Res> {
  factory _$FailOrSuccessGetRoleCopyWith(_FailOrSuccessGetRole value,
          $Res Function(_FailOrSuccessGetRole) then) =
      __$FailOrSuccessGetRoleCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<AuthFailure, List<String>>> options, bool isLoading});
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  _$FailOrSuccessGetRoleCopyWith<_FailOrSuccessGetRole> get copyWith =>
      __$FailOrSuccessGetRoleCopyWithImpl<_FailOrSuccessGetRole>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        TResult failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessGetRole(options, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    TResult failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    TResult failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessGetRole != null) {
      return failOrSuccessGetRole(options, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessGetRole(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    TResult failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$FailOrSuccessGetRoleCopyWith<_FailOrSuccessGetRole> get copyWith;
}

/// @nodoc
abstract class _$FailOrSuccessOptionCopyWith<$Res> {
  factory _$FailOrSuccessOptionCopyWith(_FailOrSuccessOption value,
          $Res Function(_FailOrSuccessOption) then) =
      __$FailOrSuccessOptionCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, LoginData>> failOrSuccessOption});
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  _$FailOrSuccessOptionCopyWith<_FailOrSuccessOption> get copyWith =>
      __$FailOrSuccessOptionCopyWithImpl<_FailOrSuccessOption>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        TResult failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessLoginOption(failOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    TResult failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    TResult failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessLoginOption != null) {
      return failOrSuccessLoginOption(failOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessLoginOption(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    TResult failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$FailOrSuccessOptionCopyWith<_FailOrSuccessOption> get copyWith;
}

/// @nodoc
abstract class _$FailOrSuccessUpdateCustomerOptionCopyWith<$Res> {
  factory _$FailOrSuccessUpdateCustomerOptionCopyWith(
          _FailOrSuccessUpdateCustomerOption value,
          $Res Function(_FailOrSuccessUpdateCustomerOption) then) =
      __$FailOrSuccessUpdateCustomerOptionCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, LoginData>> updateCustomerOption});
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  _$FailOrSuccessUpdateCustomerOptionCopyWith<
          _FailOrSuccessUpdateCustomerOption>
      get copyWith => __$FailOrSuccessUpdateCustomerOptionCopyWithImpl<
          _FailOrSuccessUpdateCustomerOption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onProgress(),
    @required
        TResult changeAvailability(
            Option<Either<AuthFailure, Unit>> availabilityOption),
    @required
        TResult failOrSuccessGetRole(
            Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    @required
        TResult failOrSuccessLoginOption(
            Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            Option<Either<AuthFailure, LoginData>> updateCustomerOption),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessUpdateCustomerOption(updateCustomerOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onProgress(),
    TResult changeAvailability(
        Option<Either<AuthFailure, Unit>> availabilityOption),
    TResult failOrSuccessGetRole(
        Option<Either<AuthFailure, List<String>>> options, bool isLoading),
    TResult failOrSuccessLoginOption(
        Option<Either<AuthFailure, LoginData>> failOrSuccessOption),
    TResult failOrSuccessUpdateCustomerOption(
        Option<Either<AuthFailure, LoginData>> updateCustomerOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failOrSuccessUpdateCustomerOption != null) {
      return failOrSuccessUpdateCustomerOption(updateCustomerOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onProgress(_OnProgreess value),
    @required TResult changeAvailability(_ChangeAvailability value),
    @required TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    @required TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    @required
        TResult failOrSuccessUpdateCustomerOption(
            _FailOrSuccessUpdateCustomerOption value),
  }) {
    assert(initial != null);
    assert(onProgress != null);
    assert(changeAvailability != null);
    assert(failOrSuccessGetRole != null);
    assert(failOrSuccessLoginOption != null);
    assert(failOrSuccessUpdateCustomerOption != null);
    return failOrSuccessUpdateCustomerOption(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onProgress(_OnProgreess value),
    TResult changeAvailability(_ChangeAvailability value),
    TResult failOrSuccessGetRole(_FailOrSuccessGetRole value),
    TResult failOrSuccessLoginOption(_FailOrSuccessOption value),
    TResult failOrSuccessUpdateCustomerOption(
        _FailOrSuccessUpdateCustomerOption value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$FailOrSuccessUpdateCustomerOptionCopyWith<
      _FailOrSuccessUpdateCustomerOption> get copyWith;
}

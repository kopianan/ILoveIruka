// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  CheckAuthentication checkAuthentication() {
    return CheckAuthentication();
  }

  SaveAuthentication saveAuthentication({User r}) {
    return SaveAuthentication(
      r: r,
    );
  }

  SignOut signOut() {
    return SignOut();
  }
}

// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

mixin _$AuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthentication(),
    @required Result saveAuthentication(User r),
    @required Result signOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthentication(),
    Result saveAuthentication(User r),
    Result signOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthentication(CheckAuthentication value),
    @required Result saveAuthentication(SaveAuthentication value),
    @required Result signOut(SignOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthentication(CheckAuthentication value),
    Result saveAuthentication(SaveAuthentication value),
    Result signOut(SignOut value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

abstract class $CheckAuthenticationCopyWith<$Res> {
  factory $CheckAuthenticationCopyWith(
          CheckAuthentication value, $Res Function(CheckAuthentication) then) =
      _$CheckAuthenticationCopyWithImpl<$Res>;
}

class _$CheckAuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $CheckAuthenticationCopyWith<$Res> {
  _$CheckAuthenticationCopyWithImpl(
      CheckAuthentication _value, $Res Function(CheckAuthentication) _then)
      : super(_value, (v) => _then(v as CheckAuthentication));

  @override
  CheckAuthentication get _value => super._value as CheckAuthentication;
}

class _$CheckAuthentication implements CheckAuthentication {
  _$CheckAuthentication();

  @override
  String toString() {
    return 'AuthenticationEvent.checkAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthentication(),
    @required Result saveAuthentication(User r),
    @required Result signOut(),
  }) {
    assert(checkAuthentication != null);
    assert(saveAuthentication != null);
    assert(signOut != null);
    return checkAuthentication();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthentication(),
    Result saveAuthentication(User r),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthentication != null) {
      return checkAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthentication(CheckAuthentication value),
    @required Result saveAuthentication(SaveAuthentication value),
    @required Result signOut(SignOut value),
  }) {
    assert(checkAuthentication != null);
    assert(saveAuthentication != null);
    assert(signOut != null);
    return checkAuthentication(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthentication(CheckAuthentication value),
    Result saveAuthentication(SaveAuthentication value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthentication != null) {
      return checkAuthentication(this);
    }
    return orElse();
  }
}

abstract class CheckAuthentication implements AuthenticationEvent {
  factory CheckAuthentication() = _$CheckAuthentication;
}

abstract class $SaveAuthenticationCopyWith<$Res> {
  factory $SaveAuthenticationCopyWith(
          SaveAuthentication value, $Res Function(SaveAuthentication) then) =
      _$SaveAuthenticationCopyWithImpl<$Res>;
  $Res call({User r});

  $UserCopyWith<$Res> get r;
}

class _$SaveAuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SaveAuthenticationCopyWith<$Res> {
  _$SaveAuthenticationCopyWithImpl(
      SaveAuthentication _value, $Res Function(SaveAuthentication) _then)
      : super(_value, (v) => _then(v as SaveAuthentication));

  @override
  SaveAuthentication get _value => super._value as SaveAuthentication;

  @override
  $Res call({
    Object r = freezed,
  }) {
    return _then(SaveAuthentication(
      r: r == freezed ? _value.r : r as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get r {
    if (_value.r == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.r, (value) {
      return _then(_value.copyWith(r: value));
    });
  }
}

class _$SaveAuthentication implements SaveAuthentication {
  _$SaveAuthentication({this.r});

  @override
  final User r;

  @override
  String toString() {
    return 'AuthenticationEvent.saveAuthentication(r: $r)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveAuthentication &&
            (identical(other.r, r) ||
                const DeepCollectionEquality().equals(other.r, r)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(r);

  @override
  $SaveAuthenticationCopyWith<SaveAuthentication> get copyWith =>
      _$SaveAuthenticationCopyWithImpl<SaveAuthentication>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthentication(),
    @required Result saveAuthentication(User r),
    @required Result signOut(),
  }) {
    assert(checkAuthentication != null);
    assert(saveAuthentication != null);
    assert(signOut != null);
    return saveAuthentication(r);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthentication(),
    Result saveAuthentication(User r),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveAuthentication != null) {
      return saveAuthentication(r);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthentication(CheckAuthentication value),
    @required Result saveAuthentication(SaveAuthentication value),
    @required Result signOut(SignOut value),
  }) {
    assert(checkAuthentication != null);
    assert(saveAuthentication != null);
    assert(signOut != null);
    return saveAuthentication(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthentication(CheckAuthentication value),
    Result saveAuthentication(SaveAuthentication value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveAuthentication != null) {
      return saveAuthentication(this);
    }
    return orElse();
  }
}

abstract class SaveAuthentication implements AuthenticationEvent {
  factory SaveAuthentication({User r}) = _$SaveAuthentication;

  User get r;
  $SaveAuthenticationCopyWith<SaveAuthentication> get copyWith;
}

abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

class _$SignOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

class _$SignOut implements SignOut {
  _$SignOut();

  @override
  String toString() {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthentication(),
    @required Result saveAuthentication(User r),
    @required Result signOut(),
  }) {
    assert(checkAuthentication != null);
    assert(saveAuthentication != null);
    assert(signOut != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthentication(),
    Result saveAuthentication(User r),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthentication(CheckAuthentication value),
    @required Result saveAuthentication(SaveAuthentication value),
    @required Result signOut(SignOut value),
  }) {
    assert(checkAuthentication != null);
    assert(saveAuthentication != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthentication(CheckAuthentication value),
    Result saveAuthentication(SaveAuthentication value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthenticationEvent {
  factory SignOut() = _$SignOut;
}

class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  Initial initial() {
    return Initial();
  }

  Authenticated authenticated({@required User user}) {
    return Authenticated(
      user: user,
    );
  }

  AuthenticationUpdated authenticationUpdated({@required User user}) {
    return AuthenticationUpdated(
      user: user,
    );
  }

  UnAuthenticated unAuthenticated() {
    return UnAuthenticated();
  }

  SignOutState signOutState({@required bool isSignOut}) {
    return SignOutState(
      isSignOut: isSignOut,
    );
  }
}

// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result authenticationUpdated(User user),
    @required Result unAuthenticated(),
    @required Result signOutState(bool isSignOut),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result authenticationUpdated(User user),
    Result unAuthenticated(),
    Result signOutState(bool isSignOut),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result authenticationUpdated(AuthenticationUpdated value),
    @required Result unAuthenticated(UnAuthenticated value),
    @required Result signOutState(SignOutState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result authenticationUpdated(AuthenticationUpdated value),
    Result unAuthenticated(UnAuthenticated value),
    Result signOutState(SignOutState value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  _$Initial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result authenticationUpdated(User user),
    @required Result unAuthenticated(),
    @required Result signOutState(bool isSignOut),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result authenticationUpdated(User user),
    Result unAuthenticated(),
    Result signOutState(bool isSignOut),
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
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result authenticationUpdated(AuthenticationUpdated value),
    @required Result unAuthenticated(UnAuthenticated value),
    @required Result signOutState(SignOutState value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result authenticationUpdated(AuthenticationUpdated value),
    Result unAuthenticated(UnAuthenticated value),
    Result signOutState(SignOutState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthenticationState {
  factory Initial() = _$Initial;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Authenticated(
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

class _$Authenticated implements Authenticated {
  _$Authenticated({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result authenticationUpdated(User user),
    @required Result unAuthenticated(),
    @required Result signOutState(bool isSignOut),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result authenticationUpdated(User user),
    Result unAuthenticated(),
    Result signOutState(bool isSignOut),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result authenticationUpdated(AuthenticationUpdated value),
    @required Result unAuthenticated(UnAuthenticated value),
    @required Result signOutState(SignOutState value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result authenticationUpdated(AuthenticationUpdated value),
    Result unAuthenticated(UnAuthenticated value),
    Result signOutState(SignOutState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  factory Authenticated({@required User user}) = _$Authenticated;

  User get user;
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

abstract class $AuthenticationUpdatedCopyWith<$Res> {
  factory $AuthenticationUpdatedCopyWith(AuthenticationUpdated value,
          $Res Function(AuthenticationUpdated) then) =
      _$AuthenticationUpdatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$AuthenticationUpdatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationUpdatedCopyWith<$Res> {
  _$AuthenticationUpdatedCopyWithImpl(
      AuthenticationUpdated _value, $Res Function(AuthenticationUpdated) _then)
      : super(_value, (v) => _then(v as AuthenticationUpdated));

  @override
  AuthenticationUpdated get _value => super._value as AuthenticationUpdated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(AuthenticationUpdated(
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

class _$AuthenticationUpdated implements AuthenticationUpdated {
  _$AuthenticationUpdated({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.authenticationUpdated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationUpdated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AuthenticationUpdatedCopyWith<AuthenticationUpdated> get copyWith =>
      _$AuthenticationUpdatedCopyWithImpl<AuthenticationUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result authenticationUpdated(User user),
    @required Result unAuthenticated(),
    @required Result signOutState(bool isSignOut),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return authenticationUpdated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result authenticationUpdated(User user),
    Result unAuthenticated(),
    Result signOutState(bool isSignOut),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationUpdated != null) {
      return authenticationUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result authenticationUpdated(AuthenticationUpdated value),
    @required Result unAuthenticated(UnAuthenticated value),
    @required Result signOutState(SignOutState value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return authenticationUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result authenticationUpdated(AuthenticationUpdated value),
    Result unAuthenticated(UnAuthenticated value),
    Result signOutState(SignOutState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationUpdated != null) {
      return authenticationUpdated(this);
    }
    return orElse();
  }
}

abstract class AuthenticationUpdated implements AuthenticationState {
  factory AuthenticationUpdated({@required User user}) =
      _$AuthenticationUpdated;

  User get user;
  $AuthenticationUpdatedCopyWith<AuthenticationUpdated> get copyWith;
}

abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

class _$UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

class _$UnAuthenticated implements UnAuthenticated {
  _$UnAuthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result authenticationUpdated(User user),
    @required Result unAuthenticated(),
    @required Result signOutState(bool isSignOut),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result authenticationUpdated(User user),
    Result unAuthenticated(),
    Result signOutState(bool isSignOut),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result authenticationUpdated(AuthenticationUpdated value),
    @required Result unAuthenticated(UnAuthenticated value),
    @required Result signOutState(SignOutState value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result authenticationUpdated(AuthenticationUpdated value),
    Result unAuthenticated(UnAuthenticated value),
    Result signOutState(SignOutState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthenticationState {
  factory UnAuthenticated() = _$UnAuthenticated;
}

abstract class $SignOutStateCopyWith<$Res> {
  factory $SignOutStateCopyWith(
          SignOutState value, $Res Function(SignOutState) then) =
      _$SignOutStateCopyWithImpl<$Res>;
  $Res call({bool isSignOut});
}

class _$SignOutStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $SignOutStateCopyWith<$Res> {
  _$SignOutStateCopyWithImpl(
      SignOutState _value, $Res Function(SignOutState) _then)
      : super(_value, (v) => _then(v as SignOutState));

  @override
  SignOutState get _value => super._value as SignOutState;

  @override
  $Res call({
    Object isSignOut = freezed,
  }) {
    return _then(SignOutState(
      isSignOut: isSignOut == freezed ? _value.isSignOut : isSignOut as bool,
    ));
  }
}

class _$SignOutState implements SignOutState {
  _$SignOutState({@required this.isSignOut}) : assert(isSignOut != null);

  @override
  final bool isSignOut;

  @override
  String toString() {
    return 'AuthenticationState.signOutState(isSignOut: $isSignOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutState &&
            (identical(other.isSignOut, isSignOut) ||
                const DeepCollectionEquality()
                    .equals(other.isSignOut, isSignOut)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isSignOut);

  @override
  $SignOutStateCopyWith<SignOutState> get copyWith =>
      _$SignOutStateCopyWithImpl<SignOutState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result authenticationUpdated(User user),
    @required Result unAuthenticated(),
    @required Result signOutState(bool isSignOut),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return signOutState(isSignOut);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result authenticationUpdated(User user),
    Result unAuthenticated(),
    Result signOutState(bool isSignOut),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutState != null) {
      return signOutState(isSignOut);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result authenticationUpdated(AuthenticationUpdated value),
    @required Result unAuthenticated(UnAuthenticated value),
    @required Result signOutState(SignOutState value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(authenticationUpdated != null);
    assert(unAuthenticated != null);
    assert(signOutState != null);
    return signOutState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result authenticationUpdated(AuthenticationUpdated value),
    Result unAuthenticated(UnAuthenticated value),
    Result signOutState(SignOutState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutState != null) {
      return signOutState(this);
    }
    return orElse();
  }
}

abstract class SignOutState implements AuthenticationState {
  factory SignOutState({@required bool isSignOut}) = _$SignOutState;

  bool get isSignOut;
  $SignOutStateCopyWith<SignOutState> get copyWith;
}

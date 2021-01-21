// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

// ignore: unused_element
  CheckAuthentication checkAuthentication() {
    return CheckAuthentication();
  }

// ignore: unused_element
  SignOut signOut() {
    return SignOut();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkAuthentication(),
    @required TResult signOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkAuthentication(),
    TResult signOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkAuthentication(CheckAuthentication value),
    @required TResult signOut(SignOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkAuthentication(CheckAuthentication value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $CheckAuthenticationCopyWith<$Res> {
  factory $CheckAuthenticationCopyWith(
          CheckAuthentication value, $Res Function(CheckAuthentication) then) =
      _$CheckAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckAuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $CheckAuthenticationCopyWith<$Res> {
  _$CheckAuthenticationCopyWithImpl(
      CheckAuthentication _value, $Res Function(CheckAuthentication) _then)
      : super(_value, (v) => _then(v as CheckAuthentication));

  @override
  CheckAuthentication get _value => super._value as CheckAuthentication;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult checkAuthentication(),
    @required TResult signOut(),
  }) {
    assert(checkAuthentication != null);
    assert(signOut != null);
    return checkAuthentication();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkAuthentication(),
    TResult signOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthentication != null) {
      return checkAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkAuthentication(CheckAuthentication value),
    @required TResult signOut(SignOut value),
  }) {
    assert(checkAuthentication != null);
    assert(signOut != null);
    return checkAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkAuthentication(CheckAuthentication value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
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

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult checkAuthentication(),
    @required TResult signOut(),
  }) {
    assert(checkAuthentication != null);
    assert(signOut != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkAuthentication(),
    TResult signOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkAuthentication(CheckAuthentication value),
    @required TResult signOut(SignOut value),
  }) {
    assert(checkAuthentication != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkAuthentication(CheckAuthentication value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
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

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

// ignore: unused_element
  Initial initial() {
    return Initial();
  }

// ignore: unused_element
  Authenticated authenticated({@required User user}) {
    return Authenticated(
      user: user,
    );
  }

// ignore: unused_element
  AuthenticationUpdated authenticationUpdated({@required User user}) {
    return AuthenticationUpdated(
      user: user,
    );
  }

// ignore: unused_element
  UnAuthenticated unAuthenticated() {
    return UnAuthenticated();
  }

// ignore: unused_element
  SignOutState signOutState({@required bool isSignOut}) {
    return SignOutState(
      isSignOut: isSignOut,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(User user),
    @required TResult authenticationUpdated(User user),
    @required TResult unAuthenticated(),
    @required TResult signOutState(bool isSignOut),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(User user),
    TResult authenticationUpdated(User user),
    TResult unAuthenticated(),
    TResult signOutState(bool isSignOut),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult authenticationUpdated(AuthenticationUpdated value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult signOutState(SignOutState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult authenticationUpdated(AuthenticationUpdated value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult signOutState(SignOutState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(User user),
    @required TResult authenticationUpdated(User user),
    @required TResult unAuthenticated(),
    @required TResult signOutState(bool isSignOut),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(User user),
    TResult authenticationUpdated(User user),
    TResult unAuthenticated(),
    TResult signOutState(bool isSignOut),
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
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult authenticationUpdated(AuthenticationUpdated value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult signOutState(SignOutState value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult authenticationUpdated(AuthenticationUpdated value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult signOutState(SignOutState value),
    @required TResult orElse(),
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

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(User user),
    @required TResult authenticationUpdated(User user),
    @required TResult unAuthenticated(),
    @required TResult signOutState(bool isSignOut),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(User user),
    TResult authenticationUpdated(User user),
    TResult unAuthenticated(),
    TResult signOutState(bool isSignOut),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult authenticationUpdated(AuthenticationUpdated value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult signOutState(SignOutState value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult authenticationUpdated(AuthenticationUpdated value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult signOutState(SignOutState value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

/// @nodoc
abstract class $AuthenticationUpdatedCopyWith<$Res> {
  factory $AuthenticationUpdatedCopyWith(AuthenticationUpdated value,
          $Res Function(AuthenticationUpdated) then) =
      _$AuthenticationUpdatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  $AuthenticationUpdatedCopyWith<AuthenticationUpdated> get copyWith =>
      _$AuthenticationUpdatedCopyWithImpl<AuthenticationUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(User user),
    @required TResult authenticationUpdated(User user),
    @required TResult unAuthenticated(),
    @required TResult signOutState(bool isSignOut),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(User user),
    TResult authenticationUpdated(User user),
    TResult unAuthenticated(),
    TResult signOutState(bool isSignOut),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticationUpdated != null) {
      return authenticationUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult authenticationUpdated(AuthenticationUpdated value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult signOutState(SignOutState value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult authenticationUpdated(AuthenticationUpdated value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult signOutState(SignOutState value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  $AuthenticationUpdatedCopyWith<AuthenticationUpdated> get copyWith;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(User user),
    @required TResult authenticationUpdated(User user),
    @required TResult unAuthenticated(),
    @required TResult signOutState(bool isSignOut),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(User user),
    TResult authenticationUpdated(User user),
    TResult unAuthenticated(),
    TResult signOutState(bool isSignOut),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult authenticationUpdated(AuthenticationUpdated value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult signOutState(SignOutState value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult authenticationUpdated(AuthenticationUpdated value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult signOutState(SignOutState value),
    @required TResult orElse(),
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

/// @nodoc
abstract class $SignOutStateCopyWith<$Res> {
  factory $SignOutStateCopyWith(
          SignOutState value, $Res Function(SignOutState) then) =
      _$SignOutStateCopyWithImpl<$Res>;
  $Res call({bool isSignOut});
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  $SignOutStateCopyWith<SignOutState> get copyWith =>
      _$SignOutStateCopyWithImpl<SignOutState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(User user),
    @required TResult authenticationUpdated(User user),
    @required TResult unAuthenticated(),
    @required TResult signOutState(bool isSignOut),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(User user),
    TResult authenticationUpdated(User user),
    TResult unAuthenticated(),
    TResult signOutState(bool isSignOut),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOutState != null) {
      return signOutState(isSignOut);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult authenticationUpdated(AuthenticationUpdated value),
    @required TResult unAuthenticated(UnAuthenticated value),
    @required TResult signOutState(SignOutState value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult authenticationUpdated(AuthenticationUpdated value),
    TResult unAuthenticated(UnAuthenticated value),
    TResult signOutState(SignOutState value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  $SignOutStateCopyWith<SignOutState> get copyWith;
}

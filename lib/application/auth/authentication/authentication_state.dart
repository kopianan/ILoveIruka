part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState.initial() = Initial;
  factory AuthenticationState.authenticated({@required User user}) =
      Authenticated;
  factory AuthenticationState.authenticationUpdated({@required User user}) =
      AuthenticationUpdated;
  factory AuthenticationState.unAuthenticated() = UnAuthenticated;
  factory AuthenticationState.signOutState({@required bool isSignOut}) =
      SignOutState;
}

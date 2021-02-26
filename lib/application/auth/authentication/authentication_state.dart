part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = Initial;
  const factory AuthenticationState.authenticated(
      {@required UserDataModel user}) = Authenticated;
  const factory AuthenticationState.authenticationUpdated(
      {@required User user}) = AuthenticationUpdated;
  const factory AuthenticationState.unAuthenticated() = UnAuthenticated;
  const factory AuthenticationState.signOutState({@required bool isSignOut}) =
      SignOutState;
}

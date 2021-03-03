part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  factory AuthenticationEvent.checkAuthentication() = CheckAuthentication;
  factory AuthenticationEvent.signOut() = SignOut;
}

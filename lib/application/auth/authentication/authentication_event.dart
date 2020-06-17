part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  factory AuthenticationEvent.checkAuthentication() = CheckAuthentication;
  factory AuthenticationEvent.saveAuthentication({User r}) = SaveAuthentication;
  factory AuthenticationEvent.signOut() = SignOut;
}

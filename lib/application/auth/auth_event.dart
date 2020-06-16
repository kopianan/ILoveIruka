part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  factory AuthEvent.loginWithEmail(LoginRequestData loginRequestData) = _LoginWithEmail;
  factory AuthEvent.registerWithEmail(RegisterData registerData) = _RegisterWithEmail;
}

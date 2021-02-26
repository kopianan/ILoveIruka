part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  factory AuthEvent.loginWithEmail(String username, String password) =
      _LoginWithEmail;
  factory AuthEvent.registerWithEmail(SignUpRequest request) =
      _RegisterWithEmail;
  factory AuthEvent.getUserRoleList() = _GetUserRoleList;
  factory AuthEvent.updateCustomer({UpdateCustomerData data, File image}) =
      _UpdateCustomer;
}

part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  factory AuthEvent.loginWithEmail(LoginRequestData loginRequestData) =
      _LoginWithEmail;
  factory AuthEvent.registerWithEmail(RegisterData registerData) =
      _RegisterWithEmail;
  factory AuthEvent.getUserRoleList() = _GetUserRoleList;
  factory AuthEvent.updateCustomer({UpdateCustomerData data, File image}) =
      _UpdateCustomer;
  factory AuthEvent.updateGroomer({User user}) = _UpdateGroomer;
  factory AuthEvent.changeGroomerAvailability({bool isAvailable, String id}) =
      _ChangeGroomerAvailability;
}

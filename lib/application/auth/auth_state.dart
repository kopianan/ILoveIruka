part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState.initial() = _Initial;
  factory AuthState.onProgress() = _OnProgreess;
  factory AuthState.changeAvailability(
          Option<Either<AuthFailure, Unit>> availabilityOption) =
      _ChangeAvailability;
  factory AuthState.failOrSuccessGetRole(
      {Option<Either<AuthFailure, List<String>>> options,
      bool isLoading}) = _FailOrSuccessGetRole;
  factory AuthState.failOrSuccessLoginOption(
          {@required
              Option<Either<AuthFailure, LoginData>> failOrSuccessOption}) =
      _FailOrSuccessOption;
  factory AuthState.failOrSuccessUpdateCustomerOption(
          {@required
              Option<Either<AuthFailure, LoginData>> updateCustomerOption}) =
      _FailOrSuccessUpdateCustomerOption;
}

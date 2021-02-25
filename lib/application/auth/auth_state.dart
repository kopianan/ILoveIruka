part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState.initial() = _Initial;
  factory AuthState.onProgress() = _OnProgreess;
  factory AuthState.changeAvailability(
          Option<Either<AuthFailure, Unit>> availabilityOption) =
      _ChangeAvailability;

  const factory AuthState.onRegisterUser({
    @required bool isLoading,
    @required Option<Either<AuthFailure, UserDataModel>> userOption,
  }) = _OnRegisterUser;
  const factory AuthState.onGetUserRoleList({
    @required bool isLoading,
    @required Option<Either<AuthFailure, List<RoleDataModel>>> roleOptions,
  }) = _OnGetUserRoleList;
  const factory AuthState.onLoginOption(bool isLoading,
          Option<Either<AuthFailure, UserDataModel>> onLoginOption) =
      _OnLoginOption;
}

part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState.initial() = _Initial;
  factory AuthState.onProgress() = _OnProgreess;
  factory AuthState.failOrSuccessLoginOption(
          {@required
              Option<Either<AuthFailure, LoginData>> failOrSuccessOption}) =
      _FailOrSuccessOption;
}

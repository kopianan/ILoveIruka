part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.error(GeneralFailure failure) = _Error;
  const factory UserState.onChangePassword(String success) = _OnChangePassword;
  const factory UserState.uploadProfilePhoto(
          Option<Either<GeneralFailure, String>> response, bool isLoading) =
      _UploadProfilePhoto;
  const factory UserState.onProfileDataUpdated(
      Option<Either<GeneralFailure, UserResponseDataModel>> response,
      bool isLoading) = _OnProfileDataUpdated;
}

part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.uploadProfilePhoto(
          Option<Either<GeneralFailure, String>> response, bool isLoading) =
      _UploadProfilePhoto;
}

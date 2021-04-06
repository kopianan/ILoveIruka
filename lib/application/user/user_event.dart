part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
  const factory UserEvent.changeProfilePhoto(String file) = _ChangeProfilePhoto;
  const factory UserEvent.changePassword(PasswordDataModel password) =
      _ChangePassword;
}

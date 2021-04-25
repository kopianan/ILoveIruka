part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
  const factory UserEvent.changeProfilePhoto(String file) = _ChangeProfilePhoto;
  const factory UserEvent.updateProfileData(
      UserRequestDataModel requestDataModel) = _UpdateProfileData;
  const factory UserEvent.changePassword(PasswordDataModel password) =
      _ChangePassword;
  const factory UserEvent.changeAddress(AddressRequest addressRequest) =
      _ChangeAddress;
  const factory UserEvent.getAddress() = _GetAddress;

  const factory UserEvent.forgotPassword(String email) = _ForgotPassword;
  const factory UserEvent.getSingleUser(String userId) = _GetSingleUser;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
abstract class SignUpRequest with _$SignUpRequest {
  factory SignUpRequest({
    @JsonKey(name: "fullName") String fullName,
    @JsonKey(name: "role") String roleId,
    @JsonKey(name: "phoneNumber") String phoneNumber,
    @JsonKey(name: "imageUrl") String image,
    @JsonKey(name: "username") String userName,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "password") String password,
    @JsonKey(name: "passwordConfirmation") String passwordConfirmation,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/core/user.dart';
part 'login_data.freezed.dart';
part 'login_data.g.dart';

@freezed
abstract class LoginData with _$LoginData {
  factory LoginData.loginRequestData(
      {@required String username,
      @required String password}) = LoginRequestData;
  factory LoginData.loginResponseData(
      {@required @JsonKey(name: "User") User user}) = LoginResponseData;



  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}

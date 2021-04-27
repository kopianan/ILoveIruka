import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/user/role_data_model.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
abstract class UserDataModel implements _$UserDataModel {
  const factory UserDataModel({
    String email,
    String id,
    String fullName,
    RoleDataModel role,
    @JsonKey(defaultValue: "") String imageUrl,
    String phoneNumber,
    String token,
    @JsonKey(defaultValue: 0) int points,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}

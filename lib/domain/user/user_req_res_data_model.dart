import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_req_res_data_model.freezed.dart';
part 'user_req_res_data_model.g.dart';

@freezed
abstract class UserReqResDataModel implements _$UserReqResDataModel {
  factory UserReqResDataModel.userRequestDataModel({
    String fullName,
    String phoneNumber,
    String imageUrl,
  }) = UserRequestDataModel;
  factory UserReqResDataModel.userResponseDataModel({
    String id,
    String fullName,
    String phoneNumber,
    String imageUrl,
  }) = UserResponseDataModel;

  factory UserReqResDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserReqResDataModelFromJson(json);
}

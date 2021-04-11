import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/membership/membership_data_model.dart';

part 'member_info_data_model.freezed.dart';
part 'member_info_data_model.g.dart';

@freezed
abstract class MemberInfoDataModel with _$MemberInfoDataModel {
  factory MemberInfoDataModel(
      {String id,
      String user,
      String memberNumber,
      MembershipDataModel type,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String startAt,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String endedAt}) = _MemberInfoDataModel;

  factory MemberInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$MemberInfoDataModelFromJson(json);
}

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
      String startAt,
      String endedAt}) = _MemberInfoDataModel;

  factory MemberInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$MemberInfoDataModelFromJson(json);
}

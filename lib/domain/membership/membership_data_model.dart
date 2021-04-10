import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership_data_model.freezed.dart';
part 'membership_data_model.g.dart';

@freezed
abstract class MembershipDataModel with _$MembershipDataModel {
  factory MembershipDataModel(
      {String id,
      String label,
      int duration,
      String description,
      String createdBy}) = _MembershipDataModel;

  factory MembershipDataModel.fromJson(Map<String, dynamic> json) =>
      _$MembershipDataModelFromJson(json);
}

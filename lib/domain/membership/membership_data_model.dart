import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership_data_model.freezed.dart';
part 'membership_data_model.g.dart';

@freezed
abstract class MembershipDataModel with _$MembershipDataModel {
  factory MembershipDataModel({
    @JsonKey(name: "id") String id,
    @JsonKey(name: "label") String label,
    @JsonKey(name: "duration") double duration,
    @JsonKey(name: "description") String description,
    @JsonKey(name: "price") double price,
    @JsonKey(name: "formattedPrice") String formattedPrice,
    @JsonKey(name: "specialDiscount") double specialDiscount,
    @JsonKey(name: "formattedSpecialDiscount") String formattedSpecialDiscount,
    @JsonKey(name: "colors", defaultValue: [
      "FF3CB4FF",
      "FF3CB4FF",
      "FF3CB4FF",
      "FF3CB4FF"
    ])
        List<String> colors,
    @JsonKey(name: "createdBy") String createdBy,
    @JsonKey(name: "lastUpdatedBy") String lastUpdatedBy,
  }) = _MembershipDataModel;

  factory MembershipDataModel.fromJson(Map<String, dynamic> json) =>
      _$MembershipDataModelFromJson(json);
}

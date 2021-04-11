import 'package:freezed_annotation/freezed_annotation.dart';

part 'partnership_data_model.freezed.dart';
part 'partnership_data_model.g.dart';

@freezed
abstract class PartnershipDataModel with _$PartnershipDataModel {
  factory PartnershipDataModel(
      {String id,
      String fullName,
      String email,
      @JsonKey(nullable: true) String phoneNumber,
      @JsonKey(nullable: true) String imageUrl,
      @JsonKey(nullable: true) String lang,
      @JsonKey(nullable: true) String lat,
      @JsonKey(nullable: true) String description}) = _PartnershipDataModel;

  factory PartnershipDataModel.fromJson(Map<String, dynamic> json) =>
      _$PartnershipDataModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'partnership_data_model.freezed.dart';
part 'partnership_data_model.g.dart';

@freezed
abstract class PartnershipDataModel with _$PartnershipDataModel {
  factory PartnershipDataModel(
      {String id,
      String fullName,
      String email,
      @JsonKey(nullable: true)
          String phoneNumber,
      @JsonKey(nullable: true, defaultValue: '')
          String imageUrl,
      @JsonKey(nullable: true, defaultValue: "1")
          String lang,
      @JsonKey(nullable: true, defaultValue: '1')
          String lat,
      @JsonKey(nullable: true, defaultValue: 'no description')
          String description}) = _PartnershipDataModel;

  factory PartnershipDataModel.fromJson(Map<String, dynamic> json) =>
      _$PartnershipDataModelFromJson(json);
}

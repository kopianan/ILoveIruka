import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_req_res.freezed.dart';
part 'pet_req_res.g.dart';

@freezed
abstract class PetReqRes with _$PetReqRes {
  factory PetReqRes.savePetRequestData(
      {String id,
      String name,
      String profilePictureUrl,
      String race,
      String gender,
      String animal,
      String bio,
      String weight,
      String birthDate,
      bool isStumbum,
      bool isSterile,
      bool isPedigree}) = SavePetRequestData;
  factory PetReqRes.getPetRequestData({
    @JsonKey(defaultValue: "") String name,
    @JsonKey(defaultValue: "") String race,
    @JsonKey(defaultValue: []) List<String> gender,
    @JsonKey(defaultValue: []) List<String> animal,
    @JsonKey(defaultValue: []) List<int> weight,
    @JsonKey(defaultValue: null) bool isStumbum,
    @JsonKey(defaultValue: null) bool isSterile,
    @JsonKey(defaultValue: null) bool isPedigree,
  }) = GetPetRequestData;

  factory PetReqRes.fromJson(Map<String, dynamic> json) =>
      _$PetReqResFromJson(json);
}

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
      String birthDate}) = SavePetRequestData;
  factory PetReqRes.getPetRequestData({
    @JsonKey(defaultValue: "") String name,
    @JsonKey(defaultValue: "") String race,
    @JsonKey(defaultValue: "") String gender,
    @JsonKey(defaultValue: "") String animal,
    @JsonKey(defaultValue: []) List<int> weight,
  }) = GetPetRequestData;

  factory PetReqRes.fromJson(Map<String, dynamic> json) =>
      _$PetReqResFromJson(json);
}

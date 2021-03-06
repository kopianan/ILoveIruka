import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/pets/label.dart';

part 'pet_data_model.freezed.dart';
part 'pet_data_model.g.dart';

@freezed
abstract class PetDataModel with _$PetDataModel {
  factory PetDataModel(
      {String id,
      String name,
      @JsonKey(defaultValue: "") String profilePictureUrl,
      String birthDate,
      String race,
      Label gender,
      Label animal,
      String bio,
      double weight,
      String user,
      @JsonKey(nullable: true) bool isStumbum,
      @JsonKey(nullable: true) bool isPedigree,
      @JsonKey(nullable: true) bool isSterile}) = _PetDataModel;

  factory PetDataModel.fromJson(Map<String, dynamic> json) =>
      _$PetDataModelFromJson(json);
}

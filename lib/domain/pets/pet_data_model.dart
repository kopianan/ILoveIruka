import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/pets/label.dart';

part 'pet_data_model.freezed.dart';
part 'pet_data_model.g.dart';

@freezed
abstract class PetDataModel with _$PetDataModel {
  factory PetDataModel(
    String id,
    String name,
    String profilePictureUrl,
    String birthDate,
    String race,
    Label gender,
    Label animal,
    String bio,
    int weight,
    String user,
  ) = _PetDataModel;

  factory PetDataModel.fromJson(Map<String, dynamic> json) =>
      _$PetDataModelFromJson(json);
}

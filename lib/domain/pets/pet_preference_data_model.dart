import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_preference_data_model.freezed.dart';
part 'pet_preference_data_model.g.dart';

@freezed
abstract class PetPreferenceDataModel with _$PetPreferenceDataModel {
  factory PetPreferenceDataModel(
      {String label,
      String image,
      String code,
      bool selected}) = _PetPreferenceDataModel;

  factory PetPreferenceDataModel.fromJson(Map<String, dynamic> json) =>
      _$PetPreferenceDataModelFromJson(json);
}

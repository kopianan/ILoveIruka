import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_post_data_model.freezed.dart';
part 'pet_post_data_model.g.dart';

@freezed
abstract class PetPostDataModel with _$PetPostDataModel {
  factory PetPostDataModel(
      {String id,
      String catpion,
      String pictureUrl,
      String pet}) = _PetPostDataModel;

  factory PetPostDataModel.fromJson(Map<String, dynamic> json) =>
      _$PetPostDataModelFromJson(json);
}

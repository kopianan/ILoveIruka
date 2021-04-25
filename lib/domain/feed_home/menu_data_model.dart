import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_data_model.freezed.dart';
part 'menu_data_model.g.dart';

@freezed
abstract class MenuDataModel with _$MenuDataModel {
  factory MenuDataModel.topMenuDataModelData({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'label') String label,
    @JsonKey(name: 'action') String action,
    @JsonKey(name: 'type') String type,
    @JsonKey(name: 'imageUrl', defaultValue: "") String imageUrl,
    @JsonKey(name: 'order') int order,
  }) = TopMenuDataModelData;
  factory MenuDataModel.fromJson(Map<String, dynamic> json) =>
      _$MenuDataModelFromJson(json);
}

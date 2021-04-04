import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_data_model.freezed.dart';
part 'menu_data_model.g.dart';

@freezed
abstract class MenuDataModel with _$MenuDataModel {
  factory MenuDataModel({String name, String id}) = _MenuDataModel;

  factory MenuDataModel.fromJson(Map<String, dynamic> json) =>
      _$MenuDataModelFromJson(json);
}

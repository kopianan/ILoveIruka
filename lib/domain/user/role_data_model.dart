import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_data_model.freezed.dart';
part 'role_data_model.g.dart';

@freezed
abstract class RoleDataModel implements _$RoleDataModel {
  const factory RoleDataModel(
      {String id, String label, String group, String name}) = _RoleDataModel;

  factory RoleDataModel.fromJson(Map<String, dynamic> json) =>
      _$RoleDataModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_report_data_model.freezed.dart';
part 'pet_report_data_model.g.dart';

@freezed
abstract class PetReportDataModel with _$PetReportDataModel {
  factory PetReportDataModel({String description, String post}) =
      _PetReportDataModel;

  factory PetReportDataModel.fromJson(Map<String, dynamic> json) =>
      _$PetReportDataModelFromJson(json);
}

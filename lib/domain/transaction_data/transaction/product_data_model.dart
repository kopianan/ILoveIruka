import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data_model.freezed.dart';
part 'product_data_model.g.dart';

@freezed
abstract class ProductDataModel with _$ProductDataModel {
  factory ProductDataModel({String name, String id}) = _ProductDataModel;

  factory ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDataModelFromJson(json);
}

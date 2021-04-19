import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupont_data_model.freezed.dart';
part 'coupont_data_model.g.dart';

@freezed
abstract class CoupontDataModel with _$CoupontDataModel {
  factory CoupontDataModel(
      {double amount,
      int purchasedTimes,
      double value,
      String type,
      String id}) = _CoupontDataModel;

  factory CoupontDataModel.fromJson(Map<String, dynamic> json) =>
      _$CoupontDataModelFromJson(json);
}
